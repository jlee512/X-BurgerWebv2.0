package main.java.entity;

/**
 * Created by Julian on 7/11/2017.
 */
public class Order_API {

    static final String api_base_url = "http://project2-burgerx-database-api.herokuapp.com/order/";

    Order_API(){
    }

    // Get full order details from the API (by user_id or staff_id)
    public static Order getOrderDetailsAPI(int actor_id, String actor) {
        String api_url = api_base_url + actor + "/" + actor_id;

        try {

        }

    }
}
