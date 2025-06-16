<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Element" %>
<%@ page import="cim_house.model.Light" %>
<%@ page import="cim_house.model.Heater" %>

<html>
<head>
    <title>Element Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h2, h3 {
            color: #2c3e50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 12px 15px;
            text-align: left;
        }

        table th {
            background-color: #3498db;
            color: white;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        form {
            margin-top: 15px;
        }

        select, button {
            padding: 8px 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        button {
            background-color: #2ecc71;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #27ae60;
        }

        .delete-button {
            background-color: #e74c3c;
        }

        .delete-button:hover {
            background-color: #c0392b;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #3498db;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>Elements</h2>

<table>
    <tr><th>ID</th><th>Name</th><th>Type</th><th>Actions</th></tr>
    <%
        List<Element> elements = (List<Element>) request.getAttribute("elements");
        if (elements != null && !elements.isEmpty()) {
            for (Element e : elements) {
                String type = "Unknown";
                if (e instanceof Light) type = "Light";
                else if (e instanceof Heater) type = "Heater";
    %>
    <tr>
        <td><%= e.getId_element() %></td>
        <td><%= type %></td>
        <td>
            <form method="post" action="elements" style="display:inline;">
                <input type="hidden" name="action" value="delete" />
                <input type="hidden" name="id" value="<%= e.getId_element() %>" />
                <button type="submit" class="delete-button">Delete</button>
            </form>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr><td colspan="4">No elements found</td></tr>
    <%
        }
    %>
</table>

<h3>Add New Element</h3>
<form method="post" action="elements">
    <input type="hidden" name="action" value="create" />
    <label>Type:</label>
    <select name="type">
        <option value="light">Light</option>
        <option value="heater">Heater</option>
    </select>
    <button type="submit">Add</button>
</form>

<a href="<%= request.getContextPath() %>/admin_view.jsp">← Back to Admin Dashboard</a>
</body>
</html>
