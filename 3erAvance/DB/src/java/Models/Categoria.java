/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DBUtils;
import java.sql.CallableStatement;
import java.sql.Connection;
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
public class Categoria {
    private String Nombre;

    public Categoria() {
    }

    public Categoria(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
      static public List<Categoria> GetAllCategorias() throws ClassNotFoundException, InstantiationException{
        List<Categoria> categorias = new ArrayList<Categoria>();
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
            statement = con.prepareCall(DBUtils.P_GETALL_CATEGORIES);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                //String name = ;
             //   byte[] image = rS.getBytes("imageUser");
                //User user = new User(id, name);
                Categoria categoria = new Categoria(rS.getString("Nombre")); 
                //users.add(user);
                categorias.add(categoria);
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
        return categorias;
    }
      
      public List<Categoria> GetAllCategories(){
        List<Categoria> categorias = new ArrayList<Categoria>();
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
            statement = con.prepareCall(DBUtils.P_GETALL_CATEGORIES);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Categoria categoria = new Categoria(rS.getString("Nombre")); 
                categorias.add(categoria);
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
        return categorias;
    }
      
}
