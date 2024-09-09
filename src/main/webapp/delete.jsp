<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
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

.forgot-password-form {
    display: flex;
    flex-direction: column;
}

h2 {
    margin-bottom: 20px;
    font-size: 28px;
}

input {
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
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
            <form action="deleteAccount" method="POST" class="forgot-password-form">
                <h2>Delete Account</h2>
                <input type="email" placeholder="Email" name="email">
                <input type="password" placeholder="New Password" name="password">
                <button type="submit" class="btn">Delete Account</button>
            </form>
        </div>
        <div class="welcome-container">
            <h2>Delete your account</h2>
			<p>We're sorry to see you go. Deleting your account is permanent and cannot be undone. All your data will be lost.</p>
			<a href="home.jsp">Changed your mind? Go back to home.</a>
        </div>
    </div>
</body>
</html>
