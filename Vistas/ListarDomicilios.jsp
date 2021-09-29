<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
                @media print{
                    .btn, accion{
                        display:none;
                    }
                } 
            </style>
    </head>
    <body>
        <h1>Listado Domicilios</h1>
         <div class="col-sm-12">
                <div class="card">
                <div class="card-body">
                      <div class="col-sm-12">
                      <br>
                 <div class="container">
                    <div>
                      
                            <button type="submit" name="accion" onclick="print();" class="btn btn-danger"><i class="matetial-icons left"></i>Reporte pdf</button>
                            <button type="submit" name="accion" id="btnExportar"  class="btn btn-success"><i class="matetial-icons left"></i>Reporte Excel</button>

                    </div>                 
                </div>
                <br>     
                    <table id="tabla" class="table table-hover">
                        <thead>
                        <tr>
                            <th>Nombre Cliente</th>
                            <th>Celular</th>
                            <th>Ciudad</th>
                            <th>Fecha Pedido</th>
                            <th>Hora Pedido</th>          
                            <th>Estado</th>
                            <th>Direccion</th>
                            <th>Correo</th>
                            <th></th>
                            
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="d" items="${domicilios}">
                                <tr>
                                    <td>${d.cliente.nombre}</td>
                                    <td>${d.getTelefono()}</td>
                                    <td>${d.getCiudad()}</td>
                                    <td>${d.getFecha()}</td>
                                    <td>${d.getHora()}</td>
                                     <td>${d.getEstado()}</td>
                                    <td>${d.getDir()}</td>
                                    <td>${d.getCorreo()}</td>
                                    <td><a  href="#" data-toggle="modal" data-target="#myModal">Enviar Domicilio</a></td>

                                </tr>
                        </c:forEach>
                        </tbody>                          
                    </table>
                </div> 
               
                </div>
            </div>
         </div>
        
             <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="container col-lg-9">                   
                    <div class="modal-content">                   
                        <div class="pr-2 pt-1">                         
                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true">&times;</span>
                            </button>                    
                        </div>
                        <center>
                            <h4>Registrar Domicilio</h4>
                        </center>
                        <div class="modal-body"> 
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-iniciar" role="tabpanel">
                                    <form id="form"action="EnvioDomicilios" method="POST">
                                   <div class=form-group>
                                     <label for="from_name">Nombre Cliente</label>
                                     <input class="form-control"  type="text" name="from_name" id="from_name">
                                   </div>
                                   <div class=form-group>
                                     <label for="to_email">Email Cliente</label>
                                     <input class="form-control"  type="text" name="to_email" id="to_email">
                                   </div>
                                 <div class=form-group>
                                   <label>Valor Domicilio</label>
                                   <input class="form-control"  type="text" name="txtValor" id="txtValor"> 
                                   </div>
                                    <div class=form-group>
                                   <label>Estado Del Envio</label>
                                   <select class="form-control" name="txtEstado" id="txtEstado">
                                   <option>Entregado</option> 
                                   <option>Pendiente</option>   
                                   <option>En Proceso De Envio</option> 
                                   </select>
                                   </div>
                                   <div class=form-group>
                                   <label>Fecha De Envio</label>
                                    <input class="form-control"  type="Date" name="txtFecha" id="txtFecha">
                                   </div>                                                                                                                                                                                                                                                                                                                                                                                                                    
                                        </div>                                 
                                        <button type="submit" id="button" name="accion" value="AgregarEnvio" class="btn btn-outline-danger btn-block">Enviar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
       <script type="text/javascript"
  src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>

<script type="text/javascript">
  emailjs.init('user_KfueyI7UdUWCXaWkEa7Yb')
</script>
<script>
    const btn = document.getElementById('button');

document.getElementById('form')
 .addEventListener('submit', function(event) {
   event.preventDefault();

   btn.value = 'Sending...';

   const serviceID = 'default_service';
   const templateID = 'template_pelnlgl';

   emailjs.sendForm(serviceID, templateID, this)
    .then(() => {
      btn.value = 'AgregarEnviol';
      alert('enviado!');
    }, (err) => {
      btn.value = 'AgregarEnvio';
      alert(JSON.stringify(error));
    });
});
</script>
                      <script>
                     const $btnExportar = document.querySelector("#btnExportar"),
    $tabla = document.querySelector("#tabla");

$btnExportar.addEventListener("click", function() {
    let tableExport = new TableExport($tabla, {
        exportButtons: false, // No queremos botones
        
        filename: "Reporte ListadoDomicilios", //Nombre del archivo de Excel
        sheetname: "Lista Domicilios", //Título de la hoja
    });
    let datos = tableExport.getExportData();
    let preferenciasDocumento = datos.tabla.xlsx;
    tableExport.export2file(preferenciasDocumento.data, preferenciasDocumento.mimeType, preferenciasDocumento.filename, preferenciasDocumento.fileExtension, preferenciasDocumento.merges, preferenciasDocumento.RTL, preferenciasDocumento.sheetname);
});   
                    </script>
              <script src="https://unpkg.com/xlsx@latest/dist/xlsx.full.min.js"></script>
        <script src="https://unpkg.com/file-saverjs@latest/FileSaver.min.js"></script>
        <script src="https://unpkg.com/tableexport@latest/dist/js/tableexport.min.js"></script> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

