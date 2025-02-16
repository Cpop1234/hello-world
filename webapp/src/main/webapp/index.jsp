<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - DevOps Learning</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
        }
        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 8px 32px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            width: 100%;
            max-width: 400px;
            text-align: center;
            color: white;
        }
        h1 {
            margin-bottom: 20px;
            font-size: 24px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            text-align: center;
            background: rgba(255, 255, 255, 0.3);
            color: white;
            outline: none;
        }
        input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }
        button {
            background: #ff7eb3;
            color: white;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 25px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }
        button:hover {
            background: #ff3b73;
        }
        .signup {
            margin-top: 15px;
        }
        .signup a {
            color: #ff7eb3;
            text-decoration: none;
        }
        .signup a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form action="login_action.jsp" method="post">
        <div class="container">
            <h1>Welcome Dear Friend!</h1>
            <input type="text" placeholder="Enter Email " name="username" required>
            <input type="password" placeholder="Enter Password" name="password" required>
            <button type="submit">Login</button>
            <div class="signup">
                <p>Don't have an account? <a href="register.jsp">Signup</a></p>
            </div>
        </div>
    </form>
</body>
</html>

