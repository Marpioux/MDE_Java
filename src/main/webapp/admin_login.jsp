<h2>Administrator Login</h2>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        padding: 40px;
        color: #333;
    }

    h2 {
        color: #2c3e50;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        max-width: 400px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        margin-bottom: 20px;
    }

    label, input {
        display: block;
        width: 100%;
        margin-bottom: 10px;
    }

    input[type="text"],
    input[type="password"] {
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    button {
        padding: 10px 15px;
        background-color: #3498db;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #2980b9;
    }

    .error {
        color: #e74c3c;
        font-weight: bold;
        margin-top: 10px;
    }

    a {
        display: inline-block;
        margin-top: 10px;
        color: #3498db;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

<form action="login" method="post">
    <input type="hidden" name="type" value="admin">
    <label>ID:</label>
    <input type="text" name="id" required>

    <label>Password:</label>
    <input type="password" name="password" required>

    <button type="submit">Login</button>
</form>

<% if ("true".equals(request.getParameter("error"))) { %>
<div class="error">Invalid credentials.</div>
<% } %>

<a href="login_choice.jsp">← Back</a>
