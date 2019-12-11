
<%@page import="Models.Comentario"%>
<%@page import="Models.Product"%>
<%@page import="java.util.List"%>
<%@page import="Models.Categoria"%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

HttpSession mySession = (HttpSession) request.getSession();
User user = (User)mySession.getAttribute("usuario");
Product product = (Product)mySession.getAttribute("producto");
Categoria categoria = new Categoria(); 
List<Categoria> categorias = categoria.GetAllCategories();
List<Comentario> todosloscomentarios = (List<Comentario>)mySession.getAttribute("comentarios");
List<String> carrito = (List<String>)mySession.getAttribute("carrito");

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
    <title>Detalle de producto</title>
</head>
         <!-- Administrador -->
<body>
             
             <div id="mySidebar" class="sidebar">
<div class="card text-center" id="cartasidebar">
    <form>
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
  <label>Categoria:</label>
      </button>
       <select class="form-control" id="sel1" id="categoria" name="categoria">
        <%
        for(Categoria c : categorias){
        %>  
           <option><%= c.getNombre() %></option>
        <%
          }  
        %>     
       </select>
  <br>
  <label>Rango de fechas</label>
  <label>Inicio</label>
  <input type="date" max="1979-12-31">
  <label>Fin</label>
  <input type="date" min="2000-01-02"><br>
  <button id="BotonParaBuscar"> Buscar <i class="fa fa-search"> <a href="BuscarV2.html"> </a> </i></button>
  </form>
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
        <%
                if(user != null){
        %>
        <button type="button" class="btn btn-primary" id="myBtn" data-toggle="modal" data-target="#exampleModal"><a href="Presupuesto.jsp"></a>
            <%
                if(carrito != null){
            %>
              <i class="fa fa-shopping-cart" aria-hidden="true" ></i><span class="badge badge-light" id="carrito"><%= carrito.size() %></span>
            <%
                }else{
            %>
              <i class="fa fa-shopping-cart" aria-hidden="true" ></i><span class="badge badge-light" id="carrito">+</span>
            <%
                }
            %>
            
        </button>
        <%
                }
        %>
        <!--
        <button><i class="fa fa-search"></i></button>
        -->
        
        <%
           if(user!=null){ //Si existe usuario
             if(user.getPuesto().equals("Administrador")){
                 //Y es administrador
        %>
        <img id="imagenavbar" src="<%= user.getRutaImagen()%>">
        <!--
        <img id="imagenavbar" src="ControlerIMG?username=<%= user.getNickname()%>">
        
        -->
            <input type="text" placeholder="Username" name="username" id="formNombre" value=" <%= user.getNickname() %>" disabled>
            <input type="text" placeholder="Puesto" name="puesto" id="formPuesto" value="<%= user.getPuesto() %>" disabled>
            <button type="submit" onclick="">Salir</button>
            <a href="detalleProducto.jsp">+</a>

        <%
             }else{
                 //Es cliente nada más
        %>
        <img id="imagenavbar" src="ControlerIMG?username=<%= user.getNickname()%>">
        <!--
        <img id="imagenavbar" src="<%= user.getRutaImagen()%>">
        -->
            <input type="text" placeholder="Username" name="username" id="formNombre" value=" <%= user.getNickname() %>" disabled>
            <input type="text" placeholder="Puesto" name="puesto" id="formPuesto" value="<%= user.getPuesto() %>" disabled>
            <button type="submit" onclick="">Salir</button>
            
        <%
             }
           }else{
           // Es usuario básico
        %>
        <img id="imagenavbar" src="css/images/img_snow_wide.jpg">
            <input type="text" placeholder="Username" name="username" id="formNombre" value="">
            <input type="password" class="form-control" placeholder="Puesto" name="puesto" id="formPuesto" value="">
            <button type="submit" onclick="">Ingresar</button>
        <%
           }
        %>
      </form>
    </div>
</div>

<br>

<div class="card text-center" id="cartagrande">

  <div class="card-header">
    <h5>Detalle de productos</h5>
  </div>
  <div class="card-body">
      
      <video width="100%" controls>
          <source src="<%=product.getVideo()%>" id="videouno" type="video/mp4">
      </video>
        
      <div>
          <img src="<%=product.getRuta()%>" alt="Avatar" style="width:40%;height:40%;border-radius: 50%;" id="imagenuno" onclick="actualizarimagenes()">
          <img src="<%=product.getRuta1()%>" alt="Avatar" style="width:40%;height:40%;border-radius: 50%;" id="imagendos">
      </div>
      <form method="POST" action="agregarProducto">
          <div class="informacion" id="informacion">
            
                <div class="form-group">
                  <label for="exampleInputEmail1"  class="Etiqueta">Producto</label>
                  <input type="text" class="form-control" id="nombreproducto" placeholder="Nombre" value="<%=product.getNombre()%>" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"  class="Etiqueta">Descripción</label>
                    <input type="text" class="form-control" id="descripcionproducto" placeholder="Descripcion" value="<%=product.getDescripcion()%>" disabled>
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1"  class="Etiqueta">Precio</label>
                      <input type="text" class="form-control" id="precioproducto" placeholder="Precio" value="<%=product.getPrecio()%>" disabled>
                    </div>
              <div class="form-group">
                <label for="exampleInputEmail1"  class="Etiqueta">Unidades</label>
                <input type="text" class="form-control" id="unidadesproducto" placeholder="Unidades" value="<%=product.getUnidades()%>" disabled>
              </div>
              <label  class="Etiqueta">Fecha de registro</label>
                <input type="date" max="3000-12-31" id="fechaproducto" value="<%=product.getFecha()%>" disabled><br><br>
                        </button>
             <label  class="Etiqueta">Categoria</label>
              <select class="form-control" id="sel1" id="categoria" name="categoria" disabled>
                        <%
                        for(Categoria c : categorias){
                            
                        if(product.getCategoria().equals(c.getNombre())){
                        %>  
                           <option selected><%= c.getNombre()%></option>
                        <%}else{
                          %>
                            <option><%= c.getNombre()%></option>
                          <%
                            }
                          }  
                        %>     
                       </select>
                    <br>
              <br>
              
          </div>
       </form>

  </div>
                       
                       <%
                       for(Comentario comentario : todosloscomentarios){
                       %>
                       <hr>
                       <div>
                           <p><%= comentario.getUsuario()%></p>
                           <p><%= comentario.getComentario()%></p>
                           <small  class="Etiqueta"><%= comentario.getFechaString()%></small>
                           <%
                               if(comentario.getValoracion() == 0){
                           %>
        
                             <button type="button" class="btn btn-secondary" id="Dislike" ><i class="fa fa-thumbs-down" aria-hidden="true"></i></span></button>
                           <%
                               }else{
                           %>
                             <button type="button" class="btn btn-secondary" id="Like"><i class="fa fa-thumbs-up" aria-hidden="true"></i></span></button>
                           <%
                               }
                           %>
                       </div><br><hr>
                       
                       <%
                           }
                       %>
</div>
</div>

<footer>
<small>Información de contacto: </small>
<small>Josefat A. Villarreal Salazar</small>
<small>josefath98@gmail.com</small>
</footer>
             
         </body>
         <!-- Administrador -->   
 
         
         
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
    function validarusuario(){
        var usuario = document.getElementById("formNombre").value;
        if(usuario == "" || usuario == null ){
            alert("Por favor acceda a su cuenta"); 
        }else{
            alert("Se pudo agregar a tu presupuesto"); 
        }
    }
    
</script>

<script>
    function limpiarpagina(){
        document.getElementById("nombreproducto").value = "";
        document.getElementById("nombreproducto").disabled = false; 
        document.getElementById("descripcionproducto").value = "";
        document.getElementById("descripcionproducto").disabled = false; 
        document.getElementById("precioproducto").value = "";
        document.getElementById("precioproducto").disabled = false; 
        document.getElementById("unidadesproducto").value = "";
        document.getElementById("unidadesproducto").disabled = false; 
        document.getElementById("fechaproducto").value = "";
        document.getElementById("fechaproducto").disabled = false; 
        document.getElementById("videouno").src = ""; 
        document.getElementById("imagenuno").src = ""; 
        document.getElementById("imagendos").src = ""; 
        document.getElementById("archivoimagenuno").hidden = false; 
        document.getElementById("archivoimagendos").hidden = false; 
        document.getElementById("archivovideo").hidden = false; 
        document.getElementById("etiquetas").hidden = false; 
        
    }
    
</script>

<script>
function actualizarimagenes(){
        //rutaImagen
        var rutaimagenuno = document.getElementById("archivoimagenuno").value;
        var rutaimagendos = document.getElementById("archivoimagendos").value;
        var rutavideo = document.getElementById("archivovideo").value;
        var res1 = rutaimagenuno.slice(12);
        var res2 = rutaimagendos.slice(12);
        var res3 = rutavideo.slice(12);
        //alert(res1 + " " + res2 + " " + res3);
        //alert(res); 
        //alert(res);
        //document.getElementById("videouno").src = ""; 
        //document.getElementById("imagenuno").src = ""; 
        //document.getElementById("imagendos").src = ""; 
        //document.getElementById("imagenuno").value = "css/images/" + res1;
        //var actualizar = document.getElementById("archivoimagenuno").value;
        
        var video = document.getElementById('videouno');
        var rutavideo = "css/images/" + res3
        var source = document.createElement('source');
        source.setAttribute('src',rutavideo);
        //alert(rutavideo); 
        document.getElementById("imagenuno").src = "css/images/" + res1; 
        document.getElementById("imagendos").src = "css/images/" + res2;
        document.getElementById("rutaaimagen1").value = "css/images/" + res1;
        document.getElementById("rutaaimagen2").value = "css/images/" + res2;
        document.getElementById("rutaavideo").value = "css/images/" + res3;
        //document.getElementById("videouno").src;
        

        //alert(rutavideo);
         //= "css/images/" + res3; 
        //document.getElementById("ruta").value = "css/images/" + res;
    }
</script>

<script>
    function modificarpagina(){
        document.getElementById("nombreproducto").disabled = false; 
        document.getElementById("descripcionproducto").disabled = false; 
        document.getElementById("precioproducto").disabled = false; 
        document.getElementById("unidadesproducto").disabled = false; 
        document.getElementById("fechaproducto").disabled = false; 
        document.getElementById("videouno").src = ""; 
        document.getElementById("imagenuno").src = ""; 
        document.getElementById("imagendos").src = ""; 
        document.getElementById("archivoimagenuno").hidden = false; 
        document.getElementById("archivoimagendos").hidden = false; 
        document.getElementById("archivovideo").hidden = false; 
        document.getElementById("etiquetas").hidden = false; 
        document.getElementById("categoria").disabled = true; 
        document.getElementById("rutaaimagen1").disabled = true; 
        document.getElementById("rutaaimagen2").disabled = true; 
        document.getElementById("rutaavideo").disabled = true;
        document.getElementById("rutaaimagen1").hidden = false; 
        document.getElementById("rutaaimagen2").hidden = false; 
        document.getElementById("rutaavideo").hidden = false;
       
       var nombre = document.getElementById("nombreproducto").value; 
       if(nombre != ""){
           alert('No está vacio');
       }else{
            alert('Está vacio');
       }
       
        
    }
    
</script>

</html>