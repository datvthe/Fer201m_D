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

/**
 *
 * @author hello
 */
public class FoodDAO extends DBContext {

    Connection cnn; //Kết nối
    PreparedStatement stm;//Thực hiện các câu lệnh SQL
    ResultSet rs; //Lưu trữ và xử lý dữ liệu

    public FoodDAO() {
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

    public ArrayList<Food> getListFood() {
        ArrayList<Food> listF = new ArrayList<Food>();
        try {
            String strSelect = "select * from food ";
            stm = cnn.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Food f = new Food();
                f.fid = rs.getInt(1);
                f.fname = rs.getString(2);
                f.fprice = rs.getString(3);
                f.frate = rs.getInt(4);
                f.flocation = rs.getString(5);
                f.ftitle = rs.getString(6);
                f.freview_content = rs.getString(7);
                f.fimage = rs.getString(8);

                listF.add(f);
            }
        } catch (SQLException e) {
            System.out.println("getListFood fail:" + e.getMessage());
        }
        return listF;
    }

    public Food find(int fid) {
        try {
            String strSelect = "select * from Food where fid=?";
            stm = cnn.prepareStatement(strSelect);
            stm.setInt(1, fid);
            rs = stm.executeQuery();
            while (rs.next()) {
                Food f = new Food();
                f.fid = rs.getInt(1);
                f.fname = rs.getString(2);
                f.fprice = rs.getString(3);
                f.frate = rs.getInt(4);
                f.flocation = rs.getString(5);
                f.ftitle = rs.getString(6);
                f.freview_content = rs.getString(7);
                f.fimage = rs.getString(8);

                return f;
            }
        } catch (SQLException e) {
            System.out.println("findFood fail:" + e.getMessage());
        }
        return null;
    }

    public void deletebyId(int fid) {
        try {
            String strupdate = "delete from food "
                    + "where fid=?";
            stm = cnn.prepareStatement(strupdate);
            stm.setInt(1, fid);
            stm.execute();

        } catch (SQLException e) {
            System.out.println("delete fail:" + e.getMessage());
        }
    }

    public String getFoodById(int fid) {
        try {
            String strSelect = "select * from food  where fid = ?";
            stm = cnn.prepareStatement(strSelect);
            stm.setInt(1, fid);

            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getString(2);

            }
        } catch (SQLException e) {
            System.out.println("getFoodById fail:" + e.getMessage());
        }
        return "";
    }

    public void addFood(String fname, String fprice, int frate, String flocation, String ftitle, String fcomment, String fimage) {
        try {
            String strInsert = "Insert Into food([name],[price],[rate],[location],[title],[rvContent],[image]) values (?,?,?,?,?,?,?)";
            stm = cnn.prepareStatement(strInsert);
            stm.setString(1, fname);
            stm.setString(2, fprice);
            stm.setInt(3, frate);
            stm.setString(4, flocation);
            stm.setString(5, ftitle);
            stm.setString(6, fcomment);
            stm.setString(7, fimage);
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("addFood fail:" + e.getMessage());
        }
    }

    public void updateAll(Food food) {
        try {
            String strupdate = "update Food set [name]=?,price=?,rate=?,[location] =?,title=?,rvContent=?,[image]=? where fid=?";
            stm = cnn.prepareStatement(strupdate);

            stm.setString(1, food.getFname());
            stm.setString(2, food.getFprice());
            stm.setInt(3, food.getFrate());
            stm.setString(4, food.getFlocation());
            stm.setString(5, food.getFtitle());
            stm.setString(6, food.getFreview_content());
            stm.setString(7, food.getFimage());
            stm.setInt(8, food.getFid());
            stm.executeUpdate();

        } catch (Exception e) {
            System.out.println("updateAll fail:" + e.getMessage());
        }
    }

    public ArrayList<Food> searchByName(String name) {
        ArrayList<Food> list = new ArrayList<Food>();
        try {
            String strSelect = "select * from Food where name like ? ";
            stm = cnn.prepareStatement(strSelect);
            stm.setString(1, "%" + name + "%");
            rs = stm.executeQuery();
            while (rs.next()) {
                Food s = new Food();
                s.fid= rs.getInt(1);
                s.fname = rs.getString(2);
                s.fprice = rs.getString(3);
                s.frate = rs.getInt(4);
                s.flocation = rs.getString(5);
                s.ftitle = rs.getString(6);
                s.freview_content = rs.getString(7);
                s.fimage = rs.getString(8);

                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println("search fail:" + e.getMessage());
        }
        return list;
    }

}
