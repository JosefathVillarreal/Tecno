/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Historial;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class Compras extends HttpServlet {

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
       String selected[] = request.getParameterValues("listacarrito"); 
       ArrayList<String> presupuestocarrito = new ArrayList<String>();
       Historial agregafolio = new Historial(); 
       
       String tipodepago = request.getParameter("listapagos"); 
       
       
       int contador = 0; 
       
       for(int i = 0; i < selected.length; i++){
           
           presupuestocarrito.add(i, selected[i]);
       }
       
       if(presupuestocarrito != null){
           
           
            HttpSession mySession = (HttpSession) request.getSession();
            User user = (User)mySession.getAttribute("usuario");
           /* 
            HttpSession session = request.getSession(true);
            session.setAttribute("carrito", presupuestocarrito);
            user.getNickname();
            */
           
           for(String n : presupuestocarrito){
               
               if(contador == 0){
                   //n == 1 agregar folio y detalle
                   
                   agregafolio.AgregarFolio(user.getNickname(), n, tipodepago);
                   agregafolio.AgregarDetalle(n);
                  // product.CarritoAgregarFolio(user.getNickname(), n);
                  // product.CarritoAgregarDetalle(n);
                   contador++; 
               }else{
                   agregafolio.AgregarDetalle(n);
                   //solo agregar detalle
                  // product.CarritoAgregarDetalle(n);
                   contador++; 
               }
           }
               
          //  session.setAttribute("numero", (contador+1));
            
            rD = request.getRequestDispatcher("index.jsp");
            rD.forward(request, response);
            
       }else{
           request.getRequestDispatcher("Presupuesto.jsp").forward(request, response);
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
