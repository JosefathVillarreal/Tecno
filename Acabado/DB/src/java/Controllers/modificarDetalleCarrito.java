/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.PresupuestoCarrito;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Josefath
 */
public class modificarDetalleCarrito extends HttpServlet {

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
        
        PresupuestoCarrito modificar = new PresupuestoCarrito(); 
        
        String nuevoprecio = (String)request.getParameter("precio");
        String id = (String)request.getParameter("id");
        
        HttpSession mySession = (HttpSession) request.getSession();

        modificar = modificar.PresupuestoPorId(id);
        
        if(modificar != null){
            HttpSession session = request.getSession(true);
            session.setAttribute("presupuestar", modificar);
            request.getRequestDispatcher("modificarCarrito.jsp").forward(request, response);
        }else{
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
          
        PresupuestoCarrito modificar = new PresupuestoCarrito(); 
        
        String nuevoprecio = (String)request.getParameter("precio");
        String id = (String)request.getParameter("id");
        
        HttpSession mySession = (HttpSession) request.getSession();

        modificar = modificar.CarritoPorId(id);
        
        if(modificar != null){
            HttpSession session = request.getSession(true);
            session.setAttribute("modificarcarrito", modificar);
            request.getRequestDispatcher("modificarCantidadCarrito.jsp").forward(request, response);
        }else{
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
