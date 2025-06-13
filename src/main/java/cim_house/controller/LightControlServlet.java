package cim_house.controller;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import cim_house.model.Light;
import java.io.IOException;
import java.util.List;

@WebServlet("/light")
public class LightControlServlet extends HttpServlet {
    private static final List<Light> lights = LightListServlet.getLights();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Light light = lights.get(id);
        req.setAttribute("light", light);
        req.setAttribute("lightId", id);
        req.getRequestDispatcher("/light-details.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Light light = lights.get(id);
        String action = req.getParameter("action");

        if ("increase".equals(action)) {
            light.increaseIntensity();
        } else if ("decrease".equals(action)) {
            light.decreaseIntensity();
        }

        resp.sendRedirect("light?id=" + id);
    }
}
