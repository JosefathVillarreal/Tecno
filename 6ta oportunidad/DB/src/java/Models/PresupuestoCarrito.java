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
public class PresupuestoCarrito {
    private int id; 
    private int idDetalleVenta;
    private String nombreusuario; 
    private int idUsuario; 
    private String nombrearticulo; 
    private float precio; 
    private int cantidad; 
    
    public PresupuestoCarrito() {
    }

    
    public PresupuestoCarrito(int id, String nombreusuario, int idUsuario, String nombrearticulo, float precio) {
        this.id = id;
        this.nombreusuario = nombreusuario;
        this.idUsuario = idUsuario;
        this.nombrearticulo = nombrearticulo;
        this.precio = precio;
    }
    
    public PresupuestoCarrito(int idDetalleDeVenta, int id, String nombreusuario, int idUsuario, String nombrearticulo, float precio) {
        this.idDetalleVenta = idDetalleDeVenta; 
        this.id = id;
        this.nombreusuario = nombreusuario;
        this.idUsuario = idUsuario;
        this.nombrearticulo = nombrearticulo;
        this.precio = precio;
    }
    
    public PresupuestoCarrito(int idDetalleDeVenta, int id, String nombreusuario, int idUsuario, String nombrearticulo, float precio, int cantidad) {
        this.idDetalleVenta = idDetalleDeVenta; 
        this.id = id;
        this.nombreusuario = nombreusuario;
        this.idUsuario = idUsuario;
        this.nombrearticulo = nombrearticulo;
        this.precio = precio;
        this.cantidad = cantidad; 
    }

    public int getId() {
        return id;
    }

    
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getCantidad() {
        return cantidad;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public int getIdDetalleDeVenta() {
        return idDetalleVenta;
    }

    public void setIdDetalleDeVenta(int idDetalle) {
        this.idDetalleVenta = idDetalle;
    }
    
    public String getNombreusuario() {
        return nombreusuario;
    }

    public void setNombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombrearticulo() {
        return nombrearticulo;
    }

    public void setNombrearticulo(String nombrearticulo) {
        this.nombrearticulo = nombrearticulo;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
    
    
    public List<PresupuestoCarrito> CarritoParaAdministradores(){
        List<PresupuestoCarrito> todoelcarrito = new ArrayList<PresupuestoCarrito>();
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
            statement = con.prepareCall(DBUtils.CARRITO_PARA_ADMINISTRADOR);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                PresupuestoCarrito carrito = new PresupuestoCarrito(rS.getInt("ID"), rS.getInt("Venta"), rS.getString("Usuario"),rS.getInt("Articulo"), rS.getString("Nombre"), rS.getFloat("Subtotal")); 
                todoelcarrito.add(carrito);
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
        return todoelcarrito;
    }
    
    public List<PresupuestoCarrito> PresupuestoParaClientes(String nickname){
        List<PresupuestoCarrito> todoelcarrito = new ArrayList<PresupuestoCarrito>();
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
            statement = con.prepareCall(DBUtils.PC_OBTENER_PRESUPUESTO_PARA_CLIENTES);
            statement.setString(1, nickname);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                PresupuestoCarrito carrito = new PresupuestoCarrito(rS.getInt("ID"), rS.getInt("Venta"), rS.getString("Usuario"),rS.getInt("Articulo"), rS.getString("Nombre"), rS.getFloat("Subtotal")); 
                todoelcarrito.add(carrito);
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
        return todoelcarrito;
    }
    
    public List<PresupuestoCarrito> CarritoParaClientes(String nickname){
        List<PresupuestoCarrito> todoelcarrito = new ArrayList<PresupuestoCarrito>();
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
            statement = con.prepareCall(DBUtils.PC_OBTENER_CARRITO_PARA_CLIENTES);
            statement.setString(1, nickname);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                PresupuestoCarrito carrito = new PresupuestoCarrito(rS.getInt("ID"), rS.getInt("Venta"), rS.getString("Usuario"),rS.getInt("Articulo"), rS.getString("Nombre"), rS.getFloat("Subtotal")); 
                todoelcarrito.add(carrito);
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
        return todoelcarrito;
    }
    
    public void modificarPrecioDelPresupuesto(String id, String Precio){
        PresupuestoCarrito presupuestoregresado = new PresupuestoCarrito();
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
            statement = con.prepareCall(DBUtils.PC_MODIFICAR_PRECIO_DEL_PRESUPUESTO_ADMINISTRADOR);
            statement.setInt(1, Integer.parseInt(id));
            statement.setFloat(2, Float.parseFloat(Precio));
            
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
           // while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
             //   presupuestoregresado = new PresupuestoCarrito(rS.getInt("ID"), rS.getInt("Venta"), rS.getString("Usuario"),rS.getInt("Articulo"), rS.getString("Nombre"), rS.getFloat("Subtotal")); 
                
            //}
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
    
    public void eliminarDetalleDelPresupuesto(String id){
        PresupuestoCarrito presupuestoregresado = new PresupuestoCarrito();
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
            statement = con.prepareCall(DBUtils.PC_ELIMINAR_DETALLEDEVENTA_PRESUPUESTO);
            statement.setInt(1, Integer.parseInt(id));
            
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
    
    public void mandarACarritoCliente(String id){
        PresupuestoCarrito presupuestoregresado = new PresupuestoCarrito();
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
            statement = con.prepareCall(DBUtils.PC_MANDAR_A_CARRITO_CLIENTE);
            statement.setInt(1, Integer.parseInt(id));
            
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
    
    public void modificaCantidadCarritoCliente(String idDetalle, String idVenta, String cantidad ){
        PresupuestoCarrito presupuestoregresado = new PresupuestoCarrito();
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
            statement = con.prepareCall(DBUtils.PC_MODIFICAR_CANTIDAD_DETALLE_CARRITO);
            statement.setInt(1, Integer.parseInt(idDetalle));
            statement.setInt(2, Integer.parseInt(idVenta));
            statement.setInt(3, Integer.parseInt(cantidad));
            
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
    
    public PresupuestoCarrito PresupuestoPorId(String id){
        PresupuestoCarrito presupuestoregresado = new PresupuestoCarrito();
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
            statement = con.prepareCall(DBUtils.PC_OBTENER_PRESUPUESTO);
            statement.setInt(1, Integer.parseInt(id));
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                presupuestoregresado = new PresupuestoCarrito(rS.getInt("ID"), rS.getInt("Venta"), rS.getString("Usuario"),rS.getInt("Articulo"), rS.getString("Nombre"), rS.getFloat("Subtotal")); 
                
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
        return presupuestoregresado;
    }
    
    public PresupuestoCarrito CarritoPorId(String id){
        PresupuestoCarrito presupuestoregresado = new PresupuestoCarrito();
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
            statement = con.prepareCall(DBUtils.PC_OBTENER_CARRITO_POR_ID);
            statement.setInt(1, Integer.parseInt(id));
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                presupuestoregresado = new PresupuestoCarrito(rS.getInt("ID"), rS.getInt("Venta"), rS.getString("Usuario"),rS.getInt("Articulo"), rS.getString("Nombre") ,rS.getFloat("Subtotal"), rS.getInt("Cantidad")); 
                
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
        return presupuestoregresado;
    }
    
}
