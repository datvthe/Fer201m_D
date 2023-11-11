/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hello
 */
public class Food {
    
    int fid ;
    String fname;    
    String fprice;
    int frate;
    String flocation;
    String ftitle;
    String freview_content;
    String fimage;

    public Food() {
    }

    public Food(int fid, String fname, String fprice, int frate, String flocation, String ftitle, String freview_content, String fimage) {
        this.fid = fid;
        this.fname = fname;
        this.fprice = fprice;
        this.frate = frate;
        this.flocation = flocation;
        this.ftitle = ftitle;
        this.freview_content = freview_content;
        this.fimage = fimage;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFprice() {
        return fprice;
    }

    public void setFprice(String fprice) {
        this.fprice = fprice;
    }

    public int getFrate() {
        return frate;
    }

    public void setFrate(int frate) {
        this.frate = frate;
    }

    public String getFlocation() {
        return flocation;
    }

    public void setFlocation(String flocation) {
        this.flocation = flocation;
    }

    public String getFtitle() {
        return ftitle;
    }

    public void setFtitle(String ftitle) {
        this.ftitle = ftitle;
    }

    public String getFreview_content() {
        return freview_content;
    }

    public void setFreview_content(String freview_content) {
        this.freview_content = freview_content;
    }

    public String getFimage() {
        return fimage;
    }

    public void setFimage(String fimage) {
        this.fimage = fimage;
    }

    
    
}
