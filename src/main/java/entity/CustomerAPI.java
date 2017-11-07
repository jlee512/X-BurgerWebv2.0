package main.java.entity;

import com.google.gson.*;
import main.java.password.Passwords;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by Julian on 7/11/2017.
 */
public class CustomerAPI {

    static final String api_base_url = "http://project2-burgerx-database-api.herokuapp.com/customer/";

    CustomerAPI(){
    }

    // Get customer details by username from the API (by username or email)
    public static Customer getCustomerDetailsAPI (String customer_detail, String method) {
        String api_url = api_base_url + method + "/" + customer_detail;

        try {
            //Request the json resource at the specified url
            URL url = new URL(api_url);
            HttpURLConnection request = (HttpURLConnection) url.openConnection();
            request.connect();

            //Convert JSON object to access data
            JsonParser jp = new JsonParser(); //json parser from gson library
            JsonElement root = jp.parse(new InputStreamReader((InputStream)request.getContent()));
            JsonObject customer_object = root.getAsJsonObject();
            Gson gson = new GsonBuilder().serializeNulls().create();


            //Extract customer data from JSON
            int customer_id = customer_object.get("Customer_ID").getAsInt();
            String username = customer_object.get("Username").getAsString();
            String email = customer_object.get("Email").getAsString();
            String phone_number =  customer_object.get("Phone_Number").getAsString();
            int iterations = customer_object.get("Iterations").getAsInt();
            String salt = customer_object.get("Salt").getAsString();
            String passHash = customer_object.get("PassHash").getAsString();
            String passPin = customer_object.get("PassPin").getAsString();
            String cardToken = customer_object.get("Card_Token").getAsString();

            return new Customer(customer_id, username, email, phone_number, iterations, salt, passHash, passPin, cardToken);

        } catch (MalformedURLException e) {
            //Not expected to be realised based on api_base_url setup
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static boolean validateCustomerPassword(String password_entry, String hashDB, String saltDB, int iterationsDB) {

        //Use Passwords class to compare password_entry with hash from the database
        byte[] salt_bytes = Passwords.base64Decode(saltDB);
        byte[] hash_bytes = Passwords.base64Decode(hashDB);

        boolean password_validation = Passwords.isExpectedPassword(password_entry.toCharArray(), salt_bytes, iterationsDB, hash_bytes);

        return password_validation;
    }


}
