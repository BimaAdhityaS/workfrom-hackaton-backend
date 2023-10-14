import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { useNavigate, useParams, Link } from 'react-router-dom'

const EditProperti = () => {
    const [name, setName] = useState('')
    const [city, setCity] = useState('')
    const [address, setAddress] = useState('')
    const [description, setDescription] = useState('')
    const [open, setOpen] = useState('')
    const [close, setClose] = useState('')
    const [openEvery, setOpenEvery] = useState('')
    const [closeEvery, setCloseEvery] = useState('')
    const [locationurl, setLocationUrl] = useState('')

    const [file, setFile] = useState('');
    const [preview, setPreview] = useState('');
    const [msg, setMsg] = useState('')

    const { id } = useParams()

    let open_close = { open }.open + " - " + { close }.close
    let open_close_every = { openEvery }.openEvery + " - " + { closeEvery }.closeEvery

    const navigate = useNavigate()

    const loadImage = (e) => {
        const image = e.target.files[0]
        setFile(image)
        setPreview(URL.createObjectURL(image))
    }

    useEffect(() => {
        const getPropertiById = async () => {
            try {
                const response = await axios.get(`http://localhost:5000/locations/${id}`)
                setName(response.data.name)
                setCity(response.data.city)
                setAddress(response.data.address)
                setDescription(response.data.description)
                setLocationUrl(response.data.location_url)
            } catch (error) {
                if (error.response) {
                    setMsg(error.response.data.message)
                }
            }
        }
        getPropertiById()
    }, [id])

    const updateProperti = async (e) => {
        e.preventDefault();
        const formData = new FormData()
        formData.append('name', name)
        formData.append('city', city)
        formData.append('address', address)
        formData.append('description', description)
        formData.append('open_close', open_close)
        formData.append('every', open_close_every)
        formData.append('file', file)
        formData.append('status', "UNVERIFIED")
        formData.append('location_url', locationurl)
        try {
            await axios.patch(`http://localhost:5000/locations/${id}`, formData, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            });
            navigate(`/properties/detail/${id}`);
        } catch (err) {
            console.log(err)
        }
    }

    return (
        <div>
            <div>
                <h1 className="text-3xl font-bold my-3 mx-3">Properti</h1>
                <div className="text-sm breadcrumbs mx-3">
                    <ul>
                        <li><Link to={"/dashboard"}>Home</Link></li>
                        <li><Link to={"/properties"}>List Properti</Link></li>
                        <li><Link to={`/properties/detail/${id}`}>Detail Properti</Link></li>
                        <li><a>Update Properti</a></li>
                    </ul>
                </div>
                <h2 className="text-xl font-medium mx-3 text-gray-500">Edit Properti</h2>
            </div>
            <div className=' bg-gray-200'>
                <form className='mx-10' onSubmit={updateProperti}>
                    <div className="form-control w-full">
                        <label className="label">
                            <span className="label-text">Nama Properti</span>
                        </label>
                        <input type="text" placeholder="Nama properti" className="input input-bordered w-full" value={name} onChange={(e) => setName(e.target.value)} />
                        <label className="label">
                            <span className="label-text">Kota</span>
                        </label>
                        <input type="text" placeholder="Kota" className="input input-bordered w-full" value={city} onChange={(e) => setCity(e.target.value)} />
                        <label className="label">
                            <span className="label-text">Alamat</span>
                        </label>
                        <textarea className="textarea textarea-bordered" placeholder="Alamat lengkap properti anda" value={address} onChange={(e) => setAddress(e.target.value)}></textarea>
                        <label className="label">
                            <span className="label-text">Deskripsi</span>
                        </label>
                        <textarea className="textarea textarea-bordered" placeholder="Deskripsi tentang apa yang bisa ditawarkan di properti anda" value={description} onChange={(e) => setDescription(e.target.value)}></textarea>
                        <label className="label">
                            <span className="label-text">Open and Close</span>
                        </label>
                        <div className='flex'>
                            <select className="select select-bordered w-fit" value={open} onChange={(e) => setOpen(e.target.value)}>
                                <option>00:00</option>
                                <option>01:00</option>
                                <option>02:00</option>
                                <option>03:00</option>
                                <option>04:00</option>
                                <option>05:00</option>
                                <option>06:00</option>
                                <option>07:00</option>
                                <option>08:00</option>
                                <option>09:00</option>
                                <option>10:00</option>
                                <option>11:00</option>
                                <option>12:00</option>
                                <option>13:00</option>
                                <option>14:00</option>
                                <option>15:00</option>
                                <option>16:00</option>
                                <option>17:00</option>
                                <option>18:00</option>
                                <option>19:00</option>
                                <option>20:00</option>
                                <option>21:00</option>
                                <option>22:00</option>
                                <option>23:00</option>
                                <option>24:00</option>
                            </select>
                            <hr className='mx-2 font-bold align-middle text-2xl w-5 h-1 bg-black my-5'></hr>
                            <select className="select select-bordered w-fit" value={close} onChange={(e) => setClose(e.target.value)}>
                                <option>00:00</option>
                                <option>01:00</option>
                                <option>02:00</option>
                                <option>03:00</option>
                                <option>04:00</option>
                                <option>05:00</option>
                                <option>06:00</option>
                                <option>07:00</option>
                                <option>08:00</option>
                                <option>09:00</option>
                                <option>10:00</option>
                                <option>11:00</option>
                                <option>12:00</option>
                                <option>13:00</option>
                                <option>14:00</option>
                                <option>15:00</option>
                                <option>16:00</option>
                                <option>17:00</option>
                                <option>18:00</option>
                                <option>19:00</option>
                                <option>20:00</option>
                                <option>21:00</option>
                                <option>22:00</option>
                                <option>23:00</option>
                                <option>24:00</option>
                            </select>
                        </div>
                        <label className="label">
                            <span className="label-text">Open Every</span>
                        </label>
                        <div className='flex'>
                            <select className="select select-bordered w-fit" value={openEvery} onChange={(e) => setOpenEvery(e.target.value)}>
                                <option>Hari</option>
                                <option>Senin</option>
                                <option>Selasa</option>
                                <option>Rabu</option>
                                <option>Kamis</option>
                                <option>Jumat</option>
                                <option>Sabtu</option>
                                <option>Minggu</option>
                            </select>
                            <hr className='mx-2 font-bold align-middle text-2xl w-5 h-1 bg-black my-5'></hr>
                            <select className="select select-bordered w-fit" value={closeEvery} onChange={(e) => setCloseEvery(e.target.value)}>
                                <option>Hari</option>
                                <option>Senin</option>
                                <option>Selasa</option>
                                <option>Rabu</option>
                                <option>Kamis</option>
                                <option>Jumat</option>
                                <option>Sabtu</option>
                                <option>Minggu</option>
                            </select>
                        </div>
                        <label className="label">
                            <span className="label-text">Location Image</span>
                        </label>
                        <input type="file" className="file-input file-input-bordered file-input-xs w-full" onChange={loadImage} />
                        {preview ? (
                            <div className='flex justify-center mt-2'>
                                <figure>
                                    <img src={preview} alt="preview iamge" className="rounded-xl" />
                                </figure>
                            </div>
                        ) : ("")}
                        <label className="label">
                            <span className="label-text">Location URL(Optional)</span>
                        </label>
                        <textarea className="textarea textarea-sm textarea-bordered" placeholder="Copy paste URL googlemap properti anda" value={locationurl} onChange={(e) => setLocationUrl(e.target.value)}></textarea>
                        <button type='submit' className="btn bg-hijau btn-sm w-full my-4">Update Properti</button>
                    </div>
                </form>
            </div>
        </div>
    )
}

export default EditProperti