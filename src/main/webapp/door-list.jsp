<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Door" %>
<html>
<head><title>Door List</title></head>
<body>
<h2>Select a Door:</h2>
<ul>
    <%
        List<Door> doors = (List<Door>) request.getAttribute("doors");
        if (doors != null) {
            for (int i = 0; i < doors.size(); i++) {
                Door door = doors.get(i);
    %>
    <li><a href="door?id=<%=i%>"><%= door.getName() %> - Status: <%= door.isOpen() ? "Open" : "Closed" %></a></li>
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
    String backLink;
    if (user != null) {
        backLink = "user_view.jsp";
    } else {
        backLink = "index.jsp";
    }
%>

<a href="<%= backLink %>">Back to Home</a>


</body>
</html>
