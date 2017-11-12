package main.java.entity;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import main.java.helpers.Stock_Information;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

/**
 * Created by Julian on 8/11/2017.
 */
public class Stock_API {

    static final String api_base_url = "http://project2-burgerx-database-api.herokuapp.com/ingredients/";

    Stock_API() {
    }

    //Get all stock
    public static ArrayList<Stock> getAllStockDetails() {

        String api_url = api_base_url + "all";

        ArrayList<Stock> allStock = new ArrayList<>();

        //Request the json resource at the specified url
        try {

            URL url = new URL(api_url);
            HttpURLConnection request = (HttpURLConnection) url.openConnection();
            request.connect();

            //Convert JSON object to access data
            JsonParser jp = new JsonParser(); //json parser from gson library
            JsonArray stock_array = jp.parse(new InputStreamReader((InputStream) request.getContent())).getAsJsonArray();

            for (int i = 0; i < stock_array.size(); i++) {
                JsonObject stock_object = stock_array.get(i).getAsJsonObject();
                int category_id = Integer.parseInt(stock_object.get("Category_ID").getAsString());
                //Currently includes nulls
//                String img_file_path = stock_object.get("Img_File_Name").getAsString();
                String ingredient_name = stock_object.get("Ingredient_Name").getAsString();
                double price = stock_object.get("Price").getAsDouble();
                int stock_id = Integer.parseInt(stock_object.get("Stock_ID").getAsString());
                String ingredient_category = Stock_Information.getItemCategory(stock_id);
                int stock_level = Integer.parseInt(stock_object.get("Stock_Level").getAsString());

                Stock newStock = new Stock(stock_id, ingredient_name, ingredient_category, stock_level, price, "");

                allStock.add(newStock);

            }

            return allStock;


        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    //Manual method tests JUL
    public static void main(String[] args) {
//        ArrayList<Stock> ingredients = Stock_API.getAllStockDetails();
//
//        for (int i = 0; i < ingredients.size(); i++) {
//            System.out.println(ingredients.get(i).getIngredient_name() + " " + ingredients.get(i).getPrice() + " " + ingredients.get(i).getStock_level());
//        }


    }

}
