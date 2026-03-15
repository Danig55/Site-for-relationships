import React, { useState } from "react";
import "./Login.css";
import { FaHeart } from "react-icons/fa";


function Register() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const handleLogin = async () => {
    const response = await fetch("https://localhost:5001/api/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        username: username,
        password: password
      })
    });

    const data = await response.json();
    console.log(data);
  };

  return (
      <div className="login-container">
        <button className="back">← Go Back</button>


        <div className="heart"><FaHeart /></div>

          <p className="slogan">Find your perfect match!</p>

        <input
            type="text"
            placeholder="Username"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
        />

        <input
            type="password"
            placeholder="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
        />

        <p className="register">or Register</p>

        <button className="login-btn" onClick={handleLogin}>
          Login
        </button>

        <p className="forgot">Forgot your password?</p>
      </div>
  );
}

export default Register;