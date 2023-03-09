import React from 'react';
import { NavLink } from 'react-router-dom'

function Header({ handleLogout, user }) {
    return (
        <div className="Header">
            <div className="header_container">
                <h1 className="app_name">BadBeats</h1>
            </div>
            <div className="Links">
                <NavLink className="navlink" to="/">Home</NavLink>
                <NavLink className="navlink" to="/Basketball">Basketball</NavLink>
                <NavLink className="navlink" to="/Football">Football</NavLink>
                <NavLink className="navlink" to="/Hockey">Hockey</NavLink>
                <NavLink className="navlink" to="/Soccer">Soccer</NavLink>
                <NavLink className="navlink" to="/Baseball">Baseball</NavLink>
                {!user.id ? <><NavLink className="navlink" to="/Login">Login</NavLink>
                    <NavLink className="navlink" to="/Signup">Sign up</NavLink></> : null}
                {user.id ? <button className="logout_button" onClick={handleLogout}>Log Out</button> : null}
            </div>
        </div>
    )
}

export default Header;