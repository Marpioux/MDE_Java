<h2>Administrator Login</h2>
<form action="login" method="post">
    <input type="hidden" name="type" value="admin">
    ID: <input type="text" name="id"><br>
    Password: <input type="password" name="password"><br>
    <button type="submit">Login</button>
</form>
<% if ("true".equals(request.getParameter("error"))) { %>
<p style="color:red;">Invalid credentials.</p>
<% } %>
<a href="login_choice.jsp">Back</a>
