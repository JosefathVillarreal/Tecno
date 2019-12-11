/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Josefath
 */
public class modificaProducto extends HttpServlet {

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
        
        RequestDispatcher rD = null;
        String strId = null;
        try{
            strId = (String)request.getParameter("id");
        }catch(Exception e)
        {
           // System.out.println("com.papw.controllers.SelectUser.doGet() " + e.getMessage());
        }
        //int id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String precio = request.getParameter("precio");
        String unidades = request.getParameter("unidades");
        String rutaimagen1 = request.getParameter("rutaimagen1");
        String rutaimagen2 = request.getParameter("rutaimagen2");
        String rutavideo = request.getParameter("rutavideo1");
        String categoria = request.getParameter("categoria");
        String estado = request.getParameter("estado");
        String fecha = request.getParameter("fecha");
        
            Product p = new Product(); 
            //try{
            p.UpdateProducto(strId, nombre, descripcion, precio, unidades, categoria, estado, rutaimagen1, rutaimagen2, rutavideo);
            
            //request.getRequestDispatcher("index.jsp");
            //rD.forward(request, response);
            
          //  }catch(Exception e){
            
              //  request.getRequestDispatcher("index.jsp");
               // rD.forward(request, response);
            
           // }
           
           request.getRequestDispatcher("index.jsp").forward(request, response);
            
        
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
