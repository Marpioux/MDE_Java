<%@ page import="cim_house.model.Door" %>
<html>
<head>
    <title>Door Control</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            padding: 40px;
            color: #2c3e50;
            text-align: center;
        }

        h2 {
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
            font-weight: bold;
            color: #555;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 30px;
        }

        button {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #3498db;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%
    Door door = (Door) request.getAttribute("door");
    int doorId = (Integer) request.getAttribute("doorId");
%>
<h2><%= door.getName() %></h2>
<p>Status: <%= door.isOpen() ? "Open" : "Closed" %></p>

<form method="post" action="door">
    <input type="hidden" name="id" value="<%= doorId %>" />
    <button type="submit" name="action" value="open">Open</button>
    <button type="submit" name="action" value="close">Close</button>
    <button type="submit" name="action" value="toggle">Toggle</button>
</form>

<a href="doorList">← Back to list</a>
</body>
</html>
