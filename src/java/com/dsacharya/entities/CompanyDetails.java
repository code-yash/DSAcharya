/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.entities;

/**
 *
 * @author yashs
 */
public class CompanyDetails {

    private int cid;
    private String cname;
    private String clogo;

    public CompanyDetails(int cid, String cname, String clogo) {
        this.cid = cid;
        this.cname = cname;
        this.clogo = clogo;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getClogo() {
        return clogo;
    }

    public void setClogo(String clogo) {
        this.clogo = clogo;
    }

}
