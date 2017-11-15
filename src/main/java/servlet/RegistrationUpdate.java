package main.java.servlet;

import main.java.entity.Customer;
import main.java.entity.CustomerAPI;
import main.java.password.Passwords;

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
        String username_entry = request.getParameter("name_us");
        String email_entry = request.getParameter("email");
        String password_entry = request.getParameter("pass_us");
        //String password_confirm = request.getParameter("password");

        byte[] saltArray = Passwords.getNextSalt(16);
        int iterArray = Passwords.getNextNumIterations();

        byte[] passwordArray = Passwords.hash(password_entry.toCharArray(),saltArray, iterArray);

        String salt = Passwords.base64Encode(saltArray);
        String passwordHash = Passwords.base64Encode(passwordArray);

        Customer newCust = new Customer(username_entry, email_entry, "", iterArray, salt, passwordHash, "", "");

        CustomerAPI.addCustomertoDBAPI(newCust);

        HttpSession session = request.getSession(true);
        session.setMaxInactiveInterval(60 * 60 * 12);
        session.setAttribute("loginStatus", "active");
        session.setAttribute("customer", newCust);

        //REPLACE WITH REDIRECT TO APPROPRIATE JSP
        response.sendRedirect("/order");
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
