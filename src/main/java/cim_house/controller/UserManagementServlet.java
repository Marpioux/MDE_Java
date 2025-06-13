package cim_house.controller;

import cim_house.model.User;
import cim_house.store.DataStore;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/admin/users")
public class UserManagementServlet extends HttpServlet {

    private final DataStore store = DataStore.getInstance();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("users", DataStore.getUsers());
        request.getRequestDispatcher("/admin-users.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("create".equals(action)) {
            String password = request.getParameter("password");
            String role = request.getParameter("role");
            int id = store.getNextUserId();
            User user = new User(id, password, role);
            DataStore.addUser(user);
        }
        else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            DataStore.removeUser(id);
        }
        else if ("changepass".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String newPass = request.getParameter("newPassword");
            User user = DataStore.getUserById(id);
            if (user != null) user.setPassword(newPass);
        }

        response.sendRedirect("users");
    }
}

