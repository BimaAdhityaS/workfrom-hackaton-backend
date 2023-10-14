import React from 'react'
import { NavLink } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'

const SidebarAdmin = () => {
    const { user } = useSelector(state => state.auth)

    return (
        <div className='bg-base-200'>
            <div className="drawer lg:drawer-open bg-base-200">
                <input id="my-drawer-2" type="checkbox" className="drawer-toggle" />
                <div className="drawer-content flex flex-col items-center justify-center">
                    <label htmlFor="my-drawer-2" className="btn btn-primary drawer-button lg:hidden"></label>
                </div>
                <div className="drawer-side">
                    <label htmlFor="my-drawer-2" aria-label="close sidebar" className="drawer-overlay"></label>
                    <ul className="menu p-4 w-80 h-full max-h-full bg-base-200 text-base-content">
                        <header className="footer-title">General</header>
                        <NavLink to={"/dashboard"} className="link link-hover text-lg font-medium ml-2">Dashboard</NavLink>
                        <NavLink to={"/properties"} className="link link-hover text-lg font-medium ml-2">Properti</NavLink>
                        {user && user.role === "admin" && (
                            <NavLink to={"/orders"} className="link link-hover text-lg font-medium ml-2">Order</NavLink>
                        )}

                        {user && user.role === "mitra" && (
                            <NavLink to={"/orders"} className="link link-hover text-lg font-medium ml-2">Order</NavLink>
                        )}

                        {user && user.role === "admin" && (
                            <div>
                                <header className="footer-title mt-4">Admin</header>
                                <NavLink to={"/users"} className="link link-hover text-lg font-medium ml-2">Users</NavLink>
                            </div>
                        )}

                        {user && user.role === "karyawan" && (
                            <div>
                                <header className="footer-title mt-4">Admin</header>
                                <NavLink to={"/users"} className="link link-hover text-lg font-medium ml-2">Users</NavLink>
                            </div>
                        )}
                    </ul>
                </div>
            </div>
        </div>
    )
}

export default SidebarAdmin