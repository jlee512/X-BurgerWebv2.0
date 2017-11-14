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
import java.util.Calendar;

/**
 * Created by Julian on 14/11/2017.
 */
public class ProcessPayment extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String cardNum = req.getParameter("cardNum");
        int expiryYear = Integer.parseInt(req.getParameter("expiryYear"));
        int expiryMonth = Integer.parseInt(req.getParameter("expiryMon"));
        String ccv = req.getParameter("ccv");

        int current_year = Calendar.getInstance().get(Calendar.YEAR);
        int current_month = Calendar.getInstance().get(Calendar.MONTH);

        //Dummy payment checking, to be replaced by integrated payment method of client's choice
        //Chec
        if (cardNum.length() == 16) {

            if (expiryYear > current_year) {
                //Note further validation will be required by the payment services provider
                System.out.println("Payment Successful");
            } else if(expiryMonth > current_month){
                System.out.println("Payment Successful");
            } else {
                //Invalid card details - redirect to payment and display feedback
                System.out.println("Payment Unsuccessful");
                resp.sendRedirect("/payment?status=cardExpired");
            }

        } else {
            //Invalid card details - redirect to payment and display feedback
            System.out.println("Payment Unsuccessful");
            resp.sendRedirect("/payment?status=invalidDetails");
        }

        HttpSession session = req.getSession(true);
        Customer customer = (Customer) session.getAttribute("customer");
        Order pending_order = (Order) session.getAttribute("order_pending");
        session.removeAttribute("pending_order");

        Order_API.addOrder(pending_order, customer.getCustomer_id());

        resp.sendRedirect("/history");

    }
}
