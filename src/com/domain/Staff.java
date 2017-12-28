package com.domain;

public class Staff {
    private String username;
    private String pass;
    private String position;

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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Staff(String username, String pass, String position) {
        this.username = username;
        this.pass = pass;
        this.position = position;
    }

    public Staff() {
        super();
    }
}
