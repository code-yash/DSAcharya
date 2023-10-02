/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dsacharya.dao;

import com.dsacharya.entities.MQ;
import com.dsacharya.entities.MarkedQues;
import com.dsacharya.entities.Questions;
import com.dsacharya.entities.User;
import com.dsacharya.helper.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author yashs
 */
public class MarkDao {

    Connection con;

    public MarkDao(Connection con) {
        this.con = con;
    }

    public void markQues(MarkedQues mques) {
        //boolean f = false;
        try {

            // fetching questions done count and updating --> database
            String query = "insert into markedques(qid, uid) values(?,?)";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setInt(1, mques.getQid());
            ps.setInt(2, mques.getUid());

            ps.executeUpdate();

            UserDao udao = new UserDao();
            udao.incQdone(mques.getUid());

            //f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        // return f;
    }

    public void unmarkQues(MarkedQues mques) {
        //boolean f = false;
        try {

            // storing in --> database
            String query = "delete from markedques where qid = ? and uid= ?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setInt(1, mques.getQid());
            ps.setInt(2, mques.getUid());

            ps.executeUpdate();
            //f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        // return f;
    }

    public boolean checkMarked(int qid, int uid) {
        boolean f = false;
        try {

            String query = "select * from markedques where qid = ? and uid= ?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setInt(1, qid);
            ps.setInt(2, uid);
//            System.out.print(f);
//            System.out.print(qid);
//            System.out.print(uid);
            ResultSet rs = ps.executeQuery();
            boolean status = rs.next();
            System.out.println(status);
            if (status) {
                f = true;
                System.out.print(f);
                return f;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public ArrayList<MQ> getMarkedQuestions() {
        ArrayList<MQ> questionlist = new ArrayList<>();

        try {
            String q = "select * from markedques";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int qid = set.getInt("qid");
                int uid = set.getInt("uid");
                MQ c = new MQ(qid, uid);
                questionlist.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return questionlist;
    }

    public int getMarkedQuestionsCount(int uid) {
        int count = 0;

        try {
            String q = "select * from markedques where uid =" + uid;
            PreparedStatement ps = this.con.prepareStatement(q);

            // ps.setInt(1, uid);
            System.out.println("uid = " + uid);
            ResultSet rs = ps.executeQuery(q);

            while (rs.next()) {
                count++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }

    public int getMarkedQuestionsCountCompany(int uid, String company) {
        int count = 0;

        try {
            String q = "select * from markedques as mq, questions as q where mq.uid =" + uid + " and mq.qid = q.qid and q.qcompany = \"" + company + "\"";
            PreparedStatement ps = this.con.prepareStatement(q);

            // ps.setInt(1, uid);
            //System.out.println("uid = " + uid);
            ResultSet rs = ps.executeQuery(q);

            while (rs.next()) {
                count++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }

    public int getMarkedQuestionsCountTopic(int uid, String topic) {
        int count = 0;

        try {
            String q = "select * from markedques as mq, questions as q where mq.uid =" + uid + " and mq.qid = q.qid and q.qtopic = \"" + topic + "\"";
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
