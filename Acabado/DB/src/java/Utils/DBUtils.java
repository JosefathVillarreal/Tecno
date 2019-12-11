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
    public static String P_FILTROS = "CALL ArticulosPorFiltros(?,?,?,?,?);";
    public static String U_AUTENCTICATION_CON_IMAGEN = "CALL autenticacionConImagen(?);";
    public static String P_ADD_USER = "CALL AddUser(?,?);";
    public static String U_ADD_USERWITHIMAGEN = "CALL AddUser(?,?);";
    public static String U_ADD_USER_CON_TODO = "CALL AgregarUsuariosConPuestoEImagen(?,?,?,?,?,?,?,?,?,?,?,?);";
    public static String P_REMOVE_USER = "CALL RemoveUser(?);";
    public static String P_GETALL_USER = "CALL obtenerUsuarios();";
    public static String P_GETALL_PRODUCTSWITHOUTSESSION = "CALL obtenerArticulosSinUsuario();";
    public static String P_REMOVE_PRODUCT = "CALL EliminarArticuloPorID(?);";
    public static String P_GETALL_PRODUCTSPARAADMINISTRADORES = "CALL obtenerArticulosParaAdministrador();";
    public static String P_GETALL_PRODUCTSPARA_CLIENTES = "CALL obtenerArticulosPorUsuario(?);";
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
    public static String PC_OBTENER_PRESUPUESTO = "CALL obtenerPresupuestoPorID(?);";
    public static String PC_OBTENER_CARRITO_POR_ID = "CALL obtenerCarritoPorID(?);";
    public static String PC_OBTENER_PRESUPUESTO_PARA_CLIENTES = "CALL obtenerPresupuestoParaClientes(?);";
    public static String PC_MODIFICAR_PRECIO_DEL_PRESUPUESTO_ADMINISTRADOR = "CALL ModificarPrecioDelPresupuestoAdministrador(?,?);";
    public static String PC_ELIMINAR_DETALLEDEVENTA_PRESUPUESTO = "CALL ElimminarPresupuestoCliente(?);"; 
    public static String PC_MANDAR_A_CARRITO_CLIENTE = "CALL MandarACarritoCliente(?);";
    public static String PC_OBTENER_CARRITO_PARA_CLIENTES = "CALL obtenerCarritoParaClientes(?);";
    public static String PC_MODIFICAR_CANTIDAD_DETALLE_CARRITO = "CALL ModificarCantidadClienteDeCarritoDetalle(?,?,?);"; 
    public static String H_AGREGAR_FOLIO ="CALL AgregarHistorialFolio(?,?,?);"; 
    public static String H_AGREGAR_DETALLE ="CALL AgregarHistorialDetalleVenta(?);"; 
    public static String H_OBTENER_HISTORIAL_POR_CLIENTE = "CALL ObtenerHistorialDeCompraPorUsuario(?);"; 
    public static String H_OBTENER_HISTORIAL_POR_CLIENTE_CON_FILTROS = "CALL ObtenerHistorialDeCompraPorUsuarioConFiltros(?,?,?,?);"; 
    public static String V_AGREGAR_VALORACION_DE_PRODUCTO = "CALL AgregarValoracionAProducto(?,?,?,?);";
    public static String V_OBTENER_COMENTARIOS_POR_ARTICULO = "CALL ObtenerComentariosPorArticulo(?);";
    public static String P_OBTENER_DESTACADOS ="CALL ObtenerDestacados();";
    public static String P_OBTENER_PRODUCTOS_POR_FILTRO_DE_CATEGORIA ="CALL ObtenerArticuloFiltradoPorCategoria(?);";
    public static String P_OBTENER_PRODUCTOS_POR_FILTRO_DE_CATEGORIA_PARA_ADMINISTRADOR ="CALL ObtenerArticulosFiltradoPorCategoriaParaAdministrador(?);";
    
}
