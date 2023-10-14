import React from 'react'
import Logo from "./img/Logo-WF.png"
import { useDispatch, useSelector } from 'react-redux'
import { LogOut, reset } from '../../features/authSlice'
import { NavLink, useNavigate } from 'react-router-dom'

const NavbarAdmin = () => {
    const dispatch = useDispatch()
    const navigate = useNavigate()
    const { user } = useSelector(state => state.auth)

    const logout = () => {
        dispatch(LogOut())
        dispatch(reset())
        navigate('/')
    }

    return (
        <div>
            <div className="navbar bg-base-100 font-medium border-b-2 border-b-gray h-20">
                <div className="navbar-start">
                    <NavLink to={"/"}>
                        <img src={Logo}></img>
                    </NavLink>
                </div>
                <div className='navbar-center'>
                    <h1 className=' text-2xl'>Dashboard</h1>
                </div>
                <div className="navbar-end">
                    <NavLink to={"/"} className="btn btn-sm mr-2 hover:bg-white hover:text-black bg-black text-white">Home</NavLink>
                    <button onClick={logout} className="btn btn-sm mr-2 hover:bg-black hover:text-white bg-white text-black">LogOut</button>
                </div>
            </div>
        </div>
    )
}

export default NavbarAdmin