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
public class Product {
 
    String Nombre; 
    String Descripcion;
    Float Precio; 
    String Categoria; 
    Date Fecha; 
    String rutaImagen;
    int Unidades;
    int id; 
    String rutaImagen1;
    String rutaVideo;
    int borradorOPublicado; 
    int compradoONoComprado; 
    String razon; 
    
    public Product() {
    }

    
    public Product(String Nombre, String Descripcion, Float Precio, String Categoria) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Categoria = Categoria;
    }
    
    public Product(int id) {
        this.id = id; 
        
    }
    
    public Product(int id, String Nombre, String Descripcion, Float Precio, String Categoria) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Categoria = Categoria;
    }
    
    public Product(int id, String Nombre, String Descripcion, Float Precio, String Categoria,  int compradoONoComprado, String Imagen) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.rutaImagen = Imagen;
        this.compradoONoComprado = compradoONoComprado;
    }
    
    public Product(int id, String Nombre, String Descripcion, Float Precio, String Categoria, String Imagen) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.rutaImagen = Imagen;
    }
    
    public Product(int id, String Nombre, String Descripcion, Float Precio, String Categoria, String Imagen, String razon) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.rutaImagen = Imagen;
        this.razon = razon;
    }
    
    public Product(String Nombre, String Descripcion, Date Fecha ,Float Precio, String Categoria) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Fecha = Fecha; 
        this.Precio = Precio;
        this.Categoria = Categoria;
    }
    
     public Product(int id, String Nombre, String Descripcion, Date Fecha ,Float Precio, String Categoria) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Fecha = Fecha; 
        this.Precio = Precio;
        this.Categoria = Categoria;
    }
     
     public Product(int id, String Nombre, String Descripcion, Date Fecha ,Float Precio, String Categoria, int borradorOPublicado) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Fecha = Fecha; 
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.borradorOPublicado = borradorOPublicado;
    }
     
    public Product(int id, String Nombre, String Descripcion, Float Precio, String Categoria, int borradorOPublicado) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.borradorOPublicado = borradorOPublicado;
    }
    
    public Product(int id, String Nombre, String Descripcion, Float Precio, String Categoria, String ruta,  int borradorOPublicado) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.rutaImagen = ruta;
        this.borradorOPublicado = borradorOPublicado;
    }

    public Product(int id, String Nombre, String Descripcion, Date Fecha ,Float Precio, int unidades, String Categoria, String ruta, String ruta1, String video) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Fecha = Fecha; 
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.Unidades = unidades;
        this.rutaImagen = ruta;
        this.rutaImagen1 = ruta1; 
        this.rutaVideo = video; 
    }
    
    public Product(int id, String Nombre, String Descripcion, Float Precio, Date Fecha,  int unidades, String Categoria, String ruta, String ruta1, String video) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Fecha = Fecha; 
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.Unidades = unidades;
        this.rutaImagen = ruta;
        this.rutaImagen1 = ruta1; 
        this.rutaVideo = video; 
    }
    
    public Product(int id, String Nombre, String Descripcion, Float Precio, Date Fecha , int unidades, String Categoria, String ruta, String ruta1, String video, int borradorOPublicado) {
        this.id = id; 
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Fecha = Fecha; 
        this.Precio = Precio;
        this.Categoria = Categoria;
        this.Unidades = unidades;
        this.rutaImagen = ruta;
        this.rutaImagen1 = ruta1; 
        this.rutaVideo = video; 
        this.borradorOPublicado = borradorOPublicado; 
    }
    
    public String getNombre() {
        return Nombre;
    }
    
    public int getCompradoONo(){
        return compradoONoComprado; 
    }

    public void setCompradoONo(int compradoONoComprado) {
        this.compradoONoComprado = compradoONoComprado;
    }
    
    public int getBorradorOPublicado(){
        return borradorOPublicado; 
    }

    public void setBorradorOPublicado(int BorradorOPublicado) {
        this.borradorOPublicado = BorradorOPublicado;
    }
    
    public String getRuta() {
        return rutaImagen;
    }
    
     public String getRazon() {
        return razon;
    }
     
    public String getRuta1() {
        return rutaImagen1;
    }
    
    public String getVideo() {
        return rutaVideo;
    }
    
    public void setRutaImagen(String RutaImagen) {
        this.rutaImagen = RutaImagen;
    }
    
    public void setRutaImagen1(String RutaImagen1) {
        this.rutaImagen1 = RutaImagen1;
    }
    
    public void setRutaVideo(String RutaVideo) {
        this.rutaVideo = RutaVideo;
    }
    
    public void setRazon(String razon) {
        this.razon = razon;
    }
    
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setUnidades(int Unidades) {
        this.Unidades = Unidades;
    }
   
    public int getUnidades() {
        return Unidades;
    }
    
    public String getRutaImagen() {
        return rutaImagen;
    }
    
    public String getDescripcion() {
        return Descripcion;
    }
    
    public int getId() {
        return id;
    }

    public Date getFecha() {
        return Fecha;
    }
    
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public Float getPrecio() {
        return Precio;
    }

    public void setPrecio(Float Precio) {
        this.Precio = Precio;
    }

    public String getCategoria() {
        return Categoria;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }
    
    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }
    
    static public List<Product> GetAllProducts() throws ClassNotFoundException, InstantiationException{
        List<Product> products = new ArrayList<Product>();
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
                
               // String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria")); 
                products.add(producto);
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
        return products;
    }
    
    public List<Product> GetAllProduct(){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_GETALL_PRODUCTSWITHOUTSESSION);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getString("Ruta")); 
                products.add(producto);
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
    
    public List<Product> ObtenerDestacados(){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_OBTENER_DESTACADOS);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getString("Ruta"), rS.getString("Razon")); 
                products.add(producto);
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
    
    public List<Product> ObtenerArticulosParaAdministradoresPorFiltroCategorias(String idCategorias){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_OBTENER_PRODUCTOS_POR_FILTRO_DE_CATEGORIA_PARA_ADMINISTRADOR);
            statement.setInt(1, Integer.parseInt(idCategorias));
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getString("Ruta"), rS.getInt("BorradorOPublicado")); 
                products.add(producto);
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
   
    public List<Product> GetAllProductParaAdministradores(){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_GETALL_PRODUCTSPARAADMINISTRADORES);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getString("Ruta"), rS.getInt("BorradorOPublicado")); 
                products.add(producto);
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
    
    public List<Product> GetAllProductParaUsuarioGenerico(){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_GETALL_PRODUCTSWITHOUTSESSION);
//            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getString("Ruta")); 
                products.add(producto);
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
    
    public List<Product> ProductoPorFiltros(String titulo, String descripcion, String categoria, String fechainicio, String fechafin){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_FILTROS);
            statement.setString(1, titulo);
            statement.setString(2, descripcion);
            statement.setInt(3, Integer.parseInt(categoria));
            statement.setString(4, fechainicio);
            statement.setString(5, fechafin);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getString("Ruta")); 
                products.add(producto);
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
    
    public List<Product> GetAllProductParaCliente(String nickname){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_GETALL_PRODUCTSPARA_CLIENTES);
            statement.setString(1, nickname);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getInt("Comprado"), rS.getString("Ruta")); 
                products.add(producto);
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
    
    public Product getProductoAConsultar(String nombredelproducto){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null; 
        
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_GET_DETAILPRODUCT);
            statement.setString(1, nombredelproducto);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
             producto = new Product(rS.getString("Nombre"),rS.getString("Descripción"), rS.getDate("Fecha") ,rS.getFloat("Precio"), rS.getString("Categoria")); 
             
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
        return producto;
    }
    
    public Product getProductoAConsultar(int idDelProducto){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null; 
        
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_GET_DETAILPRODUCTID);
            //statement.setString(1, idDelProducto);
            //statement.setInt("1", idDelProducto);
            statement.setInt(1, id);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
             //producto = new Product(rS.getInt("idArtículo") rS.getString("Nombre"),
             //rS.getString("Descripción"), rS.getDate("Fecha") ,rS.getFloat("Precio"), rS.getString("Categoria")); 
             
             producto = new Product(rS.getInt("idArtículo"), rS.getString("Nombre"),rS.getString("Descripción"), rS.getDate("Fecha") ,rS.getFloat("Precio"), rS.getString("Categoria")); 
             
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
        return producto;
    }
    
    public Product getProductoAConsultarConTodo(int idDelProducto){
       
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_GET_DETAILPRODUCTID_CONTODO);
            statement.setInt(1, idDelProducto);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getDate("Fecha"), rS.getInt("Unidades"), rS.getString("Categoria"), rS.getString("Imagen1"), rS.getString("Imagen2"), rS.getString("Video")); 
                
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
        return producto;
    }
    
    public void AddProducto(String nombre, String descripcion, String precio, String unidades, String categoria, String estado, String imagenuno, String imagendos, String video){
       
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_ADD_PRODUCT_CONTODO);
            statement.setString(1, nombre );
            statement.setString(2, descripcion );
            statement.setFloat(3, Integer.parseInt(precio)); 
            statement.setInt(4, Integer.parseInt(unidades)); 
            statement.setString(5, categoria);
            statement.setString(6, estado);
            statement.setString(7, imagenuno);
            statement.setString(8, imagendos);
            statement.setString(9, video);
            
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getDate("Fecha"), rS.getInt("Unidades"), rS.getString("Categoria"), rS.getString("Imagen1"), rS.getString("Imagen2"), rS.getString("Video")); 
                
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
        
    }
    
    public void UpdateProducto(String id, String nombre, String descripcion, String precio, String unidades, String categoria, String estado, String imagenuno, String imagendos, String video){
       
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_MODIFY_PRODUCT_CONTODO);
            statement.setInt(1, Integer.parseInt(id));
            statement.setString(2, nombre );
            statement.setString(3, descripcion );
            statement.setFloat(4, Float.parseFloat(precio));
            //statement.setFloat(4, );  Float.parseFloat(precio)), 4
            statement.setInt(5, Integer.parseInt(unidades)); 
            statement.setString(6, categoria);
            statement.setString(7, estado);
            statement.setString(8, imagenuno);
            statement.setString(9, imagendos);
            statement.setString(10, video);
            
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
           // while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
             //   producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getDate("Fecha"), rS.getInt("Unidades"), rS.getString("Categoria"), rS.getString("Imagen1"), rS.getString("Imagen2"), rS.getString("Video")); 
                
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
    
    public void EliminarProducto(int id){
       
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_REMOVE_PRODUCT);
            statement.setInt(1, id );
            
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
           // while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
              //  producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getDate("Fecha"), rS.getInt("Unidades"), rS.getString("Categoria"), rS.getString("Imagen1"), rS.getString("Imagen2"), rS.getString("Video")); 
                
           // }
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
 
    public void CarritoAgregarFolio(String usuario, String id){
       
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.CARRITO_AGREGAR_FOLIO);
            statement.setString(1, usuario);
            statement.setInt(2, Integer.parseInt(id)); 
           
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
           // while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
              //  producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getDate("Fecha"), rS.getInt("Unidades"), rS.getString("Categoria"), rS.getString("Imagen1"), rS.getString("Imagen2"), rS.getString("Video")); 
                
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
    
    public void CarritoAgregarDetalle(String id){
       
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        Product producto = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            //DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //con = dS.getConnection();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");     

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.CARRITO_AGREGAR_DETALLE_DE_VENTA);
            statement.setInt(1, Integer.parseInt(id)); 
           
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
           // while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
              //  producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getDate("Fecha"), rS.getInt("Unidades"), rS.getString("Categoria"), rS.getString("Imagen1"), rS.getString("Imagen2"), rS.getString("Video")); 
                
           // }
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
    
    public List<Product> GetAllProductParaUsuarioGenericoPorFiltro(String idCategoria){
        List<Product> products = new ArrayList<Product>();
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
            statement = con.prepareCall(DBUtils.P_OBTENER_PRODUCTOS_POR_FILTRO_DE_CATEGORIA);
            statement.setInt(1, Integer.parseInt(idCategoria));
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                
             //   String name = rS.getString("Nombre");
             //   byte[] image = rS.getBytes("imageUser");
             //   User user = new User(id, name);
                Product producto = new Product(rS.getInt("idArtículo"),rS.getString("Nombre"),rS.getString("Descripción"),rS.getFloat("Precio"), rS.getString("Categoria"), rS.getString("Ruta")); 
                products.add(producto);
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
    
}
