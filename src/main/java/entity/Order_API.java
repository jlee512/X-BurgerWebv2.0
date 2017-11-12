package main.java.entity;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import io.swagger.models.auth.In;
import io.swagger.util.Json;
import main.java.helpers.Status_Information;
import main.java.helpers.Stock_Information;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * Created by Julian on 7/11/2017.
 */
public class Order_API {

    static final String api_base_url = "http://project2-burgerx-database-api.herokuapp.com/order/";

    Order_API(){
    }

    // Get full order details from the API (by user_id or staff_id)
    //Tested
    public static Order getOrderDetailsByOrderIDCustomerAPI(int order_id) {
        String api_url = api_base_url + order_id;

        try {
            //Request the json resource at the specified url
            URL url = new URL(api_url);
            HttpURLConnection request = (HttpURLConnection) url.openConnection();

            //Convert the JSON object to access data
            JsonParser jp = new JsonParser(); //json parser from gson library
            JsonObject order_json = jp.parse(new InputStreamReader((InputStream)request.getContent())).getAsJsonObject();

            //Get item details and pass into ingredient objects
            JsonObject item_details = null;
            try {
                item_details = order_json.get("item_details_list").getAsJsonObject();
            } catch (IllegalStateException e) {
                //Catch case where order does not exist
                System.out.println("Order does not exist");
                return null;
            }

            //Get order metadata and parse elements into an order object
            JsonObject order_meta = order_json.get("order_details_list").getAsJsonObject();
            //Process order_meta
            int order_id_received = order_meta.get("Order_ID").getAsInt();
            Staff staff = null;
            int customer_id = order_meta.get("Customer_ID").getAsInt();
            Customer customer = new Customer(customer_id, null, null, null, -1, null, null, null, null);
            String datetimeString = order_meta.get("DateTime").getAsString();
            int order_status_num = order_meta.get("Status").getAsInt();
            String order_status = Status_Information.getStatus(order_status_num);


            //Get items and ingredients
            ArrayList<Item> items = new ArrayList<>();
            //For each item, process the ingredients
            for(Map.Entry<String, JsonElement> entry : item_details.entrySet()) {

                int item_id = Integer.parseInt(entry.getKey());
                //Initialise item ingredients array as a new array
                ArrayList<Stock> ingredients = new ArrayList<>();

                String item_type = "";

                JsonArray ingredient_array = entry.getValue().getAsJsonArray();

                for (int i = 0; i < ingredient_array.size(); i++) {

                    int stock_id = Integer.parseInt(ingredient_array.get(i).toString());

                    //Check the first ingredients to confirm the item type
                    if (i == 0) {
                        item_type = Stock_Information.getItemType(stock_id);
                    }

                    String stock_name = Stock_Information.getIngredientName(stock_id);
                    String category = Stock_Information.getItemCategory(stock_id);
                    double price = Stock_Information.getIngredientPrice(stock_id);
                    Stock ingredient = new Stock(stock_id, stock_name, category, -1, price, "");

                    ingredients.add(ingredient);
                }

                Item new_item = new Item(item_id, order_id, ingredients, item_type);
                items.add(new_item);
            }

            Order order = new Order(order_id_received, staff, customer, datetimeString, order_status, items);

            return order;

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    //TODO
    //Method for getting an orderlist by customer id
    public static ArrayList<Order> getOrdersByCustomerID(int customer_id) {
        return null;
    }

    //TODO
    //Method for getting an orderlist by staff id
    public static ArrayList<Order> getOrdersByStaffID (int staff_id) {
        return null;
    }

    //Method for adding orders - tested and functional
    public static boolean addOrder(Order order, int customer_id) {

        JsonObject order_json_object = order.createOrderJson();

        String url_string = api_base_url + "add/" + customer_id;
        System.out.println(url_string);

        try {

            URL url = new URL(url_string);
            HttpURLConnection request = (HttpURLConnection) url.openConnection();

            request.setDoOutput(true);
            request.setDoInput(true);

            request.setRequestProperty("Content-Type", "application/json");
            request.setRequestProperty("Accept", "application/json");
            request.setRequestMethod("POST");

            OutputStreamWriter out = new OutputStreamWriter(request.getOutputStream());
            out.write(order_json_object.toString());
            out.flush();

            StringBuilder sb = new StringBuilder();
            int HttpResult = request.getResponseCode();
            if (HttpResult == HttpURLConnection.HTTP_OK) {
                BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
                String line = null;
                while ((line = br.readLine()) != null) {
                    sb.append(line + "\n");
                }
                br.close();
                System.out.println("" + sb.toString());
                return true;
            } else {
                System.out.println(request.getResponseMessage());
                return false;
            }

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }

    //Method for assigning staff to orders

    //Test method developed for the getOrderDetails methods
    public static void main(String[] args) {
        Order order = Order_API.getOrderDetailsByOrderIDCustomerAPI(21);
//
//        System.out.println("Order " + order.getOrder_id() + " received");
//        System.out.println("Order Price " + order.getPrice());
//
//        ArrayList<Item> items = order.getItems();
//
//        for (Item item : items) {
//            System.out.println("Item: " + item.getItem_type());
//            ArrayList<Stock> ingredients = item.getIngredients();
//
//            for (Stock ingredient : ingredients) {
//                System.out.println("    " + ingredient.getCategory() + " -> " + ingredient.getIngredient_name());
//            }
//        }

        Order_API.addOrder(order, 21);
    }
}
