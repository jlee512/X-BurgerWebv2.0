package main.java.helpers;

import java.util.HashMap;

/**
 * Created by Julian on 8/11/2017.
 */
public class Status_Information {

    public static final HashMap<Integer, String> status = new HashMap<>();

    static {
        status.put(0, "Initialised");
        status.put(1, "Making");
        status.put(2, "Completed");
        status.put(3, "Insufficient Ingredients");
    }

    public static String getStatus(int order_status){
        return status.get(order_status);
    }

}
