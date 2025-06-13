package cim_house.controller;

import cim_house.model.Door;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/door")
public class DoorControlServlet extends HttpServlet {
    private static final List<Door> doors = DoorListServlet.getDoors();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Door door = doors.get(id);
        req.setAttribute("door", door);
        req.setAttribute("doorId", id);
        req.getRequestDispatcher("/door-details.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Door door = doors.get(id);
        String action = req.getParameter("action");

        if ("open".equals(action)) {
            door.open();
        } else if ("close".equals(action)) {
            door.close();
        } else if ("toggle".equals(action)) {
            door.toggle();
        }

        resp.sendRedirect("door?id=" + id);
    }
}
