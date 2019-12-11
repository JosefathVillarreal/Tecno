/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DBUtils;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Josefath
 */
public class Comentario {
    private int idUsuario; 
    private int idArticulo; 
    private String Usuario; 
    private Date fecha; 
    private String fecha1; 
    private int idComentario;
    private int valoracion; 
    private String comentario; 

    public Comentario() {
    }

    public Comentario(int idUsuario, int idArticulo, int idComentario, int valoracion, String comentario) {
        this.idUsuario = idUsuario;
        this.idArticulo = idArticulo;
        this.idComentario = idComentario;
        this.valoracion = valoracion;
        this.comentario = comentario;
    }
    
      public Comentario(String Usuario, Date fecha, String Comentario) {
        this.Usuario = Usuario;
        this.fecha = fecha;
        this.comentario = Comentario;

    }

       public Comentario(String Usuario, String fecha1, String Comentario, int Valoracion) {
        this.Usuario = Usuario;
        this.fecha1 = fecha1;
        this.comentario = Comentario;
        this.valoracion = Valoracion; 

    }
       
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
   
    public int getIdArticulo() {
        return idArticulo;
    }

    public void setIdArticulo(int idArticulo) {
        this.idArticulo = idArticulo;
    }

    public String getFechaString() {
        return fecha1;
    }

    public void setFechaString(String fecha1) {
        this.fecha1 = fecha1;
    }
    
    public int getIdComentario() {
        return idComentario;
    }

    public void setIdComentario(int idComentario) {
        this.idComentario = idComentario;
    }

    public int getValoracion() {
        return valoracion;
    }

    public void setValoracion(int valoracion) {
        this.valoracion = valoracion;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }
    
    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    public List<Comentario> GetAllComentariosPorArticulo(String id){
        List<Comentario> products = new ArrayList<Comentario>();
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
            statement = con.prepareCall(DBUtils.V_OBTENER_COMENTARIOS_POR_ARTICULO);
            statement.setInt(1, Integer.parseInt(id));
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Comentario comentario = new Comentario(rS.getString("Usuario"), rS.getString("Fecha"), rS.getString("Comentario"), rS.getInt("Valoracion")); 
                products.add(comentario);
            }
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
        return products;
    }
    
    public void AgregarComentario(String nickname, String Articulo, String likedislike, String comentario){
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
            statement = con.prepareCall(DBUtils.V_AGREGAR_VALORACION_DE_PRODUCTO);
            statement.setString(1, nickname);
            statement.setInt(2, Integer.parseInt(Articulo));
            statement.setInt(3, Integer.parseInt(likedislike));
            statement.setString(4, comentario);
            
            rS = statement.executeQuery();
            
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
        
    }
    
}
