import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { useNavigate, useParams, Link } from 'react-router-dom'

const DetailProperti = () => {
    const { id } = useParams()

    // Location
    const [name, setName] = useState('')
    const [city, setCity] = useState('')
    const [address, setAddress] = useState('')
    const [description, setDescription] = useState('')
    const [open_close, setOpenClose] = useState('')
    const [every, setEvery] = useState('')
    const [image, setImage] = useState('')
    const [url, setUrl] = useState('')
    const [locationurl, setLocationUrl] = useState('')
    const [msg, setMsg] = useState('')

    //amenity
    const [amenities, setAmenities] = useState([])

    //Nearby Facilities
    const [category, setCategory] = useState('')
    const [namefacilities, setNameFacilities] = useState('')
    const [range, setRange] = useState('')
    const [meter, setMeter] = useState('')

    //Plan & Pricing
    const [planpricings, setPlanPricing] = useState([])
    const [bookplan, setBookPlan] = useState('')
    const [descriptionplan, setDescriptionPlan] = useState('')
    const [price, setPrice] = useState('')
    const [pax, setPax] = useState('')

    //useCase
    const [usecases, setUseCase] = useState([])
    const [nameusecase, setNameUseCase] = useState('')
    const [categoryusecase, setCategoryUseCase] = useState('')
    const [mincapacity, setMinCapacity] = useState('')
    const [maxcapacity, setMaxCapacity] = useState('')
    const [priceusecase, setPriceUseCase] = useState('')
    const [file, setFile] = useState('')
    const [preview, setPreview] = useState('')

    let capacity = `${mincapacity} - ${maxcapacity} Orang`;

    const loadImage = (e) => {
        const imageUseCase = e.target.files[0]
        setFile(imageUseCase)
        setPreview(URL.createObjectURL(imageUseCase))
    }

    const saveUseCase = async (e) => {
        e.preventDefault()
        const formData = new FormData()
        formData.append('name', nameusecase)
        formData.append('category', categoryusecase)
        formData.append('capacity', capacity)
        formData.append('price', priceusecase)
        formData.append('file', file)
        try {
            await axios.post(`http://localhost:5000/usecases/${id}`, formData)
            const modal = document.getElementById('my_modal_4');
            modal.close();
            window.location.reload()
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }


    const getUseCase = async () => {
        const response = await axios.get(`http://localhost:5000/usecases/${id}`)
        setUseCase(response.data)
    }

    const deleteUseCase = async (building_id, usecase_id) => {
        await axios.delete(`http://localhost:5000/usecases/${building_id}/${usecase_id}`);
        getUseCase()
    }

    useEffect(() => {
        getUseCase()
    }, [])

    const getPlanPricing = async () => {
        try {
            const response = await axios.get(`http://localhost:5000/planpricing/${id}`)
            setPlanPricing(response.data)
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    const savePlanPricing = async (e) => {
        e.preventDefault()
        try {
            await axios.post(`http://localhost:5000/planpricing/${id}`, {
                name: bookplan,
                description: descriptionplan,
                price: price,
                pax: pax
            })
            const modal = document.getElementById('my_modal_3');
            modal.close();
            getPlanPricing()
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    useEffect(() => {
        const getPropertiById = async () => {
            try {
                const response = await axios.get(`http://localhost:5000/locations/${id}`)
                setName(response.data.name)
                setCity(response.data.city)
                setAddress(response.data.address)
                setDescription(response.data.description)
                setOpenClose(response.data.open_close)
                setEvery(response.data.every)
                setImage(response.data.image)
                setUrl(response.data.url)
                setLocationUrl(response.data.location_url)
            } catch (error) {
                if (error.response) {
                    setMsg(error.response.data.message)
                }
            }
        }
        getPropertiById()
    }, [id])

    const saveAmenities = async (e) => {
        e.preventDefault()
        try {
            await axios.post(`http://localhost:5000/amenities/${id}`, {
                amenity: amenities
            })
            const modal = document.getElementById('my_modal_1');
            modal.close();
            getAmenity()
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }



    const [nearbyFacilities, setNearbyFacilities] = useState([])

    const getNearbyFacilities = async () => {
        try {
            const response = await axios.get(`http://localhost:5000/nearbyfacility/${id}`)
            setNearbyFacilities(response.data)
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    const saveNearbyFacilities = async (e) => {
        e.preventDefault()
        try {
            await axios.post(`http://localhost:5000/nearbyfacility/${id}`, {
                category: category,
                name: namefacilities,
                range: range,
                meter: meter
            })
            const modal = document.getElementById('my_modal_2');
            modal.close();
            getNearbyFacilities()
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    const deleteNearby = async (building_id, id) => {
        try {
            await axios.delete(`http://localhost:5000/nearbyfacility/${building_id}/${id}`)
            getNearbyFacilities()
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    const [amenity, setAmenity] = useState([])

    useEffect(() => {
        getPlanPricing()
        getAmenity()
        getNearbyFacilities()
    }, [])

    const getAmenity = async () => {
        try {
            const response = await axios.get(`http://localhost:5000/amenities/${id}`)
            setAmenity(response.data)
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    const deleteAmenity = async (building_id, id) => {
        try {
            await axios.delete(`http://localhost:5000/amenities/${building_id}/${id}`)
            getAmenity()
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    const deletePlanPricing = async (building_id, id) => {
        try {
            await axios.delete(`http://localhost:5000/planpricing/${building_id}/${id}`)
            getPlanPricing()
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }


    return (
        <div>
            <h1 className='text-xl my-2 font-medium mx-4'>Properti</h1>
            <div className="text-sm breadcrumbs mx-4">
                <ul>
                    <li><Link to={"/dashboard"}>Home</Link></li>
                    <li><Link to={"/properties"}>List Properti</Link></li>
                    <li><a>Detail Properti</a></li>
                </ul>
            </div>
            <div className='grid grid-cols-1 grid-rows-1 justify-items-center my-2'>
                <div className='w-4/5 h-fit py-2 rounded-lg bg-black text-white'>
                    <div className='grid grid-cols-1 grid-rows-1 justify-items-center'>
                        <h1 className='text-xl font-bold'>DETAIL PROPERTI</h1>
                        <h1 className='text-2xl'>"{name}"</h1>
                        <img src={url} alt={url} className=' rounded-md my-2 w-80'></img>
                        <div className='grid grid-cols-2 grid-rows-1 gap-4 justify-items-center mt-2'>
                            <div>
                                <p>Open & CLose : {open_close}</p>
                            </div>
                            <div>
                                <p>Every : {every}</p>
                            </div>
                        </div>
                        <div className='grid grid-cols-1 grid-rows-1 justify-items-center my-2'>
                            <div className=' w-2/3'>
                                <div className="join join-vertical w-full">
                                    <div className="collapse collapse-arrow join-item">
                                        <input type="radio" name="my-accordion-1" checked="checked" />
                                        <div className="collapse-title text-lg font-medium">
                                            Alamat {name}
                                        </div>
                                        <div className="collapse-content">
                                            <div className='flex'>
                                                <img src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/vector-13.svg' className='bg-white'></img>
                                                <p className='ml-3'>{city}</p>
                                            </div>
                                            <p className='mt-2'>{address}</p>
                                        </div>
                                    </div>
                                    <hr className='bg-gray-300 h-0.5'></hr>
                                    <div className="collapse collapse-arrow join-item">
                                        <input type="radio" name="my-accordion-2" checked="checked" />
                                        <div className="collapse-title text-lg font-medium">
                                            Deskripsi {name}
                                        </div>
                                        <div className="collapse-content">
                                            <p>{description}</p>
                                        </div>
                                    </div>
                                    <hr className='bg-gray-300 h-0.5'></hr>
                                    <div className="collapse collapse-arrow join-item">
                                        <input type="radio" name="my-accordion-3" checked="checked" />
                                        <div className="collapse-title text-lg font-medium">
                                            Lokasi URL {name}
                                        </div>
                                        <div className="collapse-content">
                                            <p>{locationurl !== null ? locationurl : "Anda tidak menambahkan lokasi URL"}</p>
                                        </div>
                                    </div>
                                    <hr className='bg-gray-300 h-0.5'></hr>
                                </div>
                            </div>
                        </div>
                        <Link to={`properties-edit/${id}`} className="btn btn-sm w-2/3 my-4 bg-black text-white hover:bg-hijau hover:text-black">Update Properti</Link>
                    </div>
                </div>
                <div className='border-b w-full border-gray-200 my-8'>
                    <h1 className='text-4xl text-center font-medium my-2'>Lengkapi Data Properti Mu!!</h1>
                </div>

                <div className='grid grid-cols-2 grid-rows-1 gap-12 justify-items-center border-b border-gray-200'>
                    <div className="overflow-x-auto">
                        <h1 className='font-bold text-lg text-center'>AMENITIES</h1>
                        <hr className='h-0.5 bg-black'></hr>
                        <table className="table">
                            {/* head */}
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Amenity</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                {/* row 1 */}
                                {amenity.map((amenitys, index) => (
                                    <tr>
                                        <th>{index + 1}</th>
                                        <td>{amenitys.amenity}</td>
                                        <td>
                                            <button onClick={() => deleteAmenity(id, amenitys.id)} className='btn btn-sm bg-red-500 text-white'>X</button>
                                        </td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
                        <button className="btn btn-sm btn-success mx-16 my-4" onClick={() => document.getElementById('my_modal_1').showModal()}>Tambahkan Amenity</button>
                        <dialog id="my_modal_1" className="modal">
                            <div className="modal-box">
                                <form method="dialog">
                                    {/* if there is a button in form, it will close the modal */}
                                    <button className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
                                </form>
                                <h3 className="font-bold text-lg text-center">Tambah Amenity</h3>
                                <form className='grid grid-cols-1 grid-rows-1 gap-4 justify-items-center' onSubmit={saveAmenities}>
                                    <div className="form-control w-full max-w-xs">
                                        <label className="label">
                                            <span className="label-text">Amenity </span>
                                        </label>
                                        <input type="text" placeholder="Type here" className="input input-bordered w-full max-w-xs" value={amenities} onChange={(e) => setAmenities(e.target.value)} />
                                        <label className="label">
                                            <span className="label-text-alt">Kelebihan - kelebihan yang ada diproperti mu?<br />
                                                contoh : Wi-Fi, Air Conditioner, Game Room, dst</span>
                                        </label>
                                        <button type='submit' className='btn btn-sm btn-success my-2'>Tambahkan Amenity</button>
                                    </div>
                                </form>
                            </div>
                        </dialog>
                    </div>

                    <div className="overflow-x-auto">
                        <h1 className='font-bold text-lg text-center'>NEARBY FACILITIES</h1>
                        <hr className='h-0.5 bg-black'></hr>
                        <table className="table">
                            {/* head */}
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Category</th>
                                    <th>Name</th>
                                    <th>distance</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                {/* row 1 */}
                                {nearbyFacilities.map((nearbyFacilitie, index) => (
                                    <tr>
                                        <th>{index + 1}</th>
                                        <td>{nearbyFacilitie.category}</td>
                                        <td>{nearbyFacilitie.name}</td>
                                        <td>{nearbyFacilitie.range} {nearbyFacilitie.meter}</td>
                                        <td>
                                            <button onClick={() => deleteNearby(id, nearbyFacilitie.id)} className='btn btn-sm bg-red-500 text-white'>X</button>
                                        </td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
                        <button className="btn btn-sm btn-success mx-16 my-4" onClick={() => document.getElementById('my_modal_2').showModal()}>Tambahkan Nearby Facilities</button>
                        <dialog id="my_modal_2" className="modal">
                            <div className="modal-box">
                                <form method="dialog">
                                    {/* if there is a button in form, it will close the modal */}
                                    <button className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
                                </form>
                                <h3 className="font-bold text-lg text-center mb-2">Tambah Nearby Facilities</h3>
                                <form className='grid grid-cols-1 grid-rows-1 gap-4 justify-items-center' onSubmit={saveNearbyFacilities}>
                                    <div className="form-control w-full max-w-xs">
                                        <label className="label">
                                            <span className="label-text font-bold">Kategori</span>
                                        </label>
                                        <select className="select select-bordered w-full max-w-xs" value={category} onChange={(e) => setCategory(e.target.value)}>
                                            <option>Kategori Fasilitas</option>
                                            <option>Taxi</option>
                                            <option>Hospital</option>
                                            <option>Food</option>
                                            <option>Mall</option>
                                        </select>

                                        <label className="label">
                                            <span className="label-text font-bold">Nama Fasilitas </span>
                                        </label>
                                        <input type="text" placeholder="Nama Fasilitas" className="input input-bordered w-full max-w-xs" value={namefacilities} onChange={(e) => setNameFacilities(e.target.value)} />
                                        <label className="label">
                                            <span className="label-text-alt">contoh : Starbuks, Blue bird, Rumah Sakit Merah Putih, est</span>
                                        </label>

                                        <label className="label">
                                            <span className="label-text font-bold">Jarak Dari Properti</span>
                                        </label>
                                        <div className='flex'>
                                            <input type="text" placeholder="Jarak" className="input input-bordered w-1/3 max-w-xs mr-3" value={range} onChange={(e) => setRange(e.target.value)} />
                                            <select className="select select-bordered w-1/3 max-w-xs" value={meter} onChange={(e) => setMeter(e.target.value)}>
                                                <option>KM/M</option>
                                                <option>M</option>
                                                <option>KM</option>
                                            </select>
                                        </div>
                                        <button type='submit' className='btn btn-sm btn-success my-3'>Tambahkan Nearby Facilities</button>
                                    </div>
                                </form>
                            </div>
                        </dialog>
                    </div>

                </div>
                <div className='w-full my-4'>
                    <div className="hero min-h-fit bg-black text-white">
                        <div className="hero-content text-center">
                            <div className="w-fit">
                                <h1 className="text-4xl font-bold">PLAN & PRICING</h1>
                                <p className="py-2">Tambahkan Plan dan Pricing Sesuai Dengan Nilai Propertimu</p>
                                <div className='grid grid-cols-1 grid-row-1 justify-items-start'>
                                    <div className="overflow-x-auto">
                                        <table className="table">
                                            {/* head */}
                                            <thead className='text-white'>
                                                <tr>
                                                    <th></th>
                                                    <th>Book Plan</th>
                                                    <th>Description</th>
                                                    <th>Price</th>
                                                    <th>Pax (Pay Per)</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {/* row 1 */}
                                                {planpricings.map((planpricing, index) => (
                                                    <tr>
                                                        <th>{index + 1}</th>
                                                        <td>{planpricing.name}</td>
                                                        <td>{planpricing.description}</td>
                                                        <td>{planpricing.price}</td>
                                                        <td>{planpricing.pax}</td>
                                                        <td>
                                                            <Link to={`planpricing-edit/${planpricing.id}`} className='btn btn-sm bg-white text-black hover:bg-blue-400 mr-2'>Edit</Link>
                                                            <button onClick={() => deletePlanPricing(id, planpricing.id)} className='btn btn-sm bg-white text-black hover:bg-red-500'>Delete</button>
                                                        </td>
                                                    </tr>
                                                ))}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <button className="btn btn-sm bg-black text-white hover:bg-white hover:text-black my-2" onClick={() => document.getElementById('my_modal_3').showModal()}>Tambah Plan & Pricing</button>
                                <dialog id="my_modal_3" className="modal">
                                    <div className="modal-box bg-black border-white border-2">
                                        <form method="dialog">
                                            {/* if there is a button in form, it will close the modal */}
                                            <button className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
                                        </form>
                                        <h3 className="font-bold text-lg">Tambah Plan dan Pricing</h3>
                                        <form className='w-full px-3' onSubmit={savePlanPricing}>
                                            <label className="label">
                                                <span className="label-text font-bold text-white">Judul Book Plan</span>
                                            </label>
                                            <input type="text" placeholder="Book Plan" className="input input-ghost w-full" value={bookplan} onChange={(e) => setBookPlan(e.target.value)} />
                                            <label className="label">
                                                <span className="label-text font-bold text-white">Deskripsi</span>
                                            </label>
                                            <textarea type="text" placeholder="Deskripsi" className="input input-ghost w-full" value={descriptionplan} onChange={(e) => setDescriptionPlan(e.target.value)}></textarea>
                                            <label className="label">
                                                <span className="label-text font-bold text-white">Price</span>
                                            </label>
                                            <input type="text" placeholder="price" className="input input-ghost w-full" value={price} onChange={(e) => setPrice(e.target.value)} />
                                            <label className="label">
                                                <span className="label-text font-bold text-white">Pax (Pay Per)</span>
                                            </label>
                                            <select className="select select-ghost w-full" value={pax} onChange={(e) => setPax(e.target.value)}>
                                                <option disabled selected>Pax (Pay Per)</option>
                                                <option>/day</option>
                                                <option>/month</option>
                                                <option>/year</option>
                                                <option>/person</option>
                                                <option>/person/day</option>
                                                <option>/person/month</option>
                                                <option>/person/year</option>
                                            </select>
                                            <button type='submit' className="btn btn-sm mx-12 mt-4 bg-black text-white hover:bg-hijau hover:text-black">Tambahkan Plan & Pricing</button>
                                        </form>
                                    </div>
                                </dialog>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='w-full border-t'>
                    <div className='w-full'>
                        <h1 className='text-4xl text-center font-medium my-2'>Use Case</h1>
                        <h1 className='text-2xl text-center font-normal my-2'>Promosikan ruangan anda sesuai dengan kegunaannya</h1>
                        <div className='grid grid-cols-1 grid-rows-1 justify-items-center'>
                            <button className="btn btn-sm btn-success my-4 w-2/3" onClick={() => document.getElementById('my_modal_4').showModal()}>Tambahkan Use Case</button>
                        </div>
                        <dialog id="my_modal_4" className="modal">
                            <div className="modal-box">
                                <form method="dialog">
                                    {/* if there is a button in form, it will close the modal */}
                                    <button className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
                                </form>
                                <h3 className="font-bold text-lg text-center">Tambah Use Case</h3>

                                <form className='grid grid-cols-1 grid-rows-1 gap-4 justify-items-center' onSubmit={saveUseCase}>
                                    <div className="form-control w-full max-w-xs">
                                        <label className="label">
                                            <span className="label-text font-medium">Name</span>
                                        </label>
                                        <input type="text" placeholder="Name" className="input input-bordered w-full max-w-xs" value={nameusecase} onChange={(e) => setNameUseCase(e.target.value)} />
                                        <label className="label">
                                            <span className="label-text font-medium">Category</span>
                                        </label>
                                        <input type="text" placeholder="Category" className="input input-bordered w-full max-w-xs" value={categoryusecase} onChange={(e) => setCategoryUseCase(e.target.value)} />
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
                                        <input type="text" placeholder="Use Case Price" className="input input-bordered w-full max-w-xs" value={priceusecase} onChange={(e) => setPriceUseCase(e.target.value)} />

                                        <label className="label">
                                            <span className="label-text font-medium">Use Case Image</span>
                                        </label>
                                        <input type="file" className="file-input file-input-bordered file-input-xs w-full" onChange={loadImage} />
                                        {preview ? (
                                            <div className='flex justify-center mt-2'>
                                                <figure>
                                                    <img src={preview} alt="preview iamge" className="rounded-xl" />
                                                </figure>
                                            </div>
                                        ) : ("")}
                                        <button type='submit' className='btn btn-sm btn-success my-2'>Tambahkan Use Case</button>
                                    </div>
                                </form>

                            </div>
                        </dialog>
                    </div>
                    <div className="grid grid-flow-row grid-cols-2 gap-2 justify-items-center">
                        {usecases.map((usecase) => (
                            <div className="card w-96 bg-base-100 shadow-xl">
                                <figure className="px-10 pt-10">
                                    <img src={usecase.url} alt={usecase.image} className="rounded-xl" />
                                </figure>
                                <div className="card-body items-center text-center">
                                    <h2 className="card-title">{usecase.name}</h2>
                                    <p className='font-medium'>{usecase.category}</p>
                                    <div className='flex'>
                                        <p className='mr-2'>Capacity : {usecase.capacity}</p>
                                        <p>Price : {usecase.price}</p>
                                    </div>
                                    <div className="card-actions">
                                        <Link to={`usecase-edit/${usecase.id}`} className="btn btn-sm w-16 mr-1 btn-info">Edit</Link>
                                        <button onClick={()=>deleteUseCase(id, usecase.id)} className="btn btn-sm w-16 btn-error">Delete</button>
                                    </div>
                                </div>
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </div>
    )
}

export default DetailProperti