package cim_house.controller;

import cim_house.model.Heater;
import cim_house.store.DataStore;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.util.List;
import java.io.IOException;

@WebServlet("/heaterList")
public class HeaterListServlet extends HttpServlet {

    public static List<Heater> getHeaters() {
        return DataStore.getInstance().getHeaters();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Heater> heaters = DataStore.getInstance().getHeaters();
        req.setAttribute("heaters", heaters);
        req.getRequestDispatcher("/heater-list.jsp").forward(req, resp);
    }
}
