import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { useNavigate, useParams, Link } from 'react-router-dom'

const EditPlanPricing = () => {
    const { building_id, id } = useParams()
    const [name, setName] = useState('')
    const [description, setDescription] = useState('')
    const [price, setPrice] = useState('')
    const [pax, setPax] = useState('')
    const [msg, setMsg] = useState('')
    const navigate = useNavigate()

    useEffect(() => {
        const getPlanPricingById = async () => {
            try {
                const response = await axios.get(`http://localhost:5000/planpricing/${building_id}/${id}`)
                setName(response.data.name)
                setDescription(response.data.description)
                setPrice(response.data.price)
                setPax(response.data.pax)
            } catch (error) {
                if (error.response) {
                    setMsg(error.response.data.message)
                }
            }
        }
        getPlanPricingById()
    }, [id])

    const updatePlanPricing = async (e) => {
        e.preventDefault();
        try {
            await axios.patch(`http://localhost:5000/planpricing/${building_id}/${id}`, {
                name: name,
                description: description,
                price: price,
                pax: pax
            })
            navigate(`/properties/detail/${building_id}`)
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    return (
        <div className='w-full h-full bg-black text-white py-2'>
            <h1 className='text-xl my-2 font-medium mx-4'>Plan & Pricing</h1>
            <div className="text-sm breadcrumbs mx-4">
                <ul>
                    <li><Link to={"/dashboard"}>Home</Link></li>
                    <li><Link to={"/properties"}>List Properti</Link></li>
                    <li><Link to={`/properties/detail/${building_id}`}>Detail Properti</Link></li>
                    <li><a>Edit Plan Pricing</a></li>
                </ul>
            </div>
            <h1 className='text-xl my-2 font-medium mx-4 text-center'>Update Plan Pricing</h1>
            <form className='w-full px-3' onSubmit={updatePlanPricing}>
                <label className="label">
                    <span className="label-text font-bold text-white">Judul Book Plan</span>
                </label>
                <input type="text" placeholder="Book Plan" className="input input-ghost w-full" value={name} onChange={(e) => setName(e.target.value)} />
                <label className="label">
                    <span className="label-text font-bold text-white">Deskripsi</span>
                </label>
                <textarea type="text" placeholder="Deskripsi" className="input input-ghost w-full" value={description} onChange={(e) => setDescription(e.target.value)}></textarea>
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
                <button type='submit' className="btn btn-sm mt-12 bg-black text-white hover:bg-hijau hover:text-black w-full">Tambahkan Plan & Pricing</button>
            </form>
        </div>
    )
}

export default EditPlanPricing