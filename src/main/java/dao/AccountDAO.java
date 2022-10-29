package dao;

import context.DBContext;
import model.Account;
import model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AccountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    Customer cs = new Customer();
    public List<Account> getAccountList() {
        List<Account> list = new ArrayList<>();
        String query = "SELECT * from Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }

        return list;
    }

//    public Customer getCustomerByUsername(String username) {
//        String query = "SELECT * from Customer where Customer = ?";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, username);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Customer(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }

    public void deleteStudent(String id) {
        String query = "delete from STUDENT\n"
                + "where StudentID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addStudent(String name, int classID, int age, String image) {
        String query = "INSERT INTO STUDENT\n"
                + "VALUES (?, ?, ?,?);";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, classID);
            ps.setInt(3, age);
            ps.setString(4, image);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateStudent(int id, String name, int classID, int age, String image) {
        String query = "update Student set "
                + "StudentName=?, "
                + "Age=?, "
                + "ClassID=?,"
                + "Image=? "
                + "where StudentID=? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setInt(3, classID);
            ps.setString(4, image);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
