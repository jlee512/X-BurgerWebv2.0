package main.java.servlet;

import main.java.entity.Customer;
import main.java.entity.Order;
import main.java.entity.Order_API;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class OrderHistory extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int customer_id = 1;

        //get order details for the customer
        ArrayList<Order> list_of_orders = Order_API.getOrdersByCustomerID(customer_id);

        System.out.println(list_of_orders.get(0).getOrder_id());

        req.setAttribute("order_list", list_of_orders);
        req.getRequestDispatcher("/history").forward(req, resp);
    }



    /*Method to check a user's login-status and redirect accordingly
(this method is used across most user-sensitive servlets to confirm their login status)*/
    public static void loginStatusRedirection(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        if (session.getAttribute("loginStatus") != "active"){
            response.sendRedirect("/login");
        } else {
            Customer customer = (Customer) session.getAttribute("customer");
            response.sendRedirect("/history");
        }
    }
}
