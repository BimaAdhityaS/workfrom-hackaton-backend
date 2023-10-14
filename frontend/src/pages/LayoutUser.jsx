import React from 'react'
import NavbarUser from '../components/user/NavbarUser.jsx'
import FooterUser from '../components/user/FooterUser.jsx'

const LayoutUser = ({ children }) => {
    return (
        <React.Fragment>
            <NavbarUser />
            <div className="content">
                {children}
            </div>
            <FooterUser />
        </React.Fragment>
    )
}

export default LayoutUser