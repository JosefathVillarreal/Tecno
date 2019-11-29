<%-- 
    Document   : Registro
    Created on : 2/11/2019, 06:45:10 AM
    Author     : Josefath
--%>

<%@page import="java.util.List"%>
<%@page import="Models.Categoria"%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

HttpSession mySession = (HttpSession) request.getSession();
User user = (User)mySession.getAttribute("usuario");
Categoria categoria = new Categoria(); 
List<Categoria> categorias = categoria.GetAllCategories();

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
    <title>Registro de Usuario</title>
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
          <label>Rango de fechas</label>
          <label>Inicio</label>
          <input type="date" max="1979-12-31">
          <label>Fin</label>
          <input type="date" min="2000-01-02"><br>
          <button id="BotonParaBuscar"> Buscar <i class="fa fa-search"> <a href="BuscarV2.html"> </a> </i></button>
        </div>
    
    </div>

    <div class="main" id="main"> 

        <div class="topnav">
            <button class="openbtn" id="BotonColapsable" onclick="openNav()">☰</button> 
            <a class="active" href="index.jsp">Tecnet</a>
            <div class="login-container">
              <form action="">
                <!--
                <input type="text" id="BarraParaBuscar" placeholder="Buscar" name="username">
                -->
                <button type="button" class="btn btn-primary" id="myBtn" onclick= "modal()"><a href="Detalle.html"></a>
                  <i class="fa fa-shopping-cart" aria-hidden="true"></i><span class="badge badge-light" id="carrito">4</span>
                </button>
                <!--
                <button><i class="fa fa-search"></i></button>
                -->
                <img id="imagenavbar" src="css/images/img_snow_wide.jpg">
                <input type="text" placeholder="Username" name="username">
                <input type="text" placeholder="Password" name="psw">
                <button type="submit">Ingresar</button>
              </form>
            </div>
      </div>
    </div>

      <br>

    <div class="card text-center" id="cartagrande">
          <div class="card-header">
            <h5>Registrarse</h5>
          </div>
          <div class="card-body">
              <form method="POST" action="registroUsuario" enctype="multipart/form-data" id="agregarUsuario">
                  <div class="informacion" id="informacion">
                        <div class="form-group">
                          <img src="css/images/img_avatar.png" alt="Avatar" style="width:300px;height:300px;border-radius: 50%;" id="imagenqueseradeperfil" onclick="actualizarimagen()"><br><br>
                          <label for="exampleInputFile"  class="Etiqueta">Imagen</label><br>
                          
                          <input type="text" class="form-control" id="rutaImagen" name="nickname" disabled><br>
                          
                          <input type="file" id="Imagen" name="Imagen"><br><br>
                          <label for="exampleInputEmail1" class="Etiqueta">Nickname de usuario</label><br>
                          <input type="text" class="form-control" id="exampleInputEmail1" name="nickname" placeholder="Nickname" pattern="[a-zA-Z0-9]{6,40}" required>
                        </div>
                              
                        <div class="form-group">
                          <label for="exampleInputEmail1" class="Etiqueta">Nombre</label>
                          <input type="text" class="form-control" id="" name="nombre" placeholder="Nombre" pattern="[a-zA-Z]{3,40}">
                        </div>
                      
                        <div class="form-group">
                          <label for="exampleInputEmail1" class="Etiqueta">Ruta de la imagen</label>
                          <input type="text" class="form-control" id="ruta" name="ruta" placeholder="Nombre">
                        </div>
                      
                        <div class="form-group">
                            <label for="exampleInputEmail1" class="Etiqueta">Apellido Paterno</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="apellidop" placeholder="Apellido Paterno" pattern="[a-zA-Z]{3,40}">
                          </div>
                          <div class="form-group">
                              <label for="exampleInputEmail1" class="Etiqueta">Apellido Materno</label>
                              <input type="text" class="form-control" id="exampleInputEmail1" name="apellidom" placeholder="Apellido Materno" pattern="[a-zA-Z]{3,40}">
                            </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="Etiqueta">Dirección de correo electrónico</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" name="email" placeholder="Email" required pattern="[a-zA-Z0-9]+@[a-zA-Z0-9]+.com">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1" class="Etiqueta">Contraseña</label>
                        <input type="password" class="form-control" id="password1" name="password1" placeholder="Password" pattern="[A-Z]{1}+[a-z]{1}+[0-9]{1}" required>
                      </div>

                      <div class="form-group">
                          <label for="exampleInputPassword1" class="Etiqueta">Confirmación de contraseña</label>
                          <input type="password" class="form-control" id="password2" name="password2" placeholder="Password"pattern="[A-Z]{1}+[a-z]{1}+[0-9]{1}" required>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1" class="Etiqueta">Direccion</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" name="direccion" placeholder="Dirección">
                          </div>
                       
                              <div class="form-group">
                          <label for="exampleInputEmail1" class="Etiqueta">Télefono</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" name="telefono" placeholder="88838383">
                        </div>
                        <br>     
                        <label class="Etiqueta">Fecha de nacimiento</label><br>
                        <input type="date" max="3000-12-31" name="nacimiento"><br>
                      <br>
                      <div class="form-group">
                        <label class="Etiqueta" for="sel1">Puesto (seleccione uno):</label>
                        <select class="form-control" id="sel1" id="puesto" name="puesto">
                          <option>Cliente</option>
                          <option>Administrador</option>
                        </select>
                        <br>
                      <br>
                      <button id="botonaceptar" type="submit" class="btn btn-primary" value="Submit" onclick="">Registrarse</button>

                  </div>
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
    function actualizarimagen(){
        //rutaImagen
        var rutaimagen = document.getElementById("Imagen").value;
        var res = rutaimagen.slice(12);
        //alert(res); 
        //alert(res);
        document.getElementById("rutaImagen").value = "css/images/" + res;
        var actualizar = document.getElementById("rutaImagen").value;
        document.getElementById("imagenqueseradeperfil").src = actualizar; 
        document.getElementById("ruta").value = "css/images/" + res;
    }
</script>

<script>
    function obtenerPuesto(){
        var Administrador = document.getElementById("Administrador").value;
        var Cliente = document.getElementById("Cliente").value;
        var Cliente = document.getElementById("puestocombo").value;
        
        alert(Administrador + Cliente + puesto); 
        
        /*
        if(Administrador != null){
            alert(Cliente + Administrador); 
            document.getElementById("puesto").value = 'Cliente';
        }else{
            alert(Cliente + Administrador); 
            document.getElementById("puesto").value = 'Administrador';
        }
        */
    }
</script>



</html>