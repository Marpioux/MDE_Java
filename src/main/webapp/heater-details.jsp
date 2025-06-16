<%@ page import="cim_house.model.Heater" %>

<html>
<head>
    <title>Heater Control</title>
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
            gap: 20px;
            margin-bottom: 30px;
        }

        button {
            padding: 10px 20px;
            background-color: #e67e22;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #d35400;
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
    Heater heater = (Heater) request.getAttribute("heater");
    int heaterId = (Integer) request.getAttribute("heaterId");
%>
<h2>Heater #<%= heaterId %></h2>
<p>Current Temperature: <%= heater.getTemp() %> °C</p>

<form method="post" action="heater">
    <input type="hidden" name="id" value="<%= heaterId %>" />
    <button type="submit" name="action" value="increase">Increase</button>
    <button type="submit" name="action" value="decrease">Decrease</button>
</form>

<a href="heaterList">← Back to list</a>
</body>
</html>
