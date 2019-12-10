<%-- 
    Document   : index
    Created on : 16/04/2019, 01:57:54 PM
    Author     : magoc
--%>

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
PresupuestoCarrito pc = (PresupuestoCarrito)mySession.getAttribute("modificarcarrito");
Categoria categoria = new Categoria(); 
PresupuestoCarrito carritoAdministrador = new PresupuestoCarrito(); 
List<Categoria> categorias = categoria.GetAllCategories();
List<Product> productosA = producto.GetAllProductParaAdministradores(); 
List<Product> productos = producto.GetAllProductParaUsuarioGenerico();
List<PresupuestoCarrito> carritoA = carritoAdministrador.CarritoParaAdministradores();

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
            <h5>Presupuestar</h5>
          </div>
          
          <div class="cosadelalista">
          <div class="card-body">
              <form method="POST" action="modificarPresupuesto" id="usrform">
                  
                <div class="card">
                    <!--
                  <div class="card-body" id="contenidoDelasCartas">
                      <textarea rows="4" cols="50" id="area" disabled name=""></textarea>
                      <input type="text" class="form-control" id="area1" placeholder="Precio" name="comment" form="usrform" >
                    <hr>
                  </div>
                    -->
                    
                     <%
                    if(user!=null){
                        if(user.getPuesto().equals("Administrador")){
                            %>
                            <form action="modificarPresupuesto" method="POST" id="formIngresar"> 
                                <div class="text-center">
                                    <div class="card-body">
                                      
                                      <h5 class="card-title">Número del detalle de venta pendiente: <%= pc.getIdDetalleDeVenta()%></h5>
                                      <h5 class="card-title">Número de venta pendiente: <%= pc.getId()%></h5>
                                      <p class="card-text">Usuario: <%= pc.getNombreusuario()%></p>
                                      <p class="card-text">Artículo: <%= pc.getNombrearticulo()%></p>
                                      <p class="card-text">Precio tentativo(Por asignar): $ <%= pc.getPrecio()%></p>
                                      <input type="text" name="precio" id="formNombre" value="<%= pc.getPrecio()%>"><br><br><br>
                                      <a href="modificarPresupuesto?id=<%= pc.getIdDetalleDeVenta()%>" class="btn btn-primary">Presupuestar</a><br><br><br>
                                      <button id="BotonParaBuscar" type="submit"> Presupuestar </button>
                                      <hr>
                                    </div>
                                </div>
                                      <input type="text" name="idDelDetalle" value="<%= pc.getIdDetalleDeVenta()%>">
                           </form>
                           
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
