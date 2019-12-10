/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Comentario;
import Models.Product;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Josefath
 */
public class consultaProducto extends HttpServlet {

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
        
        RequestDispatcher rD = null;
        String strId = null;
        try{
            strId = (String)request.getParameter("id");
        }catch(Exception e)
        {
           // System.out.println("com.papw.controllers.SelectUser.doGet() " + e.getMessage());
        }
            
            Product p = new Product(); 
            Product product = new Product(); 
            product = p.getProductoAConsultarConTodo(Integer.parseInt(strId));
            List<Comentario> todosloscomentarios = new ArrayList<Comentario>(); 
            Comentario comentarios = new Comentario(); 
            todosloscomentarios = comentarios.GetAllComentariosPorArticulo(strId); 
            
            if(product!= null){
            HttpSession session = request.getSession(true);
            session.setAttribute("producto", product);
            session.setAttribute("comentarios", todosloscomentarios);
            rD = request.getRequestDispatcher("consultaProducto.jsp");
           // rD.forward(request, response);
            //request.getRequestDispatcher("index.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("consultaProducto.jsp");
        }
           // request.setAttribute("product", product);
           // RequestDispatcher rd = request.getRequestDispatcher("detalleProducto.jsp");  
            rD.forward(request, response);
        
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
        if(request == null){
          RequestDispatcher rD = null;
          rD = request.getRequestDispatcher("detalleProducto.jsp");
          rD.forward(request, response); 
        }
        
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
