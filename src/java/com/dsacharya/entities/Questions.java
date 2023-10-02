/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.entities;

/**
 *
 * @author yashs
 */
public class Questions {

    private int qid;
    private String qtopic;
    private String qtitle;
    private String qlink;
    private String qcat;
    private String qcompany;

    public Questions() {
    }

    public Questions(int qid, String qtopic, String qtitle, String qlink, String qcat, String qcompany) {
        this.qid = qid;
        this.qtopic = qtopic;
        this.qtitle = qtitle;
        this.qlink = qlink;
        this.qcat = qcat;
        this.qcompany = qcompany;
    }

    public Questions(String qtopic, String qtitle, String qlink, String qcat, String qcompany) {
        this.qtopic = qtopic;
        this.qtitle = qtitle;
        this.qlink = qlink;
        this.qcat = qcat;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public String getQtopic() {
        return qtopic;
    }

    public void setQtopic(String qtopic) {
        this.qtopic = qtopic;
    }

    public String getQtitle() {
        return qtitle;
    }

    public void setQtitle(String qtitle) {
        this.qtitle = qtitle;
    }

    public String getQlink() {
        return qlink;
    }

    public void setQlink(String qlink) {
        this.qlink = qlink;
    }

    public String getQcat() {
        return qcat;
    }

    public void setQcat(String qcat) {
        this.qcat = qcat;
    }

    public String getQcompany() {
        if (qcompany == null) {
            return "no-company";
        }
        return qcompany;
    }

    public void setQcompany(String qcompany) {
        this.qcompany = qcompany;
    }

}
