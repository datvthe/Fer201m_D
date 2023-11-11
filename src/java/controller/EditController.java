/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;
import model.Food;
import model.FoodDAO;

/**
 *
 * @author hello
 */
public class EditController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        int fid = Integer.parseInt(request.getParameter("fid"));
        String mod = request.getParameter("mod");
        FoodDAO f = new FoodDAO();

        if (mod.equals("0")) {
            Food food = f.find(fid);
            
            request.setAttribute("food", food);
            
            request.getRequestDispatcher("edit.jsp").forward(request, response);
        } else {
            f.deletebyId(fid);

            String name = f.getFoodById(fid);
            ArrayList<Food> listF = new ArrayList<Food>();
            listF = f.getListFood();
            request.setAttribute("name", name);
            request.setAttribute("listF", listF);
            request.setAttribute("mess", "Delete sucessfull !!!");
            request.getRequestDispatcher("list.jsp").forward(request, response);
        }
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

        Food food = new Food();
        food.setFid(Integer.parseInt(request.getParameter("fid")));
        food.setFname(request.getParameter("fname"));
        food.setFprice(request.getParameter("fprice"));
        food.setFrate(Integer.parseInt(request.getParameter("frate")));
        food.setFlocation(request.getParameter("flocation"));
        food.setFtitle(request.getParameter("ftitle"));
        food.setFreview_content(request.getParameter("fcomment"));
        food.setFimage(request.getParameter("fimage"));

        FoodDAO f = new FoodDAO();

        f.updateAll(food);
        ArrayList<Food> listF = new ArrayList<Food>();
        listF = f.getListFood();
        request.setAttribute("food", food);
        request.setAttribute("mess", "Edit sucessfull !!!");
        request.setAttribute("listF", listF);
        request.getRequestDispatcher("edit.jsp").forward(request, response);
        
        
     

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
