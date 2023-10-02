/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.dao;

import com.dsacharya.entities.Video;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author yashs
 */
public class VideoDao {

    private Connection con;

    public VideoDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Video> getAllVideos() {
        ArrayList<Video> videolist = new ArrayList<>();

        try {
            String q = "select * from videolecture";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int vid = set.getInt("vid");
                String vimg = set.getString("vimg");
                String vtitle = set.getString("vtitle");
                String vdesc = set.getString("vdesc");
                String vlink = set.getString("vlink");
                Video v = new Video(vid, vimg, vtitle, vdesc, vlink);
                videolist.add(v);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return videolist;
    }
}
