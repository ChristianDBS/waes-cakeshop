function registrar_direccion(){

    nu = document.getElementById('numero').value;
    dr = document.getElementById('dir').value;
    direcc = document.getElementById('direc').value;

if(nu==""){
    alert("por favor dligencie el campo");
    document.getElementById('numero').setfocus;
    return;
}if(dr==""){
    alert("por favor dligencie el campo");
    document.getElementById('dr').setfocus;
    return;
}if(direcc==""){
alert("por favor dligencie el campo");
document.getElementById('direc').setfocus;
return;
}
document.getElementsById("enviar_datos").submit();
}
