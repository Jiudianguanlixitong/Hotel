package com.domain;

public class Pre_Book {
    private int id;
    private String in_day;
    private String out_day;
    private String kind;
    private String request;
    private int price;

    public Pre_Book(int id, String in_day, String out_day, String kind, String request, int price) {
        this.id = id;
        this.in_day = in_day;
        this.out_day = out_day;
        this.kind = kind;
        this.request = request;
        this.price = price;
    }

    public Pre_Book(int id, String in_day, String out_day, String kind, int price) {
        this.id = id;
        this.in_day = in_day;
        this.out_day = out_day;
        this.kind = kind;
        this.price = price;
    }

    public Pre_Book() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIn_day() {
        return in_day;
    }

    public void setIn_day(String in_day) {
        this.in_day = in_day;
    }

    public String getOut_day() {
        return out_day;
    }

    public void setOut_day(String out_day) {
        this.out_day = out_day;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
