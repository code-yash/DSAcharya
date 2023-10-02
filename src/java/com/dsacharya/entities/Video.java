/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.entities;

/**
 *
 * @author yashs
 */
public class Video {

    private int vid;
    private String vimg;
    private String vtitle;
    private String vdesc;
    private String vlink;

    public Video(int vid, String vimg, String vtitle, String vdesc, String vlink) {
        this.vid = vid;
        this.vimg = vimg;
        this.vtitle = vtitle;
        this.vdesc = vdesc;
        this.vlink = vlink;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public String getVimg() {
        return vimg;
    }

    public void setVimg(String vimg) {
        this.vimg = vimg;
    }

    public String getVtitle() {
        return vtitle;
    }

    public void setVtitle(String vtitle) {
        this.vtitle = vtitle;
    }

    public String getVdesc() {
        return vdesc;
    }

    public void setVdesc(String vdesc) {
        this.vdesc = vdesc;
    }

    public String getVlink() {
        return vlink;
    }

    public void setVlink(String vlink) {
        this.vlink = vlink;
    }

}
