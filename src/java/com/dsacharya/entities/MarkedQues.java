/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.entities;

/**
 *
 * @author yashs
 */
public class MarkedQues {

    private int mid;
    private int qid;
    private int uid;

    public MarkedQues() {
    }

    public MarkedQues(int mid, int qid, int uid) {
        this.mid = mid;
        this.qid = qid;
        this.uid = uid;
    }

    public MarkedQues(int qid, int uid) {
        this.qid = qid;
        this.uid = uid;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

}
