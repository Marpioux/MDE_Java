<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Element" %>
<%@ page import="cim_house.model.Light" %>
<%@ page import="cim_house.model.Heater" %>

<html>
<head><title>Element Management</title></head>
<body>
<h2>Elements</h2>

<table border="1">
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
                <button type="submit">Delete</button>
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

<a href="<%= request.getContextPath() %>/admin_view.jsp">Back to Admin Dashboard</a>
</body>
</html>
