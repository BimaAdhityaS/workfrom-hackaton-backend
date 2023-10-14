import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'

const ListLocation = () => {
    const [name, setName] = useState('')
    const [city, setCity] = useState('')
    const [address, setAddress] = useState('')
    const [description, setDescription] = useState('')
    const [open, setOpen] = useState('')
    const [close, setClose] = useState('')
    const [openEvery, setOpenEvery] = useState('')
    const [closeEvery, setCloseEvery] = useState('')
    const [locationurl, setLocationurl] = useState('')

    const { user } = useSelector(state => state.auth)

    const [file, setFile] = useState('');
    const [preview, setPreview] = useState('');

    let open_close = { open }.open + " - " + { close }.close
    let open_close_every = { openEvery }.openEvery + " - " + { closeEvery }.closeEvery

    const loadImage = (e) => {
        const image = e.target.files[0]
        setFile(image)
        setPreview(URL.createObjectURL(image))
    }

    const saveProperti = async (e) => {
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
            await axios.post("http://localhost:5000/locations", formData, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            });
            const modal = document.getElementById('my_modal_3');
            modal.close();
            window.location.reload();
        } catch (err) {
            console.log(err)
        }
    }

    const [properties, setProperti] = useState([])

    useEffect(() => {
        getProperti()
    }, [])

    const getProperti = async () => {
        const response = await axios.get('http://localhost:5000/locations')
        setProperti(response.data)
    }

    const deleteProperti = async (propertiId) => {
        await axios.delete(`http://localhost:5000/locations/${propertiId}`);
        getProperti();
    }

    const updateStatusProperti = async (propertiId) => {
        await axios.patch(`http://localhost:5000/locationsstatuschange/${propertiId}`,{
            status: "VERIFIED"
        });
        getProperti();
    }

    return (
        <div>
            <div>
                <h1 className="text-3xl font-bold my-3 mx-3">Properti</h1>
                <h2 className="text-xl font-medium my-3 mx-3 text-gray-500">Daftar List Properti</h2>
            </div>
            <div className=' mx-10 my-4'>
                {/* You can open the modal using document.getElementById('ID').showModal() method */}
                <button className="btn bg-hijau btn-sm w-full" onClick={() => document.getElementById('my_modal_3').showModal()}>Tambahkan Properti</button>
                <dialog id="my_modal_3" className="modal">
                    <div className="modal-box">
                        <form method="dialog">
                            {/* if there is a button in form, it will close the modal */}
                            <button className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
                        </form>
                        <form onSubmit={saveProperti}>
                            <h3 className="font-bold text-lg text-center mb-2">Tambahkan Properti</h3>
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
                                <textarea className="textarea textarea-sm textarea-bordered" placeholder="Copy paste URL googlemap properti anda" value={locationurl} onChange={(e) => setLocationurl(e.target.value)}></textarea>
                                <button type='submit' className="btn bg-hijau btn-sm w-full mt-4">Tambahkan Properti</button>
                            </div>
                        </form>
                    </div>
                </dialog>
            </div>
            <div className="overflow-x-auto mx-7 border-t-2 border-gray-300">
                <table className="table">
                    {/* head */}
                    <thead>
                        <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Kota</th>
                            <th>Status</th>
                            <th>Created By</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {/* row 1 */}
                        {properties.map((properti, index) => (
                            <tr key={properti.building_id}>
                                <th>{index+1}</th>
                                <td>{properti.name}</td>
                                <td>{properti.city}</td>
                                <td>{properti.status}</td>
                                <td>{properti.user.name} - {properti.user.role}</td>
                                <td>
                                    <Link to={`detail/${properti.building_id}`} class="btn btn-success btn-sm mr-2">Detail</Link>
                                    {user && user.role === "admin" && (
                                        <button onClick={()=>updateStatusProperti(properti.building_id)} class="btn btn-info btn-sm mr-2">Verify</button>
                                    )}
                                    {user && user.role === "karyawan" && (
                                        <button onClick={()=>updateStatusProperti(properti.building_id)} class="btn btn-info btn-sm mr-2">Verify</button>
                                    )}
                                    <button onClick={()=>deleteProperti(properti.building_id)} class="btn btn-warning btn-sm bg-red-500">Delete</button>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    )
}

export default ListLocation