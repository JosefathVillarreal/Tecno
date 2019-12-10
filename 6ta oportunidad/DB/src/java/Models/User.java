/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DBUtils;
import java.sql.Connection;
import com.mysql.jdbc.Statement;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author magoc
 */
public class User {
    //Atributos encapsulados
    private int idUser;
    private String nameUser;
    private String apellidop;
    private String apellidom;
    private String nickname;
    private String email;
    private byte[] imageUser;
    private String rutaImagen;
    private boolean active;
    private String puesto; 
    private InputStream imagen; 
    
    int cantidadDelCarrito; 

    public InputStream getImagen() {
        return imagen;
    }

    public void setImagen(InputStream imagen) {
        this.imagen = imagen;
    }
    
    public String getNickname(){
        return nickname; 
    }
    
    public String getRutaImagen(){
        return rutaImagen; 
    }
    
    public String getApellidoP(){
        return apellidop; 
    }
    
    public String getApellidoM(){
        return apellidom; 
    }
    
    public String getEmail(){
        return email; 
    }
    
    
    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }
    
    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    public void setPuesto(String Puesto){
        this.puesto = Puesto;
    }
    
    public String getPuesto(){
        return puesto; 
    }
    
    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public byte[] getImageUser() {
        return imageUser;
    }
   
    public void setImageUser(byte[] imageUser) {
        this.imageUser = imageUser;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
 
    //Constructores
    public User() {
    }

    public User(int idUser, String nameUser, byte[] imageUser, boolean active) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.imageUser = imageUser;
        this.active = active;
    }
    
    public User(int idUser, String nameUser, String apellidop, String apellidom, String nickname) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        
    }
    
    public User(int idUser, String nameUser, String apellidop, String apellidom, String nickname, String Puesto) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        this.puesto = Puesto;
    }
    
    public User(int idUser, String nameUser, String apellidop, String apellidom, String nickname, String Puesto, String rutaImagen) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        this.puesto = Puesto;
        this.rutaImagen = rutaImagen;
    }
    
     public User(int idUser, String nameUser, String apellidop, String apellidom, String nickname, String Puesto, String rutaImagen, byte[] imageUser ) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        this.puesto = Puesto;
        this.rutaImagen = rutaImagen;
        this.imageUser = imageUser; 
    }
    
     public User(int idUser, String nameUser, String apellidop, String apellidom, String nickname, String Puesto, String rutaImagen, InputStream imagen) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        this.puesto = Puesto;
        this.rutaImagen = rutaImagen;
        this.imagen = imagen; 
    }
    
    public User(String nameUser, String apellidop, String apellidom, String nickname, String Puesto) {
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        this.puesto = Puesto;
    }
    
    public User(String nameUser, String apellidop, String apellidom, String nickname, String Puesto, String rutaImagen) {
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        this.puesto = Puesto;
        this.rutaImagen = rutaImagen;
    }
    
    public User(String nameUser, String apellidop, String apellidom, String nickname, String Puesto, String rutaImagen, byte[] imageUser) {
        this.nameUser = nameUser;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.nickname = nickname;
        this.puesto = Puesto;
        this.rutaImagen = rutaImagen;
        this.imageUser = imageUser; 
    }
    
    public User(int idUser, String nameUser) {
        this.idUser = idUser;
        this.nameUser = nameUser;
    }

    public User(int idUser, String nameUser, byte[] imageUser) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.imageUser = imageUser;
    }
    
    
    public User(User other) {
        this.idUser = other.idUser;
        this.nameUser = other.nameUser;
        this.imageUser = other.imageUser;
        this.active = other.active;
    }
    
    //Obtener todos los usuarios segun un parametro
    //1 Activos
    //0 Inactivos
    //-1 Todos
    static public List<User> GetAllUsers() throws ClassNotFoundException, InstantiationException{
        List<User> users = new ArrayList<User>();
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_GETALL_USER);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                int id = rS.getInt("idUsuario");
                String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
                User user = new User(id, name);
                users.add(user);
            }
        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } catch (IllegalAccessException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            //Si se finalizo bien cerramos todo
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
        return users;
    }
    
    //Obtenemos la imagen
    static public byte[] GetImageUser(int idUser){
        byte[] imageBytes = null;
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            con = dS.getConnection();

            statement = con.prepareCall(DBUtils.P_IMAGE_USER);
            statement.setInt(1, idUser);
            rS = statement.executeQuery();
            while(rS.next()){
                imageBytes = rS.getBytes("imageUser");
            }
        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
        return imageBytes;
    }
    //Agregar un usuario
    static public void AddUser(String userName, InputStream userImage){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

           // DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     
            statement = con.prepareCall(DBUtils.P_ADD_USER);
            statement.setString(1, userName);
            statement.setBinaryStream(2, userImage);
            rS = statement.executeQuery();

        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
    }
    //Remover un usuario
    static public void RemoveUser(int idUser){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            con = dS.getConnection();

            statement = con.prepareCall(DBUtils.P_REMOVE_USER);
            statement.setInt(1, idUser);
            rS = statement.executeQuery();

        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
    }
    
    public User UsuarioAutenticado(String nombre, String contraseña){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null; 
        User autenticado = null; 
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.U_AUTENCTICATION);
            statement.setString(1, nombre);
            statement.setString(2, contraseña);
            rS = statement.executeQuery();
            
            while(rS.next()){
                autenticado = new User(rS.getInt("idUsuario"),
                        rS.getString("Nombre"),rS.getString("Apellido paterno"),
                        rS.getString("Apellido materno") ,rS.getString("Nickname"),
                        rS.getString("Puesto"), rS.getString("Ruta")); 
            }
           
            
           // int ID = rS.getInt("idUsuario"); 
            //String nombrep = rS.getString("Nombre"); 
            //String apellidopp = rS.getString("Apellido paterno"); 
            //String appelidomp = rS.getString("Apellido materno"); 
            //String nicknamep = rS.getString("Nickname"); 
            
            //Conseguimos los datos y los agregamos a una lista
            
                
              //  String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
             //producto = new Product(rS.getString("Nombre"),rS.getString("Descripción"), rS.getDate("Fecha") ,rS.getFloat("Precio"), rS.getString("Categoria")); 
             
        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } catch (IllegalAccessException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            //Si se finalizo bien cerramos todo
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
        return autenticado;
    }
    
    public User UsuarioAutenticadoConImagen(String nombre, HttpServletResponse response) throws IOException{
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null; 
        User autenticado = null; 
        InputStream inputStream = null; 
        byte[] img = null; 
        OutputStream outputStream = null; 
        BufferedInputStream bufferedInputStream = null; 
        BufferedOutputStream bufferedOutputStream = null; 
        response.setContentType("image/*"); 
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.U_AUTENCTICATION_CON_IMAGEN);
            statement.setString(1, nombre);
            rS = statement.executeQuery();
            
            while(rS.next()){
                autenticado = new User(rS.getInt("idUsuario"),
                        rS.getString("Nombre"),rS.getString("Apellido paterno"),
                        rS.getString("Apellido materno") ,rS.getString("Nickname"),
                        rS.getString("Puesto"), rS.getString("Ruta"), 
                        rS.getBinaryStream("Imagen")); 
                        img = rS.getBytes("Imagen"); 
            }
           /*
            bufferedInputStream = new BufferedInputStream(inputStream); 
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0; 
            
            while ((i = bufferedInputStream.read()) != -1){
                bufferedOutputStream.write(i);
            }
            */
           
           response.getOutputStream().write(img);
           
           // int ID = rS.getInt("idUsuario"); 
            //String nombrep = rS.getString("Nombre"); 
            //String apellidopp = rS.getString("Apellido paterno"); 
            //String appelidomp = rS.getString("Apellido materno"); 
            //String nicknamep = rS.getString("Nickname"); 
            
            //Conseguimos los datos y los agregamos a una lista
            
                
              //  String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
             //producto = new Product(rS.getString("Nombre"),rS.getString("Descripción"), rS.getDate("Fecha") ,rS.getFloat("Precio"), rS.getString("Categoria")); 
             
        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } catch (IllegalAccessException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            //Si se finalizo bien cerramos todo
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
        return autenticado;
    }
           
    static public void AgregarUsuarioConTodo(String Nickname, String userName, String apellidoP, String apellidoM, String email, String direccion, String password, String telefono, Date nacimiento, String puesto, String rutaImagen, InputStream userImage){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

           // DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     
            statement = con.prepareCall(DBUtils.U_ADD_USER_CON_TODO);
            statement.setString(1, userName);
            statement.setString(2, apellidoP);
            statement.setString(3, apellidoM);
            statement.setDate(4, nacimiento);
            statement.setString(5, telefono);
            statement.setString(6, direccion);
            statement.setString(7, email);
            statement.setString(8, Nickname);
            statement.setString(9, password);
            statement.setString(10, puesto);
            statement.setBinaryStream(11, userImage);
            statement.setString(12, rutaImagen);
            rS = statement.executeQuery();

        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
    }
    
    public User AgregarUsuarioConTodo(String userName, String apellidoP,  String apellidoM, String nacimiento, String telefono,  String direccion, String email, String Nickname, String password, String puesto, String rutaImagen, InputStream userImage){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        User regresado = null; 
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

           // DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     
            statement = con.prepareCall(DBUtils.U_ADD_USER_CON_TODO);
       
            statement.setString(1, userName);
            statement.setString(2, apellidoP);
            statement.setString(3, apellidoM);
            statement.setString(4, nacimiento);
            statement.setString(5, telefono);
            statement.setString(6, direccion);
            statement.setString(7, email);
            statement.setString(8, Nickname);
            statement.setString(9, password);
            statement.setString(10, puesto);
            statement.setBinaryStream(11, userImage);
            statement.setString(12, rutaImagen);
           
            rS = statement.executeQuery();
            
             while(rS.next()){
                regresado = new User(rS.getInt("idUsuario"),
                        rS.getString("Nombre"),rS.getString("Apellido paterno"),
                        rS.getString("Apellido materno") ,rS.getString("Nickname"),
                        rS.getString("Puesto"), rS.getString("Ruta")); 
            }
            
        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
        return regresado;
    }
    
    
    
}
