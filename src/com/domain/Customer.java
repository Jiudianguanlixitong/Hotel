package com.domain;

public class Customer {
    private String username;
    private String pass;
    private int id;
    private String name;
    private String gender;

    public Customer(String username, String pass, int id, String name, String gender) {
        this.username = username;
        this.pass = pass;
        this.id = id;
        this.name = name;
        this.gender = gender;
    }

    public Customer() {
        super();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() { return name; }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
