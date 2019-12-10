<%-- 
    Document   : Presupuesto
    Created on : 26/11/2019, 01:56:08 AM
    Author     : Josefath
--%>

<%@page import="Models.Pagos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Models.Product"%>
<%@page import="java.util.List"%>
<%@page import="Models.Categoria"%>
<%@page import="Models.User"%>
<%@page import="Models.PresupuestoCarrito"%>

<%

HttpSession mySession = (HttpSession) request.getSession();
User user = (User)mySession.getAttribute("usuario");
Product producto = new Product();     
Product product = (Product)mySession.getAttribute("producto");
Categoria categoria = new Categoria(); 
PresupuestoCarrito carritoAdministrador = new PresupuestoCarrito(); 
List<Categoria> categorias = categoria.GetAllCategories();
List<Product> productosA = producto.GetAllProductParaAdministradores(); 
List<Product> productos = producto.GetAllProductParaUsuarioGenerico();
List<String> carrito = (List<String>)mySession.getAttribute("carrito");
List<PresupuestoCarrito> carritoA = carritoAdministrador.CarritoParaAdministradores();
List<PresupuestoCarrito> carritoB = new ArrayList<PresupuestoCarrito>();
List<Pagos> pagos = new ArrayList<Pagos>();
Pagos pago = new Pagos(); 
pagos = pago.ObtenerTodosLosTiposDePago();

if(user!=null){
            if(user.getPuesto().equals("Administrador")){
            carritoA = carritoAdministrador.CarritoParaAdministradores();
            }else{
            carritoA = carritoAdministrador.CarritoParaClientes(user.getNickname());
            carritoB = carritoAdministrador.PresupuestoParaClientes(user.getNickname());
            }
}

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Candal|Khula&display=swap" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/MyStyle.css">
<script type="text/javascript" src="js/modal.js"></script>
<script type="text/javascript" src="js/Modal1.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Presupuesto/Carrito</title>
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
    </div>
      <br>

    <div class="card text-center" id="cartagrande">
            
          <div class="card-header" id="ParteDearribaDeLaLista">
            <h5>Confirmación de carrito</h5>
          </div>
          
          <div class="cosadelalista">
          <div class="card-body">
              
                  
                <div class="card">
                   
                            <%
                    if(user!=null){
                            %>
                            <!-- Aquí está para mandar a historial de compras al fin -->
                            <form method="POST" action="Compras" id="usrform">
                            <select class="form-control" multiple id="comboparalista"  name="listacarrito" form="usrform" onchange="valor();">
                            <%
                                for(PresupuestoCarrito p : carritoA){
                            %>
                            <option value="<%= p.getIdDetalleDeVenta()%>">
                            <%= p.getNombrearticulo()%>
                            </option>
                            <%
                                }
                            %>
                            </select>
                            <br>
                            <select class="form-control" id="comboparalista"  name="listapagos" form="usrform" onchange="valor();">
                            <%
                                for(Pagos p : pagos){
                            %>
                            <option value="<%= p.getId() %>">
                            <%= p.getNombre()%>
                            </option>
                            <%
                                }
                            %>
                            </select>
                            <br>
                            <button type="submit" >Confirmar compra</button>
                            <br>
                            <br>
                            <br><br><br><hr>
                                <%
                                    }
                                    %>
                            </form>
                </div>
                </div>

      </div>    
      </div>
    
      <footer>
          <small>Información de contacto: </small>
          <small>Josefat A. Villarreal Salazar</small>
          <small>josefath98@gmail.com</small>
      </footer>
    
    </div>

</body>


<script>
  // Get the modal
  var modal = document.getElementById("myModal");
  
  // Get the image and insert it inside the modal - use its "alt" text as a caption
  var img = document.getElementById("myImg");
  var modalImg = document.getElementById("img01");
  var captionText = document.getElementById("caption");
  img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
  }
  
  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];
  
  // When the user clicks on <span> (x), close the modal
  span.onclick = function() { 
    modal.style.display = "none";
  }
  
  </script>

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
    function valor(){
        var valor = document.getElementById("comboparalista").value;
        var area1 = document.getElementById("area1").value;
        var area = document.getElementById("area").value;
        //alert(valor);
        //alert(area);
        
        
        //if(area == ""){
            //document.getElementById("area").value = valor; 
           // document.getElementById("area1").value = area + "|" + area1; 
          //  return false;
        //}else{
          //document.getElementById("area").value = valor; 
        //}else{
             //document.getElementById("area").value = area + ' , ' valor;
            
      //  }
       // var proximoname = document.getElementById("NombreDeArtículo").name;
       
       //alert(proximoname); 
       //var node = document.createElement("input );
       //var textnode = document.createTextNode(valor);
       //node.appendChild(textnode);
       //document.getElementById("myList").appendChild(node); 
       
       /*
       var input = document.createElement("input");
       input.setAttribute('type', 'text');
       input.setAttribute('value', valor);
       input.setAttribute('disabled', true);
       input.setAttribute('id', 'NombreDeArticulo');
       input.setAttribute('name', 'comment');
       input.setAttribute('form', 'usrform');
       var parent = document.getElementById("contenidoDelasCartas");
       parent.appendChild(input);
       */
       
    }
    
</script>

<script>
    function valorPresupuesto(){
        
       document.getElementById("NombreDeArticulo").value;
       
    }
    
</script>

</html>            