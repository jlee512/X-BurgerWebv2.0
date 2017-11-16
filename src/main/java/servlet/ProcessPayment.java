package main.java.servlet;

import main.java.entity.Customer;
import main.java.entity.CustomerAPI;
import main.java.entity.Order;
import main.java.entity.Order_API;
import main.java.helpers.Token_Generator;
import main.java.password.Passwords;

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
        resp.sendRedirect("/order");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String payment_method = req.getParameter("saved-card");
        HttpSession session = req.getSession(true);

        switch (payment_method) {

            //Payment with saved card
            case "savedCard": {

                String pin_entry = req.getParameter("pin-saved");

                Customer customer = (Customer) session.getAttribute("customer");

                //Check customer pin to confirm payment successful
                byte[] saltArray = Passwords.base64Decode(customer.getSalt());
                int iterArray = customer.getIterations();
                byte[] pinArray_entry = Passwords.hash(pin_entry.toCharArray(),saltArray, iterArray);
                String pinHash_entry = Passwords.base64Encode(pinArray_entry);

                byte[] pinArray = Passwords.base64Decode(customer.getPassPin());

                if (Passwords.isExpectedPassword(pinHash_entry.toCharArray(), saltArray, customer.getIterations(), pinArray)) {
                    //Payment successful if pin matches DB pin
                    System.out.println("Payment Successful");
                } else {
                    //Invalid pin - redirect to payment and display feedback
                    System.out.println("Payment Unsuccessful");
                    resp.sendRedirect("/payment?status=incorrectPin");
                }

                Order pending_order = (Order) session.getAttribute("order_pending");

                for (int i = 0; i < pending_order.getItems().size(); i++) {

                    System.out.println("New Item: " + pending_order.getItems().get(i).getItem_type());

                    for (int j = 0; j < pending_order.getItems().get(i).getIngredients().size(); j++) {

                        System.out.println("    Ingredient: " + pending_order.getItems().get(i).getIngredients().get(j).getIngredient_name());
                    }

                }

                session.removeAttribute("pending_order");

                Order_API.addOrder(pending_order, customer.getCustomer_id());

                //Redirect to history if logged in, else redirect to home page with status = completed
                if (session.getAttribute("loginStatus") == "active") {
                    resp.sendRedirect("/history?order=completed");
                } else {
                    resp.sendRedirect("/?guest_order=completed");
                }

                break;
            }
            //Payment with card and remember details (with user pin)
            case "rememberCard": {
                //Get card details and check validity
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
                    } else if (expiryMonth > current_month) {
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

                //Add card to the database by generating a token and hashing the pin (replace with adopted payment operator)
                String payment_token = Token_Generator.generateToken();
                String pin_entry = req.getParameter("pin-new");

                //Get customer details
                Customer customer = (Customer) session.getAttribute("customer");

                byte[] saltArray = Passwords.base64Decode(customer.getSalt());
                int iterArray = customer.getIterations();
                byte[] pinArray = Passwords.hash(pin_entry.toCharArray(),saltArray, iterArray);
                String pinHash = Passwords.base64Encode(pinArray);

                customer.setCardToken(payment_token);
                customer.setPassPin(pinHash);

                //Update session attribute with customer saved payment details
                session.setAttribute("customer", customer);

                //Update customer pin and token in database
                CustomerAPI.saveCustomerPaymentTokenDB(customer.getCustomer_id(), customer.getPassPin(), customer.getCardToken());

                Order pending_order = (Order) session.getAttribute("order_pending");

                for (int i = 0; i < pending_order.getItems().size(); i++) {

                    System.out.println("New Item: " + pending_order.getItems().get(i).getItem_type());

                    for (int j = 0; j < pending_order.getItems().get(i).getIngredients().size(); j++) {

                        System.out.println("    Ingredient: " + pending_order.getItems().get(i).getIngredients().get(j).getIngredient_name());
                    }

                }

                session.removeAttribute("pending_order");

                Order_API.addOrder(pending_order, customer.getCustomer_id());

                //Redirect to history if logged in, else redirect to home page with status = completed
                if (session.getAttribute("loginStatus") == "active") {
                    resp.sendRedirect("/history?order=completed");
                } else {
                    resp.sendRedirect("/?guest_order=completed");
                }

                break;
            }
            //Payment with card and not remembered, check if user is logged in, if not
            case "guest": {

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
                    } else if (expiryMonth > current_month) {
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

                Customer customer = null;
                //Get customer details to add to order (or generate placeholder for guest if not logged in
                if (session.getAttribute("loginStatus") == "active") {
                    customer = (Customer) session.getAttribute("customer");
                } else {
                    customer = CustomerAPI.getCustomerDetailsAPI("guest", "username");
                }

                Order pending_order = (Order) session.getAttribute("order_pending");

                for (int i = 0; i < pending_order.getItems().size(); i++) {

                    System.out.println("New Item: " + pending_order.getItems().get(i).getItem_type());

                    for (int j = 0; j < pending_order.getItems().get(i).getIngredients().size(); j++) {

                        System.out.println("    Ingredient: " + pending_order.getItems().get(i).getIngredients().get(j).getIngredient_name());
                    }

                }

                session.removeAttribute("pending_order");

                Order_API.addOrder(pending_order, customer.getCustomer_id());

                //Redirect to history if logged in, else redirect to home page with status = completed
                if (session.getAttribute("loginStatus") == "active") {
                    resp.sendRedirect("/history?order=completed");
                } else {
                    resp.sendRedirect("/?guest_order=completed");
                }

                break;
            }
        }
    }
}
