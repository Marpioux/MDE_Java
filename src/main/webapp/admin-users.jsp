<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.User" %>
<html>
<head><title>User Management</title></head>
<body>
<h2>Users</h2>
<table border="1" cellpadding="5" cellspacing="0">
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
            <form method="post" style="display:inline;">
                <input type="hidden" name="action" value="delete" />
                <input type="hidden" name="id" value="<%= u.getId() %>" />
                <button type="submit">Delete</button>
            </form>
            <form method="post" style="display:inline;">
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

<h3>Create new user</h3>
<form method="post">
    <input type="hidden" name="action" value="create" />
    Password: <input type="password" name="password" required />
    Role:
    <select name="role">
        <option value="user">User</option>
        <option value="admin">Admin</option>
    </select>
    <button type="submit">Create</button>
</form>

<a href="<%= request.getContextPath() %>/admin_view.jsp">Back to Admin Dashboard</a>
</body>
</html>
