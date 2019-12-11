<%-- 
    Document   : index
    Created on : 16/04/2019, 01:57:54 PM
    Author     : magoc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Pagos"%>
<%@page import="Models.Historial"%>
<%@page import="java.lang.String"%>
<%@page import="Models.User"%>
<%@page import="Models.User"%>
<%@page import="Models.Categoria"%>
<%@page import="Models.PresupuestoCarrito"%>
<%@page import="Utils.RequestUtils"%>
<%@page import="Models.Product"%>
<%@page import="java.util.List"%>
<%@page import="javax.naming.Context"%>
<%@page import="Models.PresupuestoCarrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
HttpSession mySession = (HttpSession) request.getSession();
User user = (User)mySession.getAttribute("usuario");
List<String> carrito = (List<String>)mySession.getAttribute("carrito");
//int numero = (int)mySession.getAttribute("numero");
//List<User> users = (List<User>) request.getAttribute("users");

Product producto = new Product();     
Product product = (Product)mySession.getAttribute("producto");
PresupuestoCarrito pc = (PresupuestoCarrito)mySession.getAttribute("presupuestar");
Categoria categoria = new Categoria(); 
PresupuestoCarrito carritoAdministrador = new PresupuestoCarrito(); 
List<Categoria> categorias = categoria.GetAllCategories();
List<Product> productosA = producto.GetAllProductParaAdministradores(); 
List<Product> productos = producto.GetAllProductParaUsuarioGenerico();
List<PresupuestoCarrito> carritoA = carritoAdministrador.CarritoParaAdministradores();
Historial historia = new Historial(); 
List<Pagos> pagos = new ArrayList<Pagos>();
Pagos pago = new Pagos(); 
pagos = pago.ObtenerTodosLosTiposDePago();
List<Historial> historialdecompra = new ArrayList<Historial>(); 
List<Historial> todoelhistorial1 = historia.HistorialPorCliente(user.getNickname());
List<Historial> todoelhistorial = (List<Historial>)mySession.getAttribute("historialfiltrado");

%>

<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tecnet</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Candal|Khula&display=swap" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/MyStyle.css">
        <script
          src="https://code.jquery.com/jquery-3.4.1.min.js"
          integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
          crossorigin="anonymous"></script>
        
        <script type="text/javascript" src="js/AgregarCarta.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
    </head>
    <body>

        
    <div id="mySidebar" class="sidebar">
        <div class="card text-center" id="cartasidebar">
            
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a><br>
          <label>Nombre:</label>
          <input type="text" class="form-control" id="usr">
          <br>
          <label>Descripcion:</label>
          <input type="text" class="form-control" id="usr">
          <br>
          <label>Usuario:</label>
          <input type="text" class="form-control" id="usr">
          <br>
          <label>Categoria</label>
          <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Categoria:
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <p class="dropdown-item" >Categoria 1</p>
                <p class="dropdown-item" >Categoria 2</p>
                <p class="dropdown-item" >Categoria 3</p>
              </div>
          </div>
          <br>
          <label>Rango de fechas</label>
          <label>Inicio</label>
          <input type="date" max="1979-12-31">
          <label>Fin</label>
          <input type="date" min="2000-01-02"><br>
          <button id="BotonParaBuscar"> Buscar <i class="fa fa-search"></i></button>
        </div>
    
    </div>

    <div class="main" id="main"> 

 <div class="topnav">
                <button class="openbtn" id="BotonColapsable" onclick="openNav()">☰</button> 
                <a class="active" href="index.jsp">Tecnet</a>
                <div class="login-container">
                  <form action="logOut" method="POST" id="formIngresar">
                    <!--
                    <input type="text" id="BarraParaBuscar" placeholder="Buscar" name="username">
                    -->
                    <button type="button" class="btn btn-primary" id="myBtn" data-toggle="modal" data-target="#exampleModal"><a href="Presupuesto.jsp"></a>
                      <i class="fa fa-shopping-cart" aria-hidden="true" ></i><span class="badge badge-light" id="carrito"><%= carritoA.size() %></span>
                    </button>
                    <!--
                    <button><i class="fa fa-search"></i></button>
                    -->
                    <img id="imagenavbar" src="<%= user.getRutaImagen()%>">
                    <input type="text" placeholder="Username" name="username" id="formNombre" value="<%= user.getNickname() %>" disabled>
                    <input type="text" placeholder="Puesto" name="puesto" id="formPuesto" value="<%= user.getPuesto() %>" disabled>

                    <button type="submit" onclick="">Salir</button>
                  </form>
                </div>

      <br>

      <div class="card text-center" id="cartagrande">
        
         
              
          <!--
          <div>
               <select class="form-control"  id="comboparalista" name="comboparalista"  onchange="valor();">
                  
               </select>
          </div>
          -->
                  
          <div class="card-header" id="ParteDearribaDeLaLista">
            <h5>Historial de compra</h5>
          </div>
          
          <div class="cosadelalista">
          <div class="card-body">
                  
                <div class="card">
                     <%
                    if(user!=null){
                        if(user.getPuesto().equals("Cliente")){
                            %>
                            <form action="Filtros" method="POST" >
                            <label  class="Etiqueta">Filtrar por articulo</label>
                            <select class="form-control" id="comboparalista"  name="producto">
                            <%
                                for(Product p : productos){
                            %>
                            <option value="<%= p.getId() %>">
                            <%= p.getNombre()%>
                            </option>
                            <%
                                }
                            %>
                            </select><br>
                            <label  class="Etiqueta">Filtrar por tipo de pago</label>
                             <select class="form-control" id="comboparalista"  name="pago">
                            <%
                                for(Pagos p : pagos){
                            %>
                            <option value="<%= p.getId() %>">
                            <%= p.getNombre()%>
                            </option>
                            <%
                                }
                            %>
                             </select><br>
                             
                            <label  class="Etiqueta">Ordenar por fecha</label>
                            <select class="form-control" id="comboparalista"  name="orden">
                            <option value="0">
                            Ascendente
                            </option>
                            <option value="1">
                            Descendente
                            </option>
                             </select><br>
                             
                             <!--
                            <label  class="Etiqueta">Inicio</label>
                                <input type="date" name="fechainicio" min="1979-12-31">
                            <label  class="Etiqueta">Fin</label>
                            <input type="date"  name="fechafin" min="2000-01-02"><br><br>
                             -->
                            <button id="BotonParaBuscar"> Filtrar <i class="fa fa-search"></i></button><br><br><hr>
                            </form>
                            <%
                                if(todoelhistorial != null){
                                    historialdecompra = todoelhistorial; 
                                }else{
                                    historialdecompra = todoelhistorial1; 
                                }
                                
                                for(Historial h : historialdecompra){
                            %>
                            <div class="text-center">
                            <div class="card-body">
                              <h5 class="card-title">Nombre del articulo: <%= h.getNombrearticulo()%></h5>
                              <h5 class="card-title">Cantidad: <%= h.getCantidad()%></h5>
                              <p class="card-text">Fecha de compra: <%= h.getFechaString()%></p>
                              <p class="card-text">Subtotal: $ <%= h.getPrecio()%></p>
                              <p class="card-text">Total de la compra: $ <%= h.getTotal()%></p>
                              <p class="card-text">Número de la venta:  <%= h.getId()%></p>
                              <p class="card-text">Tipo de pago:  <%= h.getPago()%></p>
                            </div>
                            </div><br><hr>
                            <%
                                }
                            %>
                           
                            <%
                                }
                                }
                            %>
                    </div>

        </div>

        
      </div>
    
      </div>
     
        <footer>
        <small>Información de contacto: </small>
        <small>Josefat A. Villarreal Salazar</small>
        <small>josefath98@gmail.com</small>
        </footer>
        
    </body>
       
  <script>
    function openNav() {
      document.getElementById("mySidebar").style.width = "250px";
      document.getElementById("main").style.marginLeft = "250px";
    }
    
    function closeNav() {
      document.getElementById("mySidebar").style.width = "0";
      document.getElementById("main").style.marginLeft= "0";
    }
</script>

  <script>
  var slideIndex = 1;
  showSlides(slideIndex);
  
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }
  
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }
  
  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("demo");
    var captionText = document.getElementById("caption");
    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    captionText.innerHTML = dots[slideIndex-1].alt;
  }

  </script>

  <script>
      function obtenercookie(){
          document.getElementById('formNombre').disabled = true;
      }
  </script>
  
  <script>
      function botonpresionado(){
          
        var usuario = document.getElementById('formNombre').value;
        
          if(usuario != null){
              var usuario = document.getElementById('formNombre').value;
          }else{
              alert('Por favor, ingresa a tu cuenta');
          }
          
      }
  </script>
  
  <script>
      function agregarACarrito(){
      }
      
  </script>
  
  <script>
      function formModificar(){
        
          var frm = document.getElementById('formModificarEliminar');
          
          if(frm){
          frm.action = 'consultaProducto?id=' + '<' + '%' + '=' + 'p.getid()'+'%'+'>' ;
          alert('modificarProducto?id=' + '<' + '%' + '=' + 'p.getid()'+'%'+'>');
      }
       // document.getElementById('formModificarEliminar').action="consultaProducto?id=//*///%=
          //p.getId()%>"; 
        
 //       var frm = document.getElementById('search-theme-form') || null;
//if(frm) {
  // frm.action = 'whatever_you_need.ext' 
}
      }
  </script>
  
  
  </html>
