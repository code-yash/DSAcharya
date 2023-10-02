/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.dao;

import com.dsacharya.entities.Questions;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author yashs
 */
public class QuestionDao {

    Connection con;

    public QuestionDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Questions> getAllQuestions() {
        ArrayList<Questions> questionlist = new ArrayList<>();

        try {
            String q = "select * from questions";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int qid = set.getInt("qid");
                String qtopic = set.getString("qtopic");
                String qtitle = set.getString("qtitle");
                String qlink = set.getString("qlink");
                String qcat = set.getString("qcat");
                String qcomp = set.getString("qcompany");
                Questions c = new Questions(qid, qtopic, qtitle, qlink, qcat, qcomp);
                questionlist.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return questionlist;
    }

    public String getQTopic(int quesid) {
        String questiontopic = "";

        try {
            String query = "select * from questions where qid =" + quesid;
            PreparedStatement pstmt = con.prepareStatement(query);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                questiontopic = rs.getString("qtopic");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return questiontopic;
    }

    public String getQCompany(int quesid) {
        String questioncompany = "";

        try {
            String query = "select * from questions where qid =" + quesid;
            PreparedStatement pstmt = con.prepareStatement(query);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                questioncompany = rs.getString("qcompany");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return questioncompany;
    }

    public int getTotalQuestionsCountTopic(String topic) {
        int count = 0;

        try {
            String q = "select * from questions where qtopic = \"" + topic + "\"";
            PreparedStatement ps = this.con.prepareStatement(q);
            ResultSet rs = ps.executeQuery(q);

            while (rs.next()) {
                count++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }

    public int getTotalQuestionsCountCompany(String company) {
        int count = 0;

        try {
            String q = "select * from questions where qcompany = \"" + company + "\"";
            PreparedStatement ps = this.con.prepareStatement(q);
            ResultSet rs = ps.executeQuery(q);

            while (rs.next()) {
                count++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }
}
