/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import model.Food;
import model.FoodDAO;
import model.User;
import model.UserDAO;

/**
 *
 * @author hello
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         String account = request.getParameter("account");
         String pass = request.getParameter("pass");
         
         UserDAO u = new UserDAO();
         User user = u.checkLogin(account, pass);
        
         if(user == null){
             request.setAttribute("message", "Account not exist or incorrect"+"<br>"+"Please, try again !!!!!!");
             request.getRequestDispatcher("login.jsp").forward(request, response);
         }else{
             HttpSession session = request.getSession();
             session.setAttribute("accLogged", user);
            
             response.sendRedirect("Greeting.jsp");
         }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        
//        String account = request.getParameter("account");
//        String pass = request.getParameter("pass");
//
//        //Xử lý
//        UserDAO u = new UserDAO();
//
//        boolean check = u.checkLogin(account, pass);
//        //Trả kết quả
//        if (check) {
//            //Lưu thông tin Login vào Session
//            HttpSession session = request.getSession();
//            session.setAttribute("userLogged", check);
//            //Hiển thị Hello + Name của account 
//            String name = u.getNameByAccount(account);
//
//            FoodDAO f = new FoodDAO();
//
//            ArrayList<Food> listF = new ArrayList<Food>();
//
//            listF = f.getListFood();
//
//            request.setAttribute("name", name);
//            request.setAttribute("listF", listF);
//
//            request.getRequestDispatcher("home.jsp").forward(request, response);
//
//        } else {
//            request.setAttribute("message", "Account not exist !!! Please try again");
//            request.setAttribute("account", account);
//            request.setAttribute("pass", pass);
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//
//        }

        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        String account = request.getParameter("account");
//        String name = request.getParameter("name");
//        UserDAO u = new UserDAO();
//        if (u.checkLogin(account, name)) {
//            //Tao pass moi-tuy theo y do cua coder
//            String newpass = "";
//            Random r = new Random();
//            newpass = r.nextInt(1000) + "";
//
//            //Update newpass vao db tuong ung voi account
//            u.updatePass(account, newpass);
//
//            //Tra new pass ve cho trang Reset
//            request.setAttribute("newpass", newpass);
//        }
//        request.setAttribute("account", account);
//        request.setAttribute("name", name);
//        request.getRequestDispatcher("resetPass.jsp").forward(request, response);

        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
