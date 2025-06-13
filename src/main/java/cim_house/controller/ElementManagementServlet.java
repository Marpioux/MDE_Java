package cim_house.controller;

import cim_house.model.Heater;
import cim_house.model.Light;
import cim_house.store.DataStore;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/admin/elements")
public class ElementManagementServlet extends HttpServlet {

    private DataStore store = DataStore.getInstance();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("elements", store.getElements());
        request.getRequestDispatcher("/admin-elements.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("create".equals(action)) {
            String type = request.getParameter("type");

            if ("light".equals(type)) {
                Light light = new Light();
                DataStore.addElement(light);
            } else if ("heater".equals(type)) {
                Heater heater = new Heater();
                DataStore.addElement(heater);
            }
        }
        else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            DataStore.removeElement(id);
        }

        response.sendRedirect("elements");
    }
}
