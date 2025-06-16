<!DOCTYPE html>
<html>
<head>
    <title>User View</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            color: #2c3e50;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px 20px;
        }

        h2 {
            margin-bottom: 30px;
        }

        p {
            font-size: 18px;
            margin-bottom: 40px;
        }

        a {
            display: block;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            padding: 15px 40px;
            margin: 10px 0;
            border-radius: 8px;
            font-weight: bold;
            font-size: 16px;
            width: 220px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<h2>User View</h2>
<p>Welcome User!</p>
<a href="index.jsp">Logout</a>
<a href="lightList">Manage Lights</a>
<a href="heaterList">Manage Heaters</a>
<a href="doorList">Manage Doors</a>
</body>
</html>
