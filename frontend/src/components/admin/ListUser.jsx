import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link } from 'react-router-dom'
import { useSelector } from 'react-redux'


const ListUser = () => {
    const { user } = useSelector(state => state.auth)

    const [name, setName] = useState('')
    const [phone_number, setPhone] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [confirmpassword, setConfirmPassword] = useState('')
    const [role, setRole] = useState('')
    const [msg, setMsg] = useState('')

    const addUser = async (e) => {
        e.preventDefault();
        try {
            await axios.post('http://localhost:5000/users', {
                name: name,
                phone_number: phone_number,
                email: email,
                password: password,
                confirmpassword: confirmpassword,
                role: role
            })
            const modal = document.getElementById('my_modal_3');
            modal.close();
            window.location.reload();
        } catch (error) {
            if (error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    const [users, setUsers] = useState([])

    useEffect(() => {
        getUsers()
    }, [])

    const getUsers = async () => {
        const response = await axios.get('http://localhost:5000/users')
        setUsers(response.data)
    }

    const deleteUser = async (userId) => {
        await axios.delete(`http://localhost:5000/users/${userId}`);
        getUsers();
    }

    return (
        <div className='w-full'>
            <div>
                <h1 className="text-3xl font-bold my-3 mx-3">Users</h1>
                <h2 className="text-xl font-medium my-3 mx-3 text-gray-500">Daftar List User</h2>
            </div>
            {user && user.role === "admin" && (
                <div className=' mx-10 my-4'>
                    {/* You can open the modal using document.getElementById('ID').showModal() method */}
                    <button className="btn bg-hijau btn-sm w-full" onClick={() => document.getElementById('my_modal_3').showModal()}>Tambahkan User</button>
                    <dialog id="my_modal_3" className="modal">
                        <div className="modal-box">
                            <form method="dialog">
                                {/* if there is a button in form, it will close the modal */}
                                <button className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
                            </form>
                            <form onSubmit={addUser}>
                                <h3 className="font-bold text-lg text-center mb-2">Tambahkan User</h3>
                                <div className="form-control w-full">
                                    <label className="label">
                                        <span className="label-text">User Name</span>
                                    </label>
                                    <input type="text" placeholder="Type here" className="input input-bordered w-full" value={name} onChange={(e) => setName(e.target.value)} />
                                    <label className="label">
                                        <span className="label-text">Phone Number</span>
                                    </label>
                                    <input type="text" placeholder="Type here" className="input input-bordered w-full" value={phone_number} onChange={(e) => setPhone(e.target.value)} />
                                    <label className="label">
                                        <span className="label-text">Email Address</span>
                                    </label>
                                    <input type="text" placeholder="Type here" className="input input-bordered w-full" value={email} onChange={(e) => setEmail(e.target.value)} />
                                    <label className="label">
                                        <span className="label-text">Password</span>
                                    </label>
                                    <input type="password" placeholder="Type here" className="input input-bordered w-full" value={password} onChange={(e) => setPassword(e.target.value)} />
                                    <label className="label">
                                        <span className="label-text">Confirm Password</span>
                                    </label>
                                    <input type="password" placeholder="Type here" className="input input-bordered w-full" value={confirmpassword} onChange={(e) => setConfirmPassword(e.target.value)} />
                                    <label className="label">
                                        <span className="label-text">Role</span>
                                    </label>
                                    <select className="select select-bordered w-full" value={role} onChange={(e) => setRole(e.target.value)}>
                                        <option disabled selected>Roles?</option>
                                        <option>admin</option>
                                        <option>karyawan</option>
                                        <option>mitra</option>
                                    </select>
                                    <button type='submit' className="btn bg-hijau btn-sm w-full mt-4">Tambahkan User</button>
                                </div>
                            </form>
                        </div>
                    </dialog>
                </div>
            )}
            <div className="overflow-x-auto mx-7 border-t-2 border-gray-300">
                <table className="table">
                    {/* head */}
                    <thead>
                        <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Phone Number</th>
                            <th>Email</th>
                            <th>ROLE</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    {/* row 1 */}
                    {user && user.role === "admin" && (
                        <tbody>
                            {users.map((user, index) => (
                                <tr>
                                    <th>{index + 1}</th>
                                    <td>{user.name}</td>
                                    <td>{user.phone_number}</td>
                                    <td>{user.email}</td>
                                    <td>{user.role}</td>
                                    <td>
                                        <Link to={`/users/edit/${user.uuid}`} class="btn btn-info btn-sm mr-2">Edit</Link>
                                        <button onClick={() => deleteUser(user.uuid)} class="btn btn-warning btn-sm bg-red-500">Delete</button>
                                    </td>
                                </tr>
                            ))}
                        </tbody>
                    )}

                    {user && user.role === "karyawan" && (
                        <tbody>
                            {users
                                .filter(user => user.role === "mitra")
                                .map((user, index) => (
                                    <tr key={user.uuid}>
                                        <th>{index + 1}</th>
                                        <td>{user.name}</td>
                                        <td>{user.phone_number}</td>
                                        <td>{user.email}</td>
                                        <td>{user.role}</td>
                                        <td>
                                            <Link to={`/users/edit/${user.uuid}`} className="btn btn-info btn-sm mr-2">Edit</Link>
                                            <button onClick={() => deleteUser(user.uuid)} className="btn btn-warning btn-sm bg-red-500">Delete</button>
                                        </td>
                                    </tr>
                                ))}
                        </tbody>
                    )}
                </table>
            </div>
        </div>
    )
}

export default ListUser