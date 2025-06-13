<%@ page import="java.util.List" %>
<%@ page import="cim_house.model.Light" %>

<html>
<head><title>Light Control</title></head>
<body>
<%
  cim_house.model.Light light = (cim_house.model.Light) request.getAttribute("light");
  int lightId = (Integer) request.getAttribute("lightId");
%>
<h2>Light #<%=lightId%></h2>
<p>Current Intensity: <%= light.getIntensity() %></p>

<form method="post" action="light">
  <input type="hidden" name="id" value="<%=lightId%>" />
  <button type="submit" name="action" value="increase">Increase</button>
  <button type="submit" name="action" value="decrease">Decrease</button>
</form>

<a href="lightList">Back to list</a>
</body>
</html>
