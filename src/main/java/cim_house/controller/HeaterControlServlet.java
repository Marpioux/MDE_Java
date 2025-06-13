package cim_house.controller;

import cim_house.model.Heater;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/heater")
public class HeaterControlServlet extends HttpServlet {
    private static final List<Heater> heaters = HeaterListServlet.getHeaters();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Heater heater = heaters.get(id);
        req.setAttribute("heater", heater);
        req.setAttribute("heaterId", id);
        req.getRequestDispatcher("/heater-details.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Heater heater = heaters.get(id);
        String action = req.getParameter("action");

        if ("increase".equals(action)) {
            heater.heat();
        } else if ("decrease".equals(action)) {
            heater.cool();
        }

        resp.sendRedirect("heater?id=" + id);
    }
}
