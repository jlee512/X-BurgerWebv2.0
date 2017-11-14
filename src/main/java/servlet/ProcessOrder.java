package main.java.servlet;

import main.java.entity.Customer;
import main.java.entity.Item;
import main.java.entity.Order;
import main.java.entity.Stock;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

/**
 * Created by Julian on 14/11/2017.
 */
public class ProcessOrder extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("test");
        //TODO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, String> map = request.getParameterMap();

        int customer_id;
        HttpSession session = request.getSession(true);
        if (session.getAttribute("loginStatus") != "active"){
            customer_id = -10;
        } else {
            Customer customer = (Customer) session.getAttribute("customer");
            customer_id = customer.getCustomer_id();
        }

        ArrayList<Item> item_list = new ArrayList<>();
        //Each key represents an item
        for (String items : map.keySet()){

            //Initialise a new arraylist for the items ingredients
            ArrayList<Stock> ingredients = new ArrayList<>();
            String[] ingredients_strings = request.getParameterValues(items);
            //Each value represents an ingredient within that item
            for (int i = 0; i < ingredients_strings.length; i++) {
                int ingredient_id = Integer.parseInt(ingredients_strings[i]);
                Stock new_ingredient = new Stock(ingredient_id);
                ingredients.add(new_ingredient);
            }
            //After each ingredient has been processed, add the ingredients to an item
            Item item = new Item(ingredients);
            item_list.add(item);

        }

        //Create the order object forward to the
        Order order = new Order(customer_id, item_list);

        for (int j = 0; j < order.getItems().size(); j++) {

            Item item = order.getItems().get(j);

            System.out.println("    Item: " + item.getItem_type());

            for (int k = 0; k < item.getIngredients().size(); k++) {

                Stock ingredient = item.getIngredients().get(k);

                System.out.println("        Ingredient: " + ingredient.getIngredient_name() + " " + ingredient.getPrice());

            }
        }


        request.setAttribute("order_pending", order);
        RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/payment");
        rd.forward(request, response);

    }
}
