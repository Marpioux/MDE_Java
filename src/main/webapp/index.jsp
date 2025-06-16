<!DOCTYPE html>
<html>
<head>
    <title>Guest Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            color: #2c3e50;
        }

        h2 {
            margin-bottom: 40px;
            font-size: 28px;
        }

        form {
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            min-width: 150px;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<h2>Welcome Guest</h2>

<form action="lightList" method="get">
    <input type="submit" value="Light"/>
</form>

<form action="heaterList" method="get">
    <input type="submit" value="Heater"/>
</form>

<form action="login_choice.jsp" method="get">
    <input type="submit" value="Login"/>
</form>
</body>
</html>
