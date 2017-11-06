package main.java.entity;

import java.io.Serializable;

/**
 * Created by Julian on 5/11/2017.
 */

//Javabean to represent the Customer object - serializeable and therefore can be stored within a session
public class Customer implements Serializable {

    int customer_id;
    String username;
    String email;
    String phone_number;
    int iterations;
    String salt;
    String passHash;
    String passPin;
    String cardToken;

    // Constructor for Customer object with full suite of details as pulled from the database
    public Customer(int customer_id, String username, String email, String phone_number, int iterations, String salt, String passHash, String passPin, String cardToken) {
        this.customer_id = customer_id;
        this.username = username;
        this.email = email;
        this.phone_number = phone_number;
        this.iterations = iterations;
        this.salt = salt;
        this.passHash = passHash;
        this.passPin = passPin;
        this.cardToken = cardToken;
    }

    // Constructor for "prospective" customer with full suite of details (minus customer_id which will be assigned on registration
    public Customer(String username, String email, String phone_number, int iterations, String salt, String passHash, String passPin, String cardToken) {
        this.username = username;
        this.email = email;
        this.phone_number = phone_number;
        this.iterations = iterations;
        this.salt = salt;
        this.passHash = passHash;
        this.passPin = passPin;
        this.cardToken = cardToken;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public int getIterations() {
        return iterations;
    }

    public String getSalt() {
        return salt;
    }

    public String getPassHash() {
        return passHash;
    }

    public String getPassPin() {
        return passPin;
    }

    public String getCardToken() {
        return cardToken;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public void setIterations(int iterations) {
        this.iterations = iterations;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public void setPassHash(String passHash) {
        this.passHash = passHash;
    }

    public void setPassPin(String passPin) {
        this.passPin = passPin;
    }

    public void setCardToken(String cardToken) {
        this.cardToken = cardToken;
    }
}
