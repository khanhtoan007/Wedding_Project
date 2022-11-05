package dao.admin;

import context.DBContext;
import model.Product;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ServicesDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //=============ADMIN DAO=============
    public List<Product> getProductList() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8)
                        ));
            }
        } catch (Exception e) {
        }
        return list;
    }       //done

    public Product getProductByID(String id) {
        Product product = new Product() ;
        String query = "SELECT * from PRODUCT where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                product = new Product(
                        rs.getString(2),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8));
            }
        } catch (Exception e) {
        }
        return product;
    }       //done

    public void deleteProduct(int id) {
        String query = "delete from PRODUCT\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }       //done


    public boolean addProduct(String productName, int quantity, int price, String category, String description, String image, boolean status) {
        String query = "INSERT INTO PRODUCT VALUES (? ,?,? ,? ,? ,? ,? );";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setInt(2, quantity);
            ps.setInt(3, price);
            ps.setString(4, category);
            ps.setString(5, description);
            ps.setString(6, image);
            ps.setBoolean(7,true);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;
    }


    public void updateProduct(String id, String productName, int quantity, int price, String category, String description, String image, boolean status) {
        String query = "update PRODUCT set Product_Name = ?," +
                " quantity = ?, " +
                "price = ? ," +
                "category = ?," +
                "descrtiption = ?," +
                "image = ?," +
                "status = ?"+
                "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setInt(2, quantity);
            ps.setInt(2, price);
            ps.setString(2, category);
            ps.setString(2, description);
            ps.setString(2, image);
            ps.setBoolean(2, status);
            ps.setString(3,id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


    public ArrayList<Product> searchProduct(String productName){
        String query = "select * from PRODUCT where Product_name like ?";
        ArrayList<Product> result = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + productName + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                result.add(new Product(
                        rs.getString(2),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8))
                );
            }
        } catch (Exception e) {
        }
        return result;
    }


    public boolean checkProductName(String productname){
        String query = "select * from NGUOIDUNG where Product_name = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productname);
            rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    } //neu co ten trong db thi tra ve false



    public boolean checkStatus(String id){
        String query = "select quantity from Product where ProductID = ?";
        Product product = new Product();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()){
                if (product.getQuantity() > 0)
                    return true;
            }
        } catch (Exception e) {
        }

        return false;
    }


    public static void main(String[] args) {
        ServicesDAO dao = new ServicesDAO();
        System.out.println(dao.checkStatus("1"));
    }
}
