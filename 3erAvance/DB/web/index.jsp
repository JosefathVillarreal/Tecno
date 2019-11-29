<%-- 
    Document   : index
    Created on : 16/04/2019, 01:57:54 PM
    Author     : magoc
--%>

<%@page import="java.lang.String"%>
<%@page import="Models.User"%>
<%@page import="Models.User"%>
<%@page import="Models.Categoria"%>
<%@page import="Utils.RequestUtils"%>
<%@page import="Models.Product"%>
<%@page import="java.util.List"%>
<%@page import="javax.naming.Context"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
HttpSession mySession = (HttpSession) request.getSession();
User user = (User)mySession.getAttribute("usuario");
List<String> carrito = (List<String>)mySession.getAttribute("carrito");
//int numero = (int)mySession.getAttribute("numero");
//List<User> users = (List<User>) request.getAttribute("users");
    
Product producto = new Product();     
List<Product> productosA = producto.GetAllProductParaAdministradores(); 
List<Product> carritoA = producto.CarritoParaAdministradores();
List<Product> productos = producto.GetAllProductParaUsuarioGenerico();
Categoria categoria = new Categoria(); 
List<Categoria> categorias = categoria.GetAllCategories();

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
    <%
        if(user!=null){
            if(user.getPuesto().equals("Administrador")){
            
    %>
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
               <select class="form-control" id="sel1" id="puesto" name="puesto">
                <%
                for(Categoria c : categorias){
                %>  
                   <option><%= c.getNombre() %></option>
                <%
                  }  
                %>     
               </select>
          <br>
          <br>
          <label>Rango de fechas</label><br>
          <label>Inicio</label><br>
          <input type="date" max="1979-12-31"><br>
          <label>Fin</label><br>
          <input type="date" min="2000-01-02"><br><br>
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
            <button type="button" class="btn btn-primary" id="myBtn" data-toggle="modal" data-target="#exampleModal"><a href="Presupuesto.jsp"></a>
              <i class="fa fa-shopping-cart" aria-hidden="true" ></i><span class="badge badge-light" id="carrito"><%= carritoA.size() %></span>
            </button>
            <!--
            <button><i class="fa fa-search"></i></button>
            -->
            <img id="imagenavbar" src="<%= user.getRutaImagen()%>">
            <input type="text" placeholder="Username" name="username" id="formNombre" value="<%= user.getNickname() %>" disabled>
            <input type="text" placeholder="Puesto" name="puesto" id="formPuesto" value="<%= user.getPuesto() %>" disabled>
            <a href="agregarProduct">+</a>
            
           <button type="submit" onclick="">Salir</button>
          </form>
        </div>
  </div>

    <div id="carrusel">
    <div class="mySlides">
      <img src="css/images/img_woods_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_5terre_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_mountains_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_lights_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_nature_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_snow_wide.jpg" style="width:100%">
    </div>

  
<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>
</div>

    <div class="caption-container">
     <p id="caption"></p>
    </div>

    <div class="row" id="lodeabajodelcarrusel">
    <div class="column">
      <img class="demo cursor" src="css/images/img_woods_wide.jpg" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_5terre_wide.jpg" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_mountains_wide.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_lights_wide.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_nature_wide.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
    </div>    
    <div class="column">
      <img class="demo cursor" src="css/images/img_snow_wide.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
    </div>
  </div>

    <div class="container-fluid">
  
  <div class="row" id="contenedordelascartas">

  <%
      
                for(Product p : productosA){
  %>      
  
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
          <form action="consultaProducto?id=<%= p.getId()%>" method="GET">
        <img src="<%= p.getRutaImagen()%>" alt="Avatar" style="width:300px;height:300px;">
      </div>
      <div class="flip-card-back">
         <a href="consultaProducto?id=<%= p.getId()%>"><input type="text" name="fname" id="NombreArticulo" value="<%= p.getNombre()%>" disabled></a>
        <hr>
        <!--
        <h1><%= p.getDescripcion()%></h1>
        -->
        <input type="text" name="fdescripcion" id="DescripcionArticulo" value="<%= p.getDescripcion()%>" disabled>
        <p id="Precio">$ <%= p.getPrecio()%> apróx</p> 
        <small># <%= p.getCategoria()%></small><br>
        <% 
        if(p.getBorradorOPublicado() == 0){
        %>
        <small id="borradorOPublicado">Borrador</small><br><br> 
        <% 
            }  else {

        %>
        <small id="borradorOPublicado">Publicado</small><br><br> 
        <% 
            } 

        %>
        <a href="modificarProducto?id=<%= p.getId()%>"><small> Modificar </small></a>
        <a href="eliminaProducto?id=<%= p.getId()%>"><small> Eliminar </small></a>
      </div>
    </div>
  </form>
  </div>
 
  <%
                }
  %>
  
  </div>

<footer>
  <small>Información de contacto: </small>
  <small>Josefat A. Villarreal Salazar</small>
  <small>josefath98@gmail.com</small>
</footer>

        
    </body>
     <%
            }else{

     %> 
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
                  <label>Rango de fechas</label><br>
                  <label>Inicio</label><br>
                  <input type="date" max="1979-12-31"><br>
                  <label>Fin</label><br>
                  <input type="date" min="2000-01-02"><br><br>
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
                    if (carrito!=null){
                    %>
                    <button type="button" class="btn btn-primary" id="myBtn" data-toggle="modal" data-target="#exampleModal"><a href="Presupuesto.jsp"></a>
                        <i class="fa fa-shopping-cart" aria-hidden="true" ></i><span class="badge badge-light" id="carrito"><%= carrito.size() %></span>
                    </button>
                    <%
                    }else{
                    %>
                     <button type="button" class="btn btn-primary" id="myBtn" data-toggle="modal" data-target="#exampleModal"><a href="Presupuesto.jsp"></a>
                      <i class="fa fa-shopping-cart" aria-hidden="true" ></i><span class="badge badge-light" id="carrito">+</span>
                    </button>
                    <%
                    }
                    %>
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

            <div id="carrusel">
            <div class="mySlides">
              <img src="css/images/img_woods_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
              <img src="css/images/img_5terre_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
              <img src="css/images/img_mountains_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
              <img src="css/images/img_lights_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
              <img src="css/images/img_nature_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
              <img src="css/images/img_snow_wide.jpg" style="width:100%">
            </div>


        <a class="prev" onclick="plusSlides(-1)">❮</a>
        <a class="next" onclick="plusSlides(1)">❯</a>
        </div>

            <div class="caption-container">
             <p id="caption"></p>
            </div>

            <div class="row" id="lodeabajodelcarrusel">
            <div class="column">
              <img class="demo cursor" src="css/images/img_woods_wide.jpg" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
            </div>
            <div class="column">
              <img class="demo cursor" src="css/images/img_5terre_wide.jpg" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
            </div>
            <div class="column">
              <img class="demo cursor" src="css/images/img_mountains_wide.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
            </div>
            <div class="column">
              <img class="demo cursor" src="css/images/img_lights_wide.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
            </div>
            <div class="column">
              <img class="demo cursor" src="css/images/img_nature_wide.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
            </div>    
            <div class="column">
              <img class="demo cursor" src="css/images/img_snow_wide.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
            </div>
          </div>

            <div class="container-fluid">

          <div class="row" id="contenedordelascartas">

          <%

                        for(Product p : productos){
          %>      

          <div class="flip-card">
            <div class="flip-card-inner">
                <form action="consultaProducto?id=<%= p.getId()%>" method="GET" id="formModificarEliminar">
              <div class="flip-card-front">
                <img src="<%= p.getRutaImagen()%>" alt="Avatar" style="width:300px;height:300px;">
              </div>
              <div class="flip-card-back">
                 <a href=""><input type="text" name="fname" id="NombreArticulo" value="<%= p.getNombre()%>" disabled></a>
                <hr>
                <!--
                <h1><%= p.getDescripcion()%></h1>
                -->
                <input type="text" name="fdescripcion" id="DescripcionArticulo" value="<%= p.getDescripcion()%>" disabled>
                <p id="Precio">$ <%= p.getPrecio()%> apróx</p> 
                <small># <%= p.getCategoria()%></small>
                <button type="button" class="btn btn-primary" id="AgregarACarrito" onclick="validasihaysesioniniciada()"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></span></button>
                <hr>
                <button type="button" class="btn btn-secondary" id="Like"><i class="fa fa-thumbs-up" aria-hidden="true" onclick="validasihaysesioniniciada()"></i></span></button>
                <button type="button" class="btn btn-secondary" id="Dislike"><i class="fa fa-thumbs-down" aria-hidden="true" onclick="validasihaysesioniniciada()"></i></span></button>
              </div>
                </form>
            </div>
          </div>

          <%
                        }
          %>

          </div>
        
         
     </body>
     <%
            }

     %>
     <%
        }else{
     %>
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
               <select class="form-control" id="sel1" id="puesto" name="puesto">
                <%
                for(Categoria c : categorias){
                %>  
                   <option><%= c.getNombre() %></option>
                <%
                  }  
                %>     
               </select>
          <br>
          <br>
          <label>Rango de fechas</label><br>
          <label>Inicio</label><br>
          <input type="date" max="1979-12-31"><br>
          <label>Fin</label><br>
          <input type="date" min="2000-01-02"><br><br>
          <button id="BotonParaBuscar"> Buscar <i class="fa fa-search"> <a href="BuscarV2.html"> </a> </i></button>
          </form>
              
        </div>
    
    </div>
        
    <div class="main" id="main"> 

    <div class="topnav">
        <button class="openbtn" id="BotonColapsable" onclick="openNav()">☰</button> 
        <a class="active" href="index.jsp">Tecnet</a>
        <div class="login-container">
          <form action="autenticacion" method="POST" id="formIngresar">
            <!--
            <input type="text" id="BarraParaBuscar" placeholder="Buscar" name="username">
            
            <button type="button" class="btn btn-primary" id="myBtn" data-toggle="modal" data-target="#exampleModal"><a href="Presupuesto.jsp"></a>
              <i class="fa fa-shopping-cart" aria-hidden="true" ></i><span class="badge badge-light" id="carrito">+</span>
            </button>
            <!--
            <button><i class="fa fa-search"></i></button>
            -->
            <img id="imagenavbar" src="css/images/img_avatar.png">
            <input type="text" placeholder="Username" name="username" id="formNombre">
            <input type="text" placeholder="Password" name="password" id="formPassword">
            <button type="submit" onclick="">Ingresar</button>
          </form>
        </div>
  </div>

    <div id="carrusel">
    <div class="mySlides">
      <img src="css/images/img_woods_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_5terre_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_mountains_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_lights_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_nature_wide.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <img src="css/images/img_snow_wide.jpg" style="width:100%">
    </div>

  
<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>
</div>

    <div class="caption-container">
     <p id="caption"></p>
    </div>

    <div class="row" id="lodeabajodelcarrusel">
    <div class="column">
      <img class="demo cursor" src="css/images/img_woods_wide.jpg" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_5terre_wide.jpg" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_mountains_wide.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_lights_wide.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
    </div>
    <div class="column">
      <img class="demo cursor" src="css/images/img_nature_wide.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
    </div>    
    <div class="column">
      <img class="demo cursor" src="css/images/img_snow_wide.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
    </div>
  </div>

    <div class="container-fluid">
  
  <div class="row" id="contenedordelascartas">

  <%
      
                for(Product p : productos){
  %>      
  
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
          <form action="consultaProducto?id=<%= p.getId()%>" method="GET">
        <img src="<%= p.getRutaImagen()%>" alt="Avatar" style="width:300px;height:300px;">
      </div>
      <div class="flip-card-back">
         <a href="consultaProducto?id=<%= p.getId()%>"><input type="text" name="fname" id="NombreArticulo" value="<%= p.getNombre()%>" disabled></a>
        <hr>
        <!--
        <h1><%= p.getDescripcion()%></h1>
        -->
        <input type="text" name="fdescripcion" id="DescripcionArticulo" value="<%= p.getDescripcion()%>" disabled>
        <p id="Precio">$ <%= p.getPrecio()%> apróx</p> 
        <small># <%= p.getCategoria()%></small>
        <button type="button" class="btn btn-primary" id="AgregarACarrito" onclick="botonpresionado()"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></span></button>
        <hr>
        <button type="button" class="btn btn-secondary" id="Like" onclick="botonpresionado()"><i class="fa fa-thumbs-up" aria-hidden="true"></i></span></button>
        <button type="button" class="btn btn-secondary" id="Dislike" onclick="botonpresionado()"><i class="fa fa-thumbs-down" aria-hidden="true"></i></span></button>
      </div>
    </div>
  </form>
  </div>
 
  <%
                }
  %>
  
  </div>

<footer>
  <small>Información de contacto: </small>
  <small>Josefat A. Villarreal Salazar</small>
  <small>josefath98@gmail.com</small>
</footer>

</div>

    </body>
     <%
        }
     %>
     
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
