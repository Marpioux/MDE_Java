<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
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
            margin-bottom: 30px;
        }

        form {
            background: white;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            display: flex;
            flex-direction: column;
            width: 320px;
        }

        label {
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }

        p.error {
            color: #e74c3c;
            margin-top: -10px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        a {
            margin-top: 15px;
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
            text-align: center;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>User Login</h2>
<form action="login" method="post">
    <input type="hidden" name="type" value="user" />

    <label for="id">ID:</label>
    <input type="text" id="id" name="id" required />

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required />

    <button type="submit">Login</button>
</form>

<% if ("true".equals(request.getParameter("error"))) { %>
<p class="error">Invalid credentials.</p>
<% } %>

<a href="login_choice.jsp">Back</a>
</body>
</html>
