import React, { useState, useEffect } from 'react'
import Logo from "./img/Logo-WF.png"
import { NavLink } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'
import { useNavigate } from 'react-router-dom'
import { LoginUser, reset } from '../../features/authSlice'

const Login = () => {
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const dispatch = useDispatch()
    const navigate = useNavigate()
    const { user, isError, isSuccess, isLoading, message } = useSelector(state => state.auth)

    useEffect(() => {
        if (user || isSuccess) {
            navigate('/dashboard')
        }
        dispatch(reset())
    }, [user, isSuccess, navigate, dispatch]);

    const Auth = (e) => {
        e.preventDefault()
        dispatch(LoginUser({ email, password }))
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
                <h1 className=' text-4xl text-center font-medium text-black my-7'>Login</h1>
                {isError &&
                    <div className='grid grid-cols-1 grid-rows-1 justify-items-center'>
                        <div className="alert alert-error w-1/2">
                            <svg xmlns="http://www.w3.org/2000/svg" className="stroke-current shrink-0 h-6 w-6" fill="none" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
                            <span>{message}</span>
                        </div>
                    </div>
                }
            </div>
            <div className='grid grid-cols-1 grid-rows-1 justify-items-center my-16'>
                <div className='w-1/3'>
                    <form onSubmit={Auth}>
                        <input
                            type="text"
                            placeholder="Email Address"
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                            className="input hover:border-white w-full" />

                        <hr className=' h-px-0.3 bg-gray-200'></hr>

                        <input
                            type="password"
                            placeholder="Your Password"
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                            className="input hover:border-white w-full mt-2" />

                        <hr className=' h-0.5 bg-gray-200'></hr>

                        <p className='font-medium'>This is your password to login to WorkFrom.id - Partner</p>
                        <button type='submit' class="btn btn-sm bg-hijau w-full my-12 hover:bg-green-500">{isLoading ? 'Loading..' : 'Login'}</button>
                        <p className='text-center font-medium'>Want to showcase your workspace? come join us!</p>
                        <NavLink to={"/register"}>
                            <button class="btn btn-sm bg-white w-full mt-2 border-black ">Register</button>
                        </NavLink>
                    </form>
                </div>
            </div>
        </div>
    )
}

export default Login