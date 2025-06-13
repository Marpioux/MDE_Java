<%@ page import="cim_house.model.Door" %>
<html>
<head><title>Door Control</title></head>
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

<a href="doorList">Back to list</a>
</body>
</html>
