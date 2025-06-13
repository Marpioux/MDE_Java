package cim_house.controller;

import cim_house.model.User;
import cim_house.model.Administrator;
import cim_house.store.DataStore;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");
        int id = Integer.parseInt(request.getParameter("id"));
        String password = request.getParameter("password");

        if ("user".equals(type)) {
            User user = DataStore.getUserById(id);
            if (user != null && user.authenticate(password)) {
                request.getSession().setAttribute("user", user);
                response.sendRedirect("user_view.jsp");
            } else {
                response.sendRedirect("user_login.jsp?error=true");
            }
        } if ("admin".equals(type)) {
            if (id == 1 && "admin123".equals(password)) {
                Administrator admin = DataStore.getAdmin();
                request.getSession().setAttribute("admin", admin);
                response.sendRedirect("admin_view.jsp");
            } else {
                response.sendRedirect("admin_login.jsp?error=true");
            }
        }
    }
}
