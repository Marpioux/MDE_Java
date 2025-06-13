package cim_house.controller;

import cim_house.model.Light;
import cim_house.store.DataStore;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/lightList")
public class LightListServlet extends HttpServlet {

    public static List<Light> getLights() {
        return DataStore.getInstance().getLights();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Light> lights = DataStore.getInstance().getLights();
        req.setAttribute("lights", lights);
        req.getRequestDispatcher("/light-list.jsp").forward(req, resp);
    }
}
