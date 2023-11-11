/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hello
 */
public class UserDAO extends DBContext {

    //Khai báo các thành phần xử lý DB
    Connection cnn; //Kết nối
    PreparedStatement stm;//Thực hiện các câu lệnh SQL
    ResultSet rs; //Lưu trữ và xử lý dữ liệu

    public UserDAO() {
        connect();
    }

    private void connect() {
        try {
            cnn = super.connection;
            System.out.println("Connect success");
        } catch (Exception e) {
            System.out.println("Connect fail:" + e.getMessage());
        }
    }

    public User checkLogin(String account, String pass) {
        try {
            String strSelect = "SELECT * FROM Users WHERE username=? and password=?";
            stm = cnn.prepareStatement(strSelect);
            stm.setString(1, account);
            stm.setString(2, pass);

            rs = stm.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(2), rs.getString(3));
            }
        } catch (SQLException e) {
            System.out.println("checkUser fail:" + e.getMessage());
        }
        return null;

    }

    public void updatePass(String account, String newpass) {
        try {
            String strupdate = "update Users set password=? "
                    + "where username=?";
            stm = cnn.prepareStatement(strupdate);
            stm.setString(1, newpass);
            stm.setString(2, account);
            stm.execute();

        } catch (SQLException e) {
            System.out.println("updatePass fail:" + e.getMessage());
        }
    }

    public boolean checkAccount(String account) {
        try {
            String strSelect = "select * from Users "
                    + "where username=? ";
            stm = cnn.prepareStatement(strSelect);

            stm.setString(1, account);
            rs = stm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("checkAccount fail:" + e.getMessage());
        }
        return false;
    }

    public ArrayList<User> getList() {
        ArrayList<User> list = new ArrayList<User>();
        try {
            String strSelect = "select * from Users";
            stm = cnn.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {

                User u = new User();
                u.id = rs.getInt(1);
                u.username = rs.getString(2);
                u.password = rs.getString(3);
                u.name = rs.getString(4);

                list.add(u);
            }
        } catch (NumberFormatException | SQLException e) {
            System.out.println("getList fail:" + e.getMessage());
        }
        return list;
    }

    public String getIdByAcccount(String account) {
        try {
            String strSelect = "select id from Users where username = ?";
            stm = cnn.prepareStatement(strSelect);
            stm.setString(1, account);

            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getString(2);

            }
        } catch (SQLException e) {
            System.out.println("getFoodById fail:" + e.getMessage());
        }
        return "";
    }

    public void insertAccount(String username, String password, String name) {
        try {
            String strInsert = "Insert into Users(username,password,name) values (?,?,?)";
            stm = cnn.prepareStatement(strInsert);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, name);

//            stm.setString(7, image);
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("insert Acc fail:" + e.getMessage());
        }
    }

    public User getUser() {
        try {
            String strSelect = "SELECT name FROM Users WHERE username=? and password=?";
            stm = cnn.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (SQLException e) {
            System.out.println("checkUser fail:" + e.getMessage());
        }
        return null;
    }

    public boolean checkAccountExits(String account, String name) {
        try {
            String strSelect = "select * from Users "
                    + "where username=? and name=?";
            stm = cnn.prepareStatement(strSelect);
            stm.setString(1, account);
            stm.setString(2, name);
            rs = stm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("checkLogin fail:" + e.getMessage());
        }
        return false;
    }

    

}
