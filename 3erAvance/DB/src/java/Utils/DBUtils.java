/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author magoc
 */
public class DBUtils {
    
    public static String U_AUTENCTICATION = "CALL autenticacion (?,?);";
    public static String P_ADD_USER = "CALL AddUser(?,?);";
    public static String U_ADD_USERWITHIMAGEN = "CALL AddUser(?,?);";
    public static String U_ADD_USER_CON_TODO = "CALL AgregarUsuariosConPuestoEImagen(?,?,?,?,?,?,?,?,?,?,?,?);";
    public static String P_REMOVE_USER = "CALL RemoveUser(?);";
    public static String P_GETALL_USER = "CALL obtenerUsuarios();";
    public static String P_GETALL_PRODUCTSWITHOUTSESSION = "CALL obtenerArticulosSinUsuario();";
    public static String P_REMOVE_PRODUCT = "CALL EliminarArticuloPorID(?);";
    public static String P_GETALL_PRODUCTSPARAADMINISTRADORES = "CALL obtenerArticulosParaAdministrador();";
    public static String P_GETALL_CATEGORIES = "CALL obtenerCategorias();";
    public static String P_GET_DETAILPRODUCT = "CALL obtenerArticuloPorNombre(?);";
    public static String P_GET_DETAILPRODUCTID = "CALL obtenerArticuloPorID(?);";
    public static String P_GET_DETAILPRODUCTID_CONTODO = "CALL obtenerArticuloPorIDConImagenesYVideo(?);";
    public static String P_IMAGE_USER = "CALL GetImageUser(?);";
    public static String P_ADD_PRODUCT_CONTODO = "CALL AgregarArticulo(?,?,?,?,?,?,?,?,?);";
    public static String P_MODIFY_PRODUCT_CONTODO = "CALL modificarArticulo (?, ?, ?, ?, ?, ?,?, ?, ?,?);";
    public static String CARRITO_OBTENER_NUMEROS = "CALL ObtenerFolioDePresupuestoDeUnCliente(?);";
    public static String CARRITO_AGREGAR_FOLIO = "CALL ClienteCompraArticulo(?, ?);";
    public static String CARRITO_AGREGAR_DETALLE_DE_VENTA = "CALL AgregarDetalleVenta(?);";
    public static String CARRITO_PARA_ADMINISTRADOR = "CALL obtenerPresupuestosParaAdministrador();";
    public static String TP_GET_ALL_PAGOS = "CALL obtenerTiposDePago();";
    
}
