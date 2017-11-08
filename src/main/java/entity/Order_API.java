package main.java.entity;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import io.swagger.util.Json;
import main.java.helpers.Status_Information;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
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
            JsonObject item_details = order_json.get("item_details_list").getAsJsonObject();

            //For each item, process the ingredients
            for(Map.Entry<String, JsonElement> entry : item_details.entrySet()) {
                System.out.println(entry.getKey());
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

            System.out.println(item_details.toString());

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


    //Test method developed for the getOrderDetails methods
    public static void main(String[] args) {
        Order_API.getOrderDetailsByOrderIDCustomerAPI(1);
    }
}
