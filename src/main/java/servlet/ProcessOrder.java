package main.java.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

        for (String key : map.keySet()){
            System.out.println(key);
            String[] values = request.getParameterValues(key);
            for (int i = 0; i < values.length; i++) {
                System.out.println(values[i]);
            }
        }
    }
}
