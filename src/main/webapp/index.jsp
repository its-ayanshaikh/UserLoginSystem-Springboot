<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        display: flex;
        width: 800px;
        background-color: white;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    }

    .form-container {
        flex: 1;
        padding: 40px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .signup-form {
        display: flex;
        flex-direction: column;
    }

    .signup-form .row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }

    .row input {
        width: 48%;
    }

    h2 {
        margin-bottom: 20px;
        font-size: 28px;
    }

    input {
        padding: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
        width: 100%;
    }

    input::placeholder{
        font-size: 12px;
    }
    .btn {
        padding: 15px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .btn:hover {
        background-color: #218838;
    }

    .welcome-container {
        flex: 1;
        background-color: #28a745;
        color: white;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 40px;
        text-align: center;
    }

    .welcome-container h2 {
        margin-bottom: 20px;
        font-size: 28px;
    }

    .welcome-container p {
        margin-bottom: 20px;
        font-size: 15px;
    }

    .welcome-container a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        background-color: rgba(255,255,255,0.2);
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .welcome-container a:hover {
        background-color: rgba(255,255,255,0.4);
    }

</style>
<body>
    <div class="container">
        <div class="form-container">
            <form action="validate" method="POST" class="signup-form">
                <h2>Create Account</h2>

                <!-- First Row: First Name and Last Name -->
                <div class="row">
                    <input type="text" placeholder="First Name" name="firstname" required>
                    <input type="text" placeholder="Last Name" name="lastname" required>
                </div>

                <!-- Second Row: Email and Phone -->
                <div class="row">
                    <input type="email" placeholder="Email" name="email" required>
                    <input type="text" placeholder="+91 xxxxx xxxxx" name="phone" required>
                </div>

                <!-- Third Row: Password and Confirm Password -->
                <div class="row">
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="password" placeholder="Confirm Password" name="cpassword" required>
                </div>

                <!-- Sign Up Button -->
                <button type="submit" class="btn">Sign Up</button>
            </form>
        </div>
        <div class="welcome-container">
            <h2>Join Us!</h2>
            <p>Create an account to get started with our amazing platform. You'll be able to access all features and manage your account easily.</p>
            <a href="login.jsp">Already have an account? Sign in.</a>
        </div>
    </div>
</body>
</html>
