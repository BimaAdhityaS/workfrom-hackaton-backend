import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { useNavigate, useParams, Link } from 'react-router-dom'


const EditUseCase = () => {
    const { building_id, id } = useParams()
    const [name, setName] = useState('')
    const [category, setCategory] = useState('')
    const [mincapacity, setMinCapacity] = useState('')
    const [maxcapacity, setMaxCapacity] = useState('')
    const [price, setPrice] = useState('')
    
    const navigate = useNavigate()
    
    const [file,setFile] = useState('')
    const [preview, setPreview] = useState('')

    let capacity = `${mincapacity} - ${maxcapacity} Orang`;

    const loadImage = (e) => {
        const image = e.target.files[0]
        setFile(image)
        setPreview(URL.createObjectURL(image))
    }

    const updateUseCase = async (e) => {
        e.preventDefault()
        const formData = new FormData()
        formData.append('name', name)
        formData.append('category', category)
        formData.append('capacity', capacity)
        formData.append('price', price)
        formData.append('image', file)
        try {
            await axios.patch(`http://localhost:5000/usecases/${building_id}/${id}`, formData, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            })
            navigate(`/properties/detail/${building_id}`)
        } catch (err) {
            console.log(err)
        }
    }

    useEffect(() => {
        const getUseCase = async () => {
            try {
                const res = await axios.get(`http://localhost:5000/usecases/${building_id}/${id}`)
                setName(res.data.name)
                setCategory(res.data.category)
                setPrice(res.data.price)
            } catch (err) {
                console.log(err)
            }
        }
        getUseCase()
    },[building_id, id])


    return (
        <div>
            <h1 className='text-xl my-2 font-medium mx-4'>Plan & Pricing</h1>
            <div className="text-sm breadcrumbs mx-4">
                <ul>
                    <li><Link to={"/dashboard"}>Home</Link></li>
                    <li><Link to={"/properties"}>List Properti</Link></li>
                    <li><Link to={`/properties/detail/${building_id}`}>Detail Properti</Link></li>
                    <li><a>Edit Use Case</a></li>
                </ul>
            </div>
            <form className='grid grid-cols-1 grid-rows-1 gap-4 justify-items-center' onSubmit={updateUseCase}>
                <div className="form-control w-2/3">
                    <label className="label">
                        <span className="label-text font-medium">Name</span>
                    </label>
                    <input type="text" placeholder="Name" className="input input-bordered w-full" value={name} onChange={(e) => setName(e.target.value)} />
                    <label className="label">
                        <span className="label-text font-medium">Category</span>
                    </label>
                    <input type="text" placeholder="Category" className="input input-bordered w-full" value={category} onChange={(e) => setCategory(e.target.value)} />
                    <label className="label">
                        <span className="label-text-alt">Contoh : Kantor, Ruang Meeting, dst</span>
                    </label>
                    <label className="label">
                        <span className="label-text font-medium">Capacity (Min dan Max Orang)</span>
                    </label>
                    <div className='flex'>
                        <input type="text" placeholder="Min" className="input input-bordered w-1/4 max-w-xs text-center" value={mincapacity} onChange={(e) => setMinCapacity(e.target.value)} />
                        <hr className='h-1.5 rounded-md bg-black w-3 mx-4 my-5'></hr>
                        <input type="text" placeholder="Max" className="input input-bordered w-1/4 max-w-xs text-center" value={maxcapacity} onChange={(e) => setMaxCapacity(e.target.value)} />
                    </div>
                    <label className="label">
                        <span className="label-text font-medium">Price</span>
                    </label>
                    <input type="text" placeholder="Use Case Price" className="input input-bordered w-full max-w-xs" value={price} onChange={(e) => setPrice(e.target.value)} />

                    <label className="label">
                        <span className="label-text font-medium">Use Case Image</span>
                    </label>
                    <input type="file" className="file-input file-input-bordered file-input-xs w-full" onChange={loadImage} />
                    {preview ? (
                        <div className='flex justify-center mt-2'>
                            <figure>
                                <img src={preview} alt="preview image" className="rounded-xl" />
                            </figure>
                        </div>
                    ) : ("")}
                    <button type='submit' className='btn btn-sm btn-success my-2'>Tambahkan Use Case</button>
                </div>
            </form>
        </div>
    )
}

export default EditUseCase