package com.domain;

import java.util.Date;

public class Bill {
    private int id;
    private Date in_day;
    private Date out_day;
    private int room_id;
    private String kind;
    private String request;
    private int price;

    public Bill(int id, Date in_day, Date out_day, int room_id, String kind, String request, int price) {
        this.id = id;
        this.in_day = in_day;
        this.out_day = out_day;
        this.room_id = room_id;
        this.kind = kind;
        this.request = request;
        this.price = price;
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

    public int getRoom_id() {
        return room_id;
    }

    public void setRoom_id(int room_id) {
        this.room_id = room_id;
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
