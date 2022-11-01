package dao.guest;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class LoginDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

        //=============Login DAO=============
    public  boolean checkLogin(String user,String email, String password){
        boolean isValid = false;
        String query = "select * from NGUOIDUNG where username = ? or email = ? and password = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2,email);
            ps.setString(3,password);
            rs = ps.executeQuery();
            if (rs.next()){
                isValid = true;
            } else {
                isValid = false;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return isValid;
    }


    public static void main(String[] args) {
        LoginDAO dao = new LoginDAO();
        User us = new User();
        System.out.println(dao.checkLogin("admin", null, "1"));

    }
}
