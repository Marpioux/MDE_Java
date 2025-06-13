<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Heater" %>

<html>
<head><title>Heater List</title></head>
<body>
<h2>Select a Heater:</h2>
<ul>
    <%
        List<Heater> heaters = (List<Heater>) request.getAttribute("heaters");
        if (heaters != null) {
            for (int i = 0; i < heaters.size(); i++) {
                Heater heater = heaters.get(i);
    %>
    <li><a href="heater?id=<%=i%>">Heater #<%= i %> - Temperature: <%= heater.getTemp() %> °C</a></li>
    <%
        }
    } else {
    %>
    <li>No heaters available</li>
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
