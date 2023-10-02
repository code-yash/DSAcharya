/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author yashs
 */
public class CompanyDao {

    Connection con;

    public CompanyDao(Connection con) {
        this.con = con;
    }

    public String getCdetails(String cname) {
        String clogo = "";

        try {
            String query = "select * from company where cname = \"" + cname + "\"";
            PreparedStatement pstmt = con.prepareStatement(query);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                clogo = rs.getString("clogo");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return clogo;
    }

}
