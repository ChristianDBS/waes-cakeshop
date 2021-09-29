function comprar_productos(){
 var unitario = document.getElementById("precio").value;
 var cantidad = document.getElementById("mer").value;
 
 var total = parseInt(unitario)*parseInt(cantidad);

 document.getElementById("total_compra").value=total;

}
function  comprar_producto(){
    var unita = document.getElementById("valor").value;
    var cant = document.getElementById("pan").value;
    
    var total = parseInt(unita)*parseInt(cant);
   
    alert(total);

}