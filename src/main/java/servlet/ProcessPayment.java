package main.java.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
        String expiryYear = req.getParameter("expiryYear");
        String expiryMonth = req.getParameter("expiryMonth");
        String ccv = req.getParameter("ccv");

        System.out.println(cardNum);
        System.out.println(expiryYear);
        System.out.println(expiryMonth);
        System.out.println(ccv);

    }
}
