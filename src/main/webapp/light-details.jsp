<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Light" %>

<html>
<head>
  <title>Light Control</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f6f9;
      padding: 40px;
      color: #2c3e50;
      text-align: center;
    }

    h2 {
      margin-bottom: 15px;
    }

    p {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 30px;
    }

    form {
      display: flex;
      justify-content: center;
      gap: 20px;
      margin-bottom: 30px;
    }

    button {
      background-color: #3498db;
      color: white;
      border: none;
      padding: 12px 25px;
      font-size: 16px;
      border-radius: 6px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #2980b9;
    }

    a {
      color: #3498db;
      text-decoration: none;
      font-size: 16px;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<%
  Light light = (Light) request.getAttribute("light");
  int lightId = (Integer) request.getAttribute("lightId");
%>
<h2>Light #<%= lightId %></h2>
<p>Current Intensity: <%= light.getIntensity() %></p>

<form method="post" action="light">
  <input type="hidden" name="id" value="<%= lightId %>" />
  <button type="submit" name="action" value="increase">Increase</button>
  <button type="submit" name="action" value="decrease">Decrease</button>
</form>

<a href="lightList">← Back to list</a>
</body>
</html>
