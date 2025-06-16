<!DOCTYPE html>
<html>
<head>
    <title>Choose Login Type</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #2c3e50;
        }

        h2 {
            margin-bottom: 40px;
        }

        a {
            display: inline-block;
            background-color: #3498db;
            color: white;
            padding: 12px 40px;
            margin: 10px 0;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 200px;
            text-align: center;
        }

        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<h2>Choose Login Type</h2>
<a href="user_login.jsp">User Login</a>
<a href="admin_login.jsp">Admin Login</a>
<a href="index.jsp">Back</a>
</body>
</html>
