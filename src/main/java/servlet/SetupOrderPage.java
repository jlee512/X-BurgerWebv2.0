package main.java.servlet;

import main.java.entity.Customer;
import main.java.entity.Stock;
import main.java.entity.Stock_API;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Julian on 13/11/2017.
 */
public class SetupOrderPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Stock> all_available_stock = Stock_API.getAllStockDetails();

        HttpSession session = request.getSession(true);

        //Reset session order pending attribute if it exists
        if (session.getAttribute("order_pending") != null) {
            session.removeAttribute("order_pending");
        }

        request.setAttribute("all_stock", all_available_stock);

        RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/make_order");

        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/order");
    }
}
