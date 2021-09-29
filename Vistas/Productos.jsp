

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <div class="d-flex "> 
        
               <div class="card col-sm-4" style="border: none">
                 
            <div class="card-body" >
        <div class="container-fluid parte1" >
            
            <form action="Controlador?menu=Producto" method="POST" enctype="multipart/form-data"> 
             <h3>Registrar Productos</h3>
 <div class="form-group">
    <label>Codigo Del Producto</label>
    <input type="Number"  value="${pr.getCodigo()}"  name="txtCod" class="form-control" placeholder="">
  </div> 
<div class="form-group">
    <label>Nombre Del Producto</label>
    <input type="text"  value="${pr.getNombres()}"  name="txtNom" class="form-control" placeholder="">
  </div>   
  <div class="form-group">
    <label>Descripcion</label>
    <input type="text" value="${pr.getDescripcion()}"    name="txtDes" class="form-control" placeholder="">
  </div> 
       <div class="form-group">
    <label>Cantidad Ingresada</label>
    <input type="text"  value="${pr.getStock()}"   name="txtCant" class="form-control" placeholder="">
  </div> 
       <div class="form-group">
    <label>Precio Venta</label>
    <input type="text" value="${pr.getPrecio()}"  name="txtPre" class="form-control" placeholder="">
  </div>
  
  <div class="form-group">
         <label>Foto</label>
         <input type="file" name="txtFot" value=""> 
       </div>
      <input type="submit" name="accion" value="Agregar" class="btn btn-info">
       <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
            </form>
  </div>     
        </div>
                </div>
                
           
    
         <div class="col-sm-11">
              <br>
                <div class="container">
                    <div>
                        
                            <button onclick="print();" class="btn btn-danger"><i class="matetial-icons left"></i>Reporte pdf</button>
                            <button type="submit" name="accion" id="btnExportar"  class="btn btn-success"><i class="matetial-icons left"></i>Reporte Excel</button>
                   
                    </div>                 
                </div>
                <br>
                <table id="tabla" class="table table-hover text-center">
                <thead>
                    <tr>
                    <th>Codigo</th>
                    <th> Producto</th>
                    <th>Imagen</th>
                    <th>Descripcion</th>
                    <th>C Ingresada</th>
                    <th>Precio</th>
                    <th>Acciones</th>
                    </tr>
                </thead>
                
                <tbody>
                <c:forEach var="p" items="${producto}">
                    <tr>
                <td>${p.getCodigo()}</td>
                <td>${p.getNombres()}</td>
                <td><img src="ControladorIMG?id=${p.getId()}" width="20" height="20" alt="no sale"></td>
                <td>${p.getDescripcion()}</td>
                <td>${p.getStock()}</td>
                <td>${p.getPrecio()}</td>
                <td>
                <a href="Controlador?menu=Producto&accion=Editar&id=${p.getId()}" class="btn btn-warning">Editar</a>
                <a href="Controlador?menu=Producto&accion=Delete&id=${p.getId()}" class="btn btn-danger">Delete</a>
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
        
        filename: "Reporte Productos", //Nombre del archivo de Excel
        sheetname: "Productos", //Título de la hoja
    });
    let datos = tableExport.getExportData();
    let preferenciasDocumento = datos.tabla.xlsx;
    tableExport.export2file(preferenciasDocumento.data, preferenciasDocumento.mimeType, preferenciasDocumento.filename, preferenciasDocumento.fileExtension, preferenciasDocumento.merges, preferenciasDocumento.RTL, preferenciasDocumento.sheetname);
});   
                    </script>
        <script src="https://unpkg.com/xlsx@latest/dist/xlsx.full.min.js"></script>
        <script src="https://unpkg.com/file-saverjs@latest/FileSaver.min.js"></script>
        <script src="https://unpkg.com/tableexport@latest/dist/js/tableexport.min.js"></script> 
        
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>  
        
        
    </body>
    
    </body>
</html>
