<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Successful</title>
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

.success-message {
    text-align: center;
    margin-bottom: 30px;
}

h2 {
    margin-bottom: 10px;
    font-size: 28px;
}

p {
    margin-bottom: 20px;
    font-size: 15px;
    color: #666;
}

.btn {
    padding: 15px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-bottom: 20px;
}

.btn:hover {
    background-color: #218838;
}

.delete-account {
    text-align: center;
}

.delete-btn {
    background-color: #dc3545;
}

.delete-btn:hover {
    background-color: #c82333;
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
    color: white;
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
            <div class="success-message">
                <h2>Login Successful!</h2>
                <p>Welcome back! You have successfully logged in.</p>
                <a href="Display"><button class="btn">Display Users</button></a>
            </div>
            <div class="delete-account">
                <h3>Want to delete your account?</h3>
                <p>If you wish to permanently delete your account, click the button below.</p>
                <a href="delete.jsp"><button class="btn delete-btn">Delete Account</button></a>
            </div>
        </div>
        <div class="welcome-container">
            <h2>Welcome back!</h2>
            <p>We are glad to see you again! Please feel free to continue using the services or manage your account settings.</p>
            <a href="#">Need help? Contact Support.</a>
        </div>
    </div>
</body>
</html>
