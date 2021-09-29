

$(document).ready(function (){
    $("tr #btnDelete").click(function () {
        var idp = $(this).parent().find('#idp').val();
        swal({
    title: "Esta Seguro de Eliminar?",
    text: "Una una Vez Eliminado, Debera Agregar de Nuevo!",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
         eliminar(idp);
           swal("  ¡Producto Eliminado Del Carrito! ", {
      icon: "success",
    }).then((willDelete)=>{
       if(willDelete){
           parent.location.href="CompraCarrito?accion=Carrito";
       }
    });
  } else {
    swal("Producto no Eliminado!");
  }
});

     
    });
    function eliminar(idp){
        var url="CompraCarrito?accion=Delete";
        $.ajax({
            type : 'POST',
            url: url,
            data: "idp="+idp,
            success: function (data, textStatus, jqXHR){
               
            }
        });
    }
   
        $("tr #Cantidad").click(function () {
    var idp = $(this).parent().find("#idpro").val();
    var cantidad = $(this).parent().find("#Cantidad").val();
    var url = "CompraCarrito?accion=ActualizarCantidad";
    $.ajax({
        type :'POST',
        url: url,
        data: "idp=" + idp + "&Cantidad=" + cantidad,
        succes: function (data,textStatus, jqXHR){
          location.href="CompraCarrito?accion=Carrito";
  
        }
    });
});

});



