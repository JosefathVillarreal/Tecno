/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Utils.FilesUtils;
import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.http.Part;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 *
 * @author Josefath
 */
@MultipartConfig(maxFileSize = 1000*1000*5, maxRequestSize = 1000*1000*25, fileSizeThreshold = 1000*1000)
public class registroUsuario extends HttpServlet {

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
        //SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        User usuarioaregistrar = new User(); 
        User usuarioregistrado; 
        RequestDispatcher rD = null;
        String nombredelarchivo = null; 
        String dir = null; 
        String telefono = null; 
        String nacimiento = null;
        String nameImage;
        String nick = request.getParameter("nickname");
        String username = request.getParameter("nombre");
        String apellidop = request.getParameter("apellidop");
        String apellidom = request.getParameter("apellidom");
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        dir = request.getParameter("direccion");
        telefono = request.getParameter("telefono");
        nacimiento = request.getParameter("nacimiento");
        String puesto = request.getParameter("puesto");
        String rutaImagen = request.getParameter("ruta");
        String Imagen = request.getParameter("Imagen");
        Part file = request.getPart("Imagen");
        
        if (password1.equals(password2)){
            //Creamos un folder para resguardar la imagen si es que no existe
            String path = request.getServletContext().getRealPath("");
            File fileSaveDir = new File(path + FilesUtils.RUTE_USER_IMAGE);
            
            
            if(!fileSaveDir.exists()){
                fileSaveDir.mkdir();
                
                //Resguardamos la imagen
            String contentType = file.getContentType();//Resguarden esto para saber el tipo
            nameImage =  file.getName() + System.currentTimeMillis() + FilesUtils.GetExtension(contentType);
            file.write(path + nameImage);
            }
            //Agregamos a la base de datos
           // User.AddUser(, file.getInputStream());
            //Redirecciona a la pagina que gustemos
            
  //      }<{IN NombreUsuario VARCHAR(45)}>, <{IN ApellidoPaterno VARCHAR(45)}>,<{IN ApellidoMaterno VARCHAR(45)}>,
// <{IN FechaDeNacimiento DATETIME}>, <{IN TelefonoUsuario char(255)}>, <{IN DirecionUsuario VARCHAR(255)}>, 
 //<{IN EmailUsuario VARCHAR(255)}>,<{IN NicknameUsuario VARCHAR(255)}>,<{IN ContraseñaUsuario VARCHAR(60)}>, 
 //<{IN Puesto VARCHAR(40)}>, <{IN Imagen BLOB}>,<{IN rutaImagen VARCHAR(255)}>);

            
        usuarioregistrado = usuarioaregistrar.AgregarUsuarioConTodo(username,apellidop,apellidom, nacimiento,telefono, dir, email, nick, password1, puesto, rutaImagen, file.getInputStream());
        
        if(usuarioregistrado != null){
            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", usuarioregistrado);
            rD = request.getRequestDispatcher("index.jsp");
            }else{
            rD = request.getRequestDispatcher("RegistroUsuario.jsp");
            }
            
        }else{
         rD = request.getRequestDispatcher("RegistroUsuario.jsp");
        }
        
        rD.forward(request, response);
        
    }
     
    }



    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
   

