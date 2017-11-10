package main.java.entity;

import com.google.api.client.util.DateTime;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * Created by Julian on 7/11/2017.
 */
//Javabean to represent the Order object - serializeable and therefore can be stored within a session
public class Order implements Serializable {

    int order_id;
    Staff staff;
    Customer customer;
    String order_datetime;
    String status;
    ArrayList<Item> items;
    double price;

    public Order(int order_id, Staff staff, Customer customer, String order_datetime, String status, ArrayList<Item> items) {
        this.order_id = order_id;
        this.staff = staff;
        this.customer = customer;
        this.order_datetime = order_datetime;
        this.status = status;
        this.items = items;
    }

    public int getOrder_id() {
        return order_id;
    }

    public Staff getStaff() {
        return staff;
    }

    public Customer getCustomer() {
        return customer;
    }

    public String getOrder_datetime() {
        return order_datetime;
    }

    public String getStatus() {
        return status;
    }

    public double getPrice() {

        double price = 0.0;

        for (Item item : items) {

            for (Stock ingredient : item.getIngredients()) {

                price += ingredient.getPrice();

            }

        }

        return price;
    }

    public ArrayList<Item> getItems() {
        return items;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public void setOrder_datetime(String order_datetime) {
        this.order_datetime = order_datetime;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setItems(ArrayList<Item> items) {
        this.items = items;
    }
}
