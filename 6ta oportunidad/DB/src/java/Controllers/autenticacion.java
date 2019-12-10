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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Josefath
 */
public class autenticacion extends HttpServlet {

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
       processRequest(request, response);
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
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        
        User user = new User(); 
        User usuario = new User(); 
        User usuario1 = new User(); 
        usuario = user.UsuarioAutenticado(name, password); 
        
        
        //usuario1 = user.UsuarioAutenticadoConImagen(name, response); 
        
        PresupuestoCarrito carrito = new PresupuestoCarrito(); 
        List<PresupuestoCarrito> todoelcarrito = new ArrayList<PresupuestoCarrito>();
        
        if(usuario!= null){
            
            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", usuario);
            Cookie cookie = new Cookie ("usuarioporcookie",usuario.getNickname()); 

            if(usuario.getPuesto().equals("Administrador")){
                todoelcarrito = carrito.CarritoParaAdministradores();
                session.setAttribute("carrito", todoelcarrito);
            }else{
                todoelcarrito = carrito.CarritoParaClientes(usuario.getNickname()); 
                session.setAttribute("carrito", todoelcarrito);
            }
            
            response.addCookie(cookie);
            rD = request.getRequestDispatcher("index.jsp");
            rD.forward(request, response);
            //request.getRequestDispatcher("index.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("RegistroUsuario.jsp").forward(request, response);
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
