<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Door" %>
<html>
<head>
    <title>Door List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            padding: 40px;
            color: #2c3e50;
        }

        h2 {
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            max-width: 600px;
        }

        li {
            background-color: #fff;
            margin-bottom: 12px;
            padding: 15px 20px;
            border-radius: 6px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
            font-size: 16px;
        }

        a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .status-open {
            color: #2ecc71;
            font-weight: bold;
        }

        .status-closed {
            color: #e74c3c;
            font-weight: bold;
        }

        .back-link {
            display: inline-block;
            margin-top: 30px;
            font-size: 16px;
            color: #3498db;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>Select a Door:</h2>
<ul>
    <%
        List<Door> doors = (List<Door>) request.getAttribute("doors");
        if (doors != null) {
            for (int i = 0; i < doors.size(); i++) {
                Door door = doors.get(i);
                String statusClass = door.isOpen() ? "status-open" : "status-closed";
                String statusText = door.isOpen() ? "Open" : "Closed";
    %>
    <li>
        <a href="door?id=<%= i %>"><%= door.getName() %></a> -
        <span class="<%= statusClass %>">Status: <%= statusText %></span>
    </li>
    <%
        }
    } else {
    %>
    <li>No doors available</li>
    <%
        }
    %>
</ul>

<%
    cim_house.model.User user = (cim_house.model.User) session.getAttribute("user");
    String backLink = (user != null) ? "user_view.jsp" : "index.jsp";
%>

<a class="back-link" href="<%= backLink %>">← Back to Home</a>
</body>
</html>
