import React from 'react'
import NavbarAdmin from '../components/admin/NavbarAdmin.jsx'
import SidebarAdmin from '../components/admin/SidebarAdmin.jsx'

const Layout = ({ children }) => {
    return (
        <React.Fragment>
            <NavbarAdmin />
            <div className="flex">
                <SidebarAdmin />
                <div className='w-full'>
                    {children}
                </div>
            </div>
        </React.Fragment>
    )
}

export default Layout