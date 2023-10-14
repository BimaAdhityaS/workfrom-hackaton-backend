import Logo from "./img/Logo-WF.png"
import { NavLink } from 'react-router-dom'
import React, { useState } from 'react'
import axios from 'axios'
import { useNavigate } from 'react-router-dom'

const Register = () => {
    const [firstname, setFirstname] = useState('')
    const [lastname, setLastname] = useState('')
    const [email, setEmail] = useState('')
    const [phone, setPhone] = useState('');
    const [password, setPassword] = useState('')
    const [confirmPassword, setConfirmPassword] = useState('')
    const [msg, setMsg] = useState('')
    const navigate = useNavigate()

    let name = {firstname}.firstname + " " + {lastname}.lastname

    const register = async (e) => {
        e.preventDefault();
        try {
            await axios.post('http://localhost:5000/users', {
                name: name,
                phone_number: phone,
                email: email,
                password: password,
                confirmpassword: confirmPassword,
                role: "mitra"
            })
            navigate('/login')
        } catch (error) {
            if(error.response) {
                setMsg(error.response.data.message)
            }
        }
    }

    return (
        <div>
            <div className="navbar bg-white h-20">
                <div className="navbar-start">
                    <NavLink to={"/"} className=' pl-2'>
                        <img src={Logo}></img>
                    </NavLink>
                </div>
            </div>
            <div>
                <h1 className=' text-4xl text-center font-medium text-black my-7'>Register</h1>
            </div>
            <div className='grid grid-cols-1 grid-rows-1 justify-items-center my-16'>
                <div className='w-1/3'>
                    <form onSubmit={register}>
                        <p className='font-medium'>Your Name</p>
                        <input type="text" placeholder="First Name" className="input hover:border-white w-full" value={firstname} onChange={(e)=>setFirstname(e.target.value)}/>
                        <hr className=' h-px-0.3 bg-gray-200'></hr>
                        <input type="text" placeholder="Last Name" className="input hover:border-white w-full" value={lastname} onChange={(e)=>setLastname(e.target.value)}/>
                        <hr className=' h-px-0.3 bg-gray-200'></hr>

                        <p className='font-medium mt-6'>Your Email & Phone Number</p>
                        <input type="text" placeholder="Email Address" className="input hover:border-white w-full" value={email} onChange={(e)=>setEmail(e.target.value)}/>
                        <hr className=' h-0.5 bg-gray-200'></hr>
                        <input type="text" placeholder="Phone Number" className="input hover:border-white w-full" value={phone} onChange={(e) => setPhone(e.target.value)} />
                        <hr className=' h-0.5 bg-gray-200'></hr>

                        <p className='font-medium mt-6'>Your Password</p>
                        <input type="password" placeholder="Password" className="input hover:border-white w-full" value={password} onChange={(e)=>setPassword(e.target.value)}/>
                        <hr className=' h-0.5 bg-gray-200'></hr>
                        <input type="password" placeholder="Confirm Password" className="input hover:border-white w-full" value={confirmPassword} onChange={(e)=>setConfirmPassword(e.target.value)}/>
                        <hr className=' h-0.5 bg-gray-200'></hr>
                        <p className='font-medium'>This is your password to login to WorkFrom.id - Partner</p>

                        <button type="submit" class="btn btn-sm bg-hijau w-full my-12 hover:bg-green-500">Register</button>
                        <p className='text-center font-medium'>Already have WorkFrom account</p>
                        <NavLink to={"/login"}>
                            <button class="btn btn-sm bg-white w-full mt-2 border-black ">Login</button>
                        </NavLink>
                    </form>
                </div>
            </div>
        </div>
    )
}

export default Register