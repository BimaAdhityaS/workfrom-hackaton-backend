import React from 'react'
import Logo from "./img/Logo-WF.png"
import { NavLink } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'

const NavbarUser = () => {
    const { user } = useSelector(state => state.auth)

    return (
        <div className="navbar bg-base-100 font-medium border-b-2 border-neutral-200 h-20">
            <div className="navbar-start">
                <div className="dropdown">
                    <label tabIndex={0} className="btn btn-ghost lg:hidden">
                        <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M4 6h16M4 12h8m-8 6h16" /></svg>
                    </label>
                    <ul tabIndex={0} className="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow bg-base-100 rounded-box w-52">
                        <li><a>Home</a></li>
                        <li>
                            <a>Location</a>
                        </li>
                        <li><a>Blog</a></li>
                    </ul>
                </div>
                <NavLink to={"/"} className=' pl-2'>
                    <img src={Logo}></img>
                </NavLink>
            </div>
            <div className="navbar-center hidden lg:flex">
                <ul className="flex">
                    <li className=' mr-32'>
                        <NavLink to={"/"} className=' hover:text-green-400'>Home</NavLink>
                    </li>
                    <li>
                        <NavLink to={"/locations"} className=' hover:text-green-400'>Location</NavLink>
                    </li>
                    <li className=' ml-32'>
                        <a href='#' className=' hover:text-green-400'>Blog</a></li>
                </ul>
            </div>
            {user ? (
                <div className="navbar-end">
                    <NavLink to={"/dashboard"}>
                        <button className="btn btn-sm bg-white hover:bg-black hover:text-white border-2 mr-2">Dashboard</button>
                    </NavLink>
                </div>
            ) : (
                <div className="navbar-end">
                    <NavLink to={"/register"}>
                        <button className="btn btn-sm bg-white hover:bg-black hover:text-white border-2 mr-2">Sign Up</button>
                    </NavLink>
                    <NavLink to={"/login"} >
                        <button className="btn btn-sm mr-2 bg-black text-white hover:bg-green-700">Login</button>
                    </NavLink>
                </div>
            )}

        </div>
    )
}

export default NavbarUser