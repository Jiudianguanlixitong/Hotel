package com.domain;

import java.util.Date;

public class Room_Info {
    private int room_id;
    private int floors;
    private String face;
    private String feature;
    private String kind;
    private Date in_day;
    private Date out_day;
    private String tidy;
    private String book_status;

    public Room_Info(int room_id, int floors, String face, String feature, String kind, Date in_day, Date out_day, String tidy, String book_status) {
        this.room_id = room_id;
        this.floors = floors;
        this.face = face;
        this.feature = feature;
        this.kind = kind;
        this.in_day = in_day;
        this.out_day = out_day;
        this.tidy = tidy;
        this.book_status = book_status;
    }

    public Room_Info(int room_id, int floors, String face, String feature, String kind) {
        this.room_id = room_id;
        this.floors = floors;
        this.face = face;
        this.feature = feature;
        this.kind = kind;
    }

    public Room_Info(int room_id, int floors, String face, String feature, String kind, String tidy, String book_status) {
        this.room_id = room_id;
        this.floors = floors;
        this.face = face;
        this.feature = feature;
        this.kind = kind;
        this.tidy = tidy;
        this.book_status = book_status;
    }

    public Room_Info() {
        super();
    }

    public int getRoom_id() {
        return room_id;
    }

    public void setRoom_id(int room_id) {
        this.room_id = room_id;
    }

    public int getFloors() {
        return floors;
    }

    public void setFloors(int floors) {
        this.floors = floors;
    }

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
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

    public String getTidy() {
        return tidy;
    }

    public void setTidy(String tidy) {
        this.tidy = tidy;
    }

    public String getBook_status() {
        return book_status;
    }

    public void setBook_status(String book_status) {
        this.book_status = book_status;
    }

}
