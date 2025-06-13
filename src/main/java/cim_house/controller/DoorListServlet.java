package cim_house.controller;

import cim_house.model.Door;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/doorList")
public class DoorListServlet extends HttpServlet {
    private static final List<Door> doors = new ArrayList<>();

    static {
        doors.add(new Door(0, "Front Door"));
        doors.add(new Door(1, "Garage Door"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("doors", doors);
        req.getRequestDispatcher("/door-list.jsp").forward(req, resp);
    }

    public static List<Door> getDoors() {
        return doors;
    }
}
