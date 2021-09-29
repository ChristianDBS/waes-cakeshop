
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <h3>Registrar Usuario</h3>
            <div class="card-body">
                <form action="Controlador?menu=Usuario" method="POST">
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" name="txtNom" value="${usuario.getNombre()}" class="form-control" placeholder="">
                    </div>             
                   <div class="form-group">
                        <label>Celular</label>
                        <input type="text" name="txtTel" value="${usuario.getTel()}" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="txtEmail" value="${usuario.getEmail()}" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="txtUser" value="${usuario.getUser()}" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" name="txtPass" value="${usuario.getPass()}" class="form-control"  readonly=""  placeholder="">
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" name="txtEst" value="${usuario.getEstado()}" class="form-control" placeholder="">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">

                </form>
                    
            </div>
        </div>
                    
            <div id="table" class="col-sm-10">
                <br>
                <div class="container">
                    <div>
                      
                            <button  onclick="print();" class="btn btn-danger"><i class="matetial-icons left"></i>Reporte pdf</button>
                            <button type="submit" name="accion" id="btnExportar"  class="btn btn-success"><i class="matetial-icons left"></i>Reporte Excel</button>
                    
                    </div>                 
                </div>
                <br>
                <table  id="tabla" class="table table-hover">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                       <th>Correo</th>
                        <th>Usuario</th>
                        <th>Contraseña</th>
                        <th>Telefono</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="u" items="${usuarios}">
                         <tr>
                        <td>${u.getId()}</td>
                        <td>${u.getNombre()}</td>
                        <td>${u.getEmail()}</td>
                        <td>${u.getUser()}</td>
                        <td><input type="password" readonly="" value="${u.getPass()}" ></td>
                        <td>${u.getTel()}</td>
                        <td>${u.getEstado()}</td>
                        <td> 
                            <a href="Controlador?menu=Usuario&accion=Editar&id=${u.getId()}" class="btn btn-warning">Editar</a>
                            <a href="Controlador?menu=Usuario&accion=Delete&id=${u.getId()}" class="btn btn-danger">Delete</a>
                            
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
        
        filename: "Reporte Usuarios", //Nombre del archivo de Excel
        sheetname: "Usuarios", //Título de la hoja
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
