<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Light" %>

<html>
<head><title>Light List</title></head>
<body>
<h2>Select a Light:</h2>
<ul>
    <%
        List<Light> lights = (List<Light>) request.getAttribute("lights");
        if (lights != null) {
            for (int i = 0; i < lights.size(); i++) {
                Light light = lights.get(i);
    %>
    <li><a href="light?id=<%=i%>">Light #<%= i %> - Intensity: <%= light.getIntensity() %></a></li>
    <%
        }
    } else {
    %>
    <li>No lights available</li>
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
