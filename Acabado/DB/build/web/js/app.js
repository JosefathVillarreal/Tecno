$(document).ready(function() {
    //alert('Funcionando');

        //let id = $('#AgregarACarrito').val()
       // alert($("#AgregarACarrito").text());
       // alert(id);
       
       function AgregadoACarrito(){
        let id = $("#carrito").text();
        $("#carrito").text(id + 1);
       }

       
});