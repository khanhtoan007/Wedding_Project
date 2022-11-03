package dao.admin;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AccountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

        //=============ADMIN DAO=============
    public List<User> getAccountList() {
        List<User> list = new ArrayList<>();
        String query = "SELECT * from NGUOIDUNG";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public User getCustomerByUsername(String username) {
        User user = new User() ;
        String query = "SELECT * from NGUOIDUNG where username = ?";
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                System.out.println(rs.getString(1));
                System.out.println(rs.getString(3));
                System.out.println(rs.getString(8));
                System.out.println(rs.getString(5));
                System.out.println(rs.getString(6));

                user = new User(
                        rs.getString(1),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
    return user;
    }

    public void deleteUser(String user) {
        String query = "delete from NGUOIDUNG\n"
                + "where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addUser(String userName, String password, String fullName, String role) {
        String query = "INSERT INTO NGUOIDUNG\n"
                + "VALUES (?, ?, ?,?,?,?,?,?);";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, fullName);
            ps.setString(6, role);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateUser(String userName,String fullName, String role) {
        String query = "update NGUOIDUNG set Fullname = ?," +
                "set Role = ? " +
                "where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, role);
            ps.setString(3,userName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }



    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        User us = new User();
//        List<User> list = dao.getCustomerByUsername("admin");
        System.out.println(dao.getCustomerByUsername("admin"));
        User b = new User("MinhNghien", "abc","1232132", "Admin");
        System.out.println(b);
//        for (User o : list) {
//            System.out.println(o);
//        }
    }
}
