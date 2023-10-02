package com.dsacharya.dao;

import com.dsacharya.entities.User;
import com.dsacharya.helper.ConnectionProvider;
import java.sql.*;
import java.util.ArrayList;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public UserDao() {
    }

    //method to insert user to database
    public boolean saveUser(User user) {
        boolean f = false;
        try {

            // user --> database
            String query = "insert into users(name, email, password) value(?,?,?)";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());

            ps.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    //get user by useremail and userpassword:
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from users where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("userid"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setDatetime(set.getTimestamp("rdate"));
                user.setProfile_pic(set.getString("profile_img"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    public boolean updateUser(User user) {

        boolean f = false;
        try {

            String query = "update users set name=? , email=? , password=? , profile_img=? where  userid =?";
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, user.getName());
            p.setString(2, user.getEmail());
            p.setString(3, user.getPassword());
            p.setString(4, user.getProfile_pic());
            p.setInt(5, user.getId());

            p.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public ArrayList<User> getUserRankwise() {
        ArrayList<User> userlist = new ArrayList<>();

        try {
            String q = "select * from users order by qdone DESC";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int userid = set.getInt("userid");
                String name = set.getString("name");
                int qdone = set.getInt("qdone");
                User u = new User(userid, name, qdone);
                userlist.add(u);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return userlist;
    }

    public void incQdone(int usid) {

        try {
            Connection con1 = ConnectionProvider.getConnection();
            int qd = 0;
            System.out.println("hi" + usid);
            String q1 = "SELECT * FROM USERS WHERE USERID = " + usid;
            PreparedStatement ps = con1.prepareStatement(q1);
            //ps.setInt(1, uid);
            ResultSet rs = ps.executeQuery(q1);
            if (rs.next()) {
                qd = rs.getInt("qdone");
                System.out.println("Inside if - " + qd);
            }
            qd = qd + 1;
            String q2 = "UPDATE USERS SET QDONE = ? WHERE USERID = ?";
            ps = con1.prepareStatement(q2);
            ps.setInt(1, qd);
            ps.setInt(2, usid);
            ps.executeUpdate();
            System.out.println("Update Done");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
