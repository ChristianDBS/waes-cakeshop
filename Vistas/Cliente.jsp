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
                    .parte1, .btn, accion{
                        display:none;
                    }
                } 
            </style>
    </head>
    <body>
        <div class="d-flex">
              <div class="card col-sm-3 parte1">
            <div class="card-body">
                <form action="Controlador?menu=Cliente" method="POST">
                      <h3>Registrar Cliente</h3>
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" name="txtNom" value="${clientes.getNombre()}"  class="form-control" placeholder="">
                    </div>     
                     <div class="form-group">
                        <label>Identificacion</label>
                        <input type="text" name="txtIde" value="${clientes.getIden()}"   class="form-control" placeholder="">
                    </div>
                   <div class="form-group">
                        <label>Celular</label>
                        <input type="text" name="txtTel" value="${clientes.getTel()}" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label>Direccion</label>
                        <input type="text" name="txtDir" value="${clientes.getDir()}" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="txtEmail" value="${clientes.getCorreo()}" class="form-control" placeholder="">
                    </div>                   
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" name="txtPass" value="${clientes.getPass()}"   readonly="" class="form-control" placeholder="">
                    </div>
                   
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    <br>
                </form>
            </div>
        </div>
                    
            <div class="col-sm-11">
                 <br>
                  <div class="container">
                    <div>
                       
                            <button type="submit" name="accion"  onclick="print();" class="btn btn-danger"><i class="matetial-icons left"></i>Reporte pdf</button>
                            <button type="submit" name="accion" id="btnExportar"  class="btn btn-success"><i class="matetial-icons left"></i>Reporte Excel</button>
                  
                    </div>                 
                </div>
                <br>
                <table id="tabla" class="table table-hover">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                       
                        <th>Identificacion</th>
                        <th>Telefono</th>
                        <th>Direccion</th>
                         <th>Correo</th>
                       
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="c" items="${cliente}">
                        <tr>
                        <td>${c.getIdc()}</td>
                        <td>${c.getNombre()}</td>
                         
                        <td>${c.getIden()}</td>
                        <td>${c.getTel()}</td>
                        <td>${c.getDir()}</td>
                        <td>${c.getCorreo()} </td>
                        <td> 
                            <a href="Controlador?menu=Cliente&accion=Editar&id=${c.getIdc()}" class="btn btn-warning">Editar</a>
                            <a href="Controlador?menu=Cliente&accion=Delete&id=${c.getIdc()}" class="btn btn-danger">Delete</a>

                        </td>
                     </tr>  
                    </c:forEach>    
                </tbody>
            </table>
        </div>
        </div>
        <script>
        const $btnExportar = document.querySelector("#btnExportar"),
    $tabla = document.querySelector("#tabla");

$btnExportar.addEventListener("click", function() {
    let tableExport = new TableExport($tabla, {
        exportButtons: false, // No queremos botones
        
        filename: "Reporte Clientes", //Nombre del archivo de Excel
        sheetname: "Clientes", //Título de la hoja
    });
    let datos = tableExport.getExportData();
    let preferenciasDocumento = datos.tabla.xlsx;
    tableExport.export2file(preferenciasDocumento.data, preferenciasDocumento.mimeType, preferenciasDocumento.filename, preferenciasDocumento.fileExtension, preferenciasDocumento.merges, preferenciasDocumento.RTL, preferenciasDocumento.sheetname);
});   
                    </script>
         <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>    
        <script src="https://unpkg.com/xlsx@latest/dist/xlsx.full.min.js"></script>
        <script src="https://unpkg.com/file-saverjs@latest/FileSaver.min.js"></script>
        <script src="https://unpkg.com/tableexport@latest/dist/js/tableexport.min.js"></script>
    </body>
</html>
