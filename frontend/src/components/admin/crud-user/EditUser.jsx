import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { useNavigate, useParams } from 'react-router-dom'

const EditUser = () => {
    const [name, setName] = useState('')
    const [phone_number, setPhone] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [confirmpassword, setConfirmPassword] = useState('')
    const [role, setRole] = useState('')
    const [msg, setMsg] = useState('')
    const {id} = useParams()

    const navigate = useNavigate()

    const updateUser = async (e) => {
        e.preventDefault();
        try {
            await axios.patch(`http://localhost:5000/users/${id}`, {
                name: name,
                phone_number: phone_number,
                email: email,
                password: password,
                confirmpassword: confirmpassword,
                role: role
            })
            navigate('/users')
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    useEffect(() => {
        const getUserById = async () => {
            try {
                const response = await axios.get(`http://localhost:5000/users/${id}`)
                setName(response.data.name)
                setPhone(response.data.phone_number)
                setEmail(response.data.email)
                setPassword(response.data.password)
                setConfirmPassword(response.data.confirmPassword)
                setRole(response.data.role)
            } catch (error) {
                if(error.response) {
                    setMsg(error.response.data.message)
                }
            }
        }
        getUserById()
    }, [id])

    return (
        <div>
            <div>
                <h1 className="text-3xl font-bold my-3 mx-3">User</h1>
                <h2 className="text-xl font-medium my-3 mx-3 text-gray-500">Edit User</h2>
            </div>
            <div className=' bg-gray-300'>
                <form className=' mx-10' onSubmit={updateUser}>
                    <div className="form-control w-full">
                        <label className="label">
                            <span className="label-text">User Name</span>
                        </label>
                        <input type="text" placeholder="Type here" className="input input-bordered w-full" value={name} onChange={(e)=>setName(e.target.value)}/>
                        <label className="label">
                            <span className="label-text">Phone Number</span>
                        </label>
                        <input type="text" placeholder="Type here" className="input input-bordered w-full" value={phone_number} onChange={(e)=>setPhone(e.target.value)}/>
                        <label className="label">
                            <span className="label-text">Email Address</span>
                        </label>
                        <input type="text" placeholder="Type here" className="input input-bordered w-full" value={email} onChange={(e)=>setEmail(e.target.value)}/>
                        <label className="label">
                            <span className="label-text">Password</span>
                        </label>
                        <input type="password" placeholder="Type here" className="input input-bordered w-full" value={password} onChange={(e)=>setPassword(e.target.value)}/>
                        <label className="label">
                            <span className="label-text">Confirm Password</span>
                        </label>
                        <input type="password" placeholder="Type here" className="input input-bordered w-full" value={confirmpassword} onChange={(e)=>setConfirmPassword(e.target.value)}/>
                        <label className="label">
                            <span className="label-text">Role</span>
                        </label>
                        <select className="select select-bordered w-full" value={role} onChange={(e)=>setRole(e.target.value)}>
                            <option>admin</option>
                            <option>karyawan</option>
                            <option>mitra</option>
                        </select>
                        <button type='submit' className="btn bg-hijau btn-sm w-full mt-4 mb-4">Update User</button>
                    </div>
                </form>
            </div>
        </div>
    )
}

export default EditUser