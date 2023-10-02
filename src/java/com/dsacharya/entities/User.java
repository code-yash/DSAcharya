package com.dsacharya.entities;

import java.sql.*;

public class User {

    private int id;
    private String name;
    private String email;
    private String password;
    private Timestamp datetime;
    private String profile_pic;
    private int qdone;

    public User(int id, String name, String email, String password, Timestamp datetime) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.datetime = datetime;
    }

    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public User(int id, String name, int qdone) {
        this.id = id;
        this.name = name;
        this.qdone = qdone;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Timestamp getDatetime() {
        return datetime;
    }

    public void setDatetime(Timestamp datetime) {
        this.datetime = datetime;
    }

    public String getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(String profile_pic) {
        this.profile_pic = profile_pic;
    }

    public int getQdone() {
        return qdone;
    }

    public void setQdone(int qdone) {
        this.qdone = qdone;
    }

}
