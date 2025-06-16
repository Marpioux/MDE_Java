<h2>Administrator View</h2>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        padding: 40px;
        color: #2c3e50;
    }

    h2 {
        margin-bottom: 10px;
    }

    p {
        font-size: 16px;
        margin-bottom: 30px;
    }

    .nav-links {
        display: flex;
        flex-direction: column;
        gap: 15px;
        max-width: 300px;
    }

    .nav-links a {
        display: block;
        padding: 12px 20px;
        background-color: #3498db;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-size: 16px;
        text-align: center;
        transition: background-color 0.3s ease;
    }

    .nav-links a:hover {
        background-color: #2980b9;
    }

    .nav-links a.logout {
        background-color: #e74c3c;
    }

    .nav-links a.logout:hover {
        background-color: #c0392b;
    }
</style>

<p>Welcome Administrator!</p>

<div class="nav-links">
    <a class="logout" href="index.jsp">Logout</a>
    <a href="<%= request.getContextPath() + "/admin/elements" %>">Elements Management</a>
    <a href="<%= request.getContextPath() + "/admin/users" %>">Users Management</a>
</div>
