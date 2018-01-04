package com.domain;

public class Room_Type {
    private String kind;
    private int price;
    private int free;

    public Room_Type() {

    }


    public Room_Type(String kind, int price, int free) {
        this.kind = kind;
        this.price = price;
        this.free = free;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getFree() {
        return free;
    }

    public void setFree(int free) {
        this.free = free;
    }
}
