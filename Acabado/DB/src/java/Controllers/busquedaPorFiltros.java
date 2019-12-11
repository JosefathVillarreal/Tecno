/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Product;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Josefath
 */
public class busquedaPorFiltros extends HttpServlet {

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
        
        String fechainicio = (String)request.getParameter("fechainicio");
        String fechai = new String(); 
        String fechafin = (String)request.getParameter("fechafin");
        String fechaf = new String(); 
        String palabraarticulo = (String)request.getParameter("nombre"); 
        String palabradescripcion = (String)request.getParameter("descripcion");
        String categoria = (String)request.getParameter("categoria");
        
        HttpSession mySession = (HttpSession) request.getSession();
        User user = (User)mySession.getAttribute("usuario");
            
        Product producto = new Product(); 
        List<Product> listaproducto = new ArrayList<Product>(); 
        String id = request.getParameter("categoria");
        
        listaproducto = producto.ProductoPorFiltros(palabraarticulo, palabradescripcion, categoria, fechainicio, fechafin);
        /*
        String[] myList = new String[3];
        int contador = 0; 
        if(fechainicio != null){
        for (String retval: fechainicio.split("-")) {
         myList[contador] = retval; 
         contador++; 
        }
        fechai = myList[0] + "," + myList[1] + "," + myList[2]; 
        }


        String[] myList1 = new String[3];
        contador = 0; 
        if(fechafin != null){
        for (String retval: fechafin.split("-")) {
         myList1[contador] = retval; 
         contador++; 
        }
        fechaf = myList1[0] + "," + myList1[1] + "," + myList1[2]; 
        }        
        */
        
        
        if(user != null){
            if(user.getPuesto().equals("Administrador")){
                //este usuario es administrador
                listaproducto = producto.ProductoPorFiltros(palabraarticulo, palabradescripcion, categoria, fechainicio, fechafin);
            }else{
                 //este usuario es cliente
               listaproducto = producto.ProductoPorFiltros(palabraarticulo, palabradescripcion, categoria, fechainicio, fechafin);
            }
        }else{
            //este usuario es cliente
          listaproducto = producto.ProductoPorFiltros(palabraarticulo, palabradescripcion, categoria, fechainicio, fechafin);
        
        }
        
       if(listaproducto != null){
            HttpSession session = request.getSession(true);
            session.setAttribute("productosfiltrados", listaproducto);
       }
        
        request.getRequestDispatcher("Busqueda.jsp").forward(request, response);
        
        
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
