package main.java.servlet;

import main.java.entity.Customer;
import main.java.entity.CustomerAPI;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Julian on 5/11/2017.
 */

public class RegistrationUpdate extends HttpServlet {

    // If this servlet is accessed via HTTP GET: return the user to the login page (.jsp)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        loginStatusRedirection(request, response);
    }

    // This servlet should only be accessed via post. If posted, access the customers details from the API and validate credentials and return response depending on validation process
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Customer customer_login_submission = null;

        //Get request parameters from form submission
        String username_entry = request.getParameter("username");
        String email_entry = request.getParameter("email");
        String password_entry = request.getParameter("password");

        System.out.println(username_entry);

        response.sendRedirect("/");
    }

    /*Method to check a user's login-status and redirect accordingly
   (this method is used across most user-sensitive servlets to confirm their login status)*/
    public static void loginStatusRedirection(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(true);
        if (session.getAttribute("loginStatus") != "active"){
            response.sendRedirect("/login");
        } else {
            Customer customer = (Customer) session.getAttribute("customer");
            //REPLACE WITH REDIRECT TO APPROPRIATE JSP
            response.sendRedirect("/order");
        }
    }
}
