package com.domain;

import java.util.Date;

public class Pre_Book {
    private int id;
    private Date in_day;
    private Date out_day;
    private String kind;
    private String request;
    private int price;

    public Pre_Book(int id, Date in_day, Date out_day, String kind, String request, int price) {
        this.id = id;
        this.in_day = in_day;
        this.out_day = out_day;
        this.kind = kind;
        this.request = request;
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

    public Date getIn_day() {
        return in_day;
    }

    public void setIn_day(Date in_day) {
        this.in_day = in_day;
    }

    public Date getOut_day() {
        return out_day;
    }

    public void setOut_day(Date out_day) {
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
