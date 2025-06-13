<%@ page import="cim_house.model.Heater" %>

<html>
<head><title>Heater Control</title></head>
<body>
<%
    Heater heater = (Heater) request.getAttribute("heater");
    int heaterId = (Integer) request.getAttribute("heaterId");
%>
<h2>Heater #<%=heaterId%></h2>
<p>Current Temperature: <%= heater.getTemp() %> °C</p>

<form method="post" action="heater">
    <input type="hidden" name="id" value="<%=heaterId%>" />
    <button type="submit" name="action" value="increase">Increase</button>
    <button type="submit" name="action" value="decrease">Decrease</button>
</form>

<a href="heaterList">Back to list</a>
</body>
</html>
