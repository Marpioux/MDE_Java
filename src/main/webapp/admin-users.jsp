<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.User" %>
<html>
<head>
    <title>User Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
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
            display: inline-block;
            margin: 5px 0;
        }

        input[type="password"], select {
            padding: 6px 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 14px;
            margin-right: 8px;
        }

        button {
            padding: 8px 12px;
            background-color: #2ecc71;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
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

        .form-group {
            margin-top: 15px;
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
<h2>Users</h2>
<table>
    <tr><th>ID</th><th>Role</th><th>Actions</th></tr>
    <%
        List<User> users = (List<User>) request.getAttribute("users");
        if (users != null && !users.isEmpty()) {
            for (User u : users) {
    %>
    <tr>
        <td><%= u.getId() %></td>
        <td><%= u.getRole() %></td>
        <td>
            <form method="post">
                <input type="hidden" name="action" value="delete" />
                <input type="hidden" name="id" value="<%= u.getId() %>" />
                <button type="submit" class="delete-button">Delete</button>
            </form>
            <form method="post">
                <input type="hidden" name="action" value="changepass" />
                <input type="hidden" name="id" value="<%= u.getId() %>" />
                <input type="password" name="newPassword" placeholder="New password" required />
                <button type="submit">Change Password</button>
            </form>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr><td colspan="3">No users found.</td></tr>
    <%
        }
    %>
</table>

<h3>Create New User</h3>
<form method="post">
    <input type="hidden" name="action" value="create" />
    <div class="form-group">
        Password: <input type="password" name="password" required />
        Role:
        <select name="role">
            <option value="user">User</option>
            <option value="admin">Admin</option>
        </select>
        <button type="submit">Create</button>
    </div>
</form>

<a href="<%= request.getContextPath() %>/admin_view.jsp">← Back to Admin Dashboard</a>
</body>
</html>
