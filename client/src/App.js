import React, { useState, useEffect } from 'react'
import { Route, useLocation, useNavigate } from 'react-router-dom'
import SlideRoutes from 'react-slide-routes'
import Home from './Home.js'
import Basketball from './Basketball.js'
import Football from './Football.js'
import Hockey from './Hockey.js'
import Soccer from './Soccer.js'
import Baseball from './Baseball.js'
import Header from './Header.js'
import Login from './Login.js'
import Signup from './Signup.js'

function App() {

  const [user, setUser] = useState({})

  const navigate = useNavigate();

  useEffect(() => {
    fetch("/me")
      .then(response => {
        if (response.ok) {
          response.json()
            .then(data => {
              setUser(data)
            })
        }
      })
  })

  const handleLogout = () => {
    setUser({})
    fetch("/logout", {
      method: "DELETE"
    })
    alert("You have been logged out")
    navigate("/")
  }

  function addUser(newUser) {
    fetch('/signup', {
      method: "POST",
      header: { "content-type" : "application/json"} ,
      body: JSON.stringify(newUser)
    })
      .then(response => response.json())
      .then(data => {
        fetch("/me")
          .then(response => {
            if (response.ok) {
              response.json()
                .then(data => {
                  setUser(data)
                  navigate("/")
                })
            }
          })
      })
  }

  const location = useLocation();


  return (
    <div className="App">
      <Header handleLogout={handleLogout} user={user} />
      <SlideRoutes location={location} duration={400}>
        <Route path="/" element={<Home exact />} />
        <Route path="/Basketball" element={<Basketball />} />
        <Route path="/Football" element={<Football />} />
        <Route path="/Hockey" element={<Hockey />} />
        <Route path="/Soccer" element={<Soccer />} />
        <Route path="/Baseball" element={<Baseball />} />
        <Route path="/Login" element={<Login user={user} setUser={setUser} />} />
        <Route path="/Signup" element={<Signup addUser={addUser} />} />
      </SlideRoutes>
    </div>
  );
}

export default App;
