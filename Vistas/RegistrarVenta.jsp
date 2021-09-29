    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
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
                <div class="col-sm-5 parte1">
                    <div class="card">
                        <form action="GenerarVenta?menu=NuevaVenta" method="POST">
                              <div class="card-body">
                            <div class="form-group">
                                <label>Datos Del Cliente</label>

                            </div> 
                            <div class="form-group d-flex" >
                                <div class="col-sm-6 d-flex">
                                    <label>Cedula cliente</label>
                                    <input type="text" name="codigocliente" value="${cr.getIden()}" class="form-control">
                                </div>

                                <div class="col-sm-6  d-flex">
                                    <label>Nombre cliente</label>
                                    <input type="text" name="nombrescliente" value="${cr.getNombre()}" class="form-control">
                                </div>
                            </div> 
                                <div class="col-sm-4 text-center">
                                    <button type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">BuscarCliente</button>
                                  </div>

                                <!-- datos del producto-->
                                <br>
                            <div class="form-group">
                                <label>Datos Productos</label>
                            </div> 
                            <div class="form-group d-flex text-center">
                                  <div class="col-sm-6 d-flex">
                                      <label>Codigo Producto</label>
                                      <input type="text" name="codigoproducto"  value="${pr.getCodigo()}" class="form-control">
                                </div>

                                <div class="col-sm-6 d-flex text-center">
                                    <label>Nombre Producto</label>
                                <input type="text" name="nomproducto" value="${pr.getNombres()}" class="form-control">
                                </div> 
                            </div>
                                <div class="col-sm-4 text-center">
                              <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">BuscarProducto</button>
                                </div>

                                <!-- datos productos-->
                                <br>
                            <div class="form-group d-flex text-center">
                                <div class="col-sm-4 d-flex text-center">
                                    <label>Precio</label>
                                    <input type="text" name="precio" value="${pr.getPrecio()}" class="form-control" placeholder="">
                                </div>
                                <div class="col-sm-4 d-flex text-center">
                                    <label>Cantidad</label>
                                     <input type="number" name="cant" value="1" class="form-control">
                                </div>
                                <div class="col-sm-4 d-flex text-center">
                                    <label>Stock</label>
                                     <input type="text" name="stock" value="${pr.getStock()}" class="form-control">
                                </div>                         
                            </div>
                                <!-- BOTON PARA AGREGAR UN REGISTRO-->
                                  <div class="form-group">
                                      <button type="submit" name="accion" value="Agregar" class=" btn btn-outline-info">Agregar Producto</button>
                                  </div>
                           </div>   
                        </form>

                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="card"></div>
                    <div class="card-body">
                             <div class="form-group d-flex text-center">
                                <div class="col-sm-4 d-flex text-center">
                                    <label>Nombre Cliente</label>
                                    <input type="text" name="nombrescliente" value="${cr.getNombre()}" class="form-control">
                                </div>
                                <div class="col-sm-4 d-flex text-center">
                                    <label>Cedula Cliente</label>
                           <input type="text" name="codigocliente" value="${cr.getIden()}" class="form-control">
                                </div>
                                <div class="col-sm-4 d-flex text-center">   
                           <label>Numero de Serie</label>
                        <input type="text" name="NroSerie"  value="${nserie}" class="form-control">  
                                </div>                         
                            </div>

                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Nro</th>
                                <th>CodigoProducto</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                                <th class="accion">Acciones</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach var="list" items="${lista}">
                                <tr>
                                    <td>${list.getItem()}</td> 
                                    <td>${list.getCodigo()}</td> 
                                    <td>${list.getDescripcion()}</td> 
                                    <td>${list.getPrecio()}</td>
                                    <td>${list.getCantidad()}</td> 
                                    <td>${list.getSubtotal()}</td> 
                                    <td class="d-flex">
                                       <input type="hidden" id="idp" value="${car.getIdproducto()}">
                                    <a id="btnDelete" href="#" class="btn" value="Eliminar"><i class="fas fa-trash-alt"></i>Eliminar</a>
                                    </td>
                                </tr>

                            </c:forEach>   

                                   </tbody>
                        </table>
                    </div> 
                    <div class="card-footer d-flex">  
                        <div class="col-sm-6">
                            <a href="GenerarVenta?menu=NuevaVenta&accion=GenerarVenta" onclick="print();" class="btn btn-success">Generar Venta</a>
                            
                        </div>
                        <div class="col-sm-4 ml-auto">
                            <input type="text" name="txtTotal" value="S/.  ${totalPagar}" class="form-control">
                        </div>
                    </div>
                </div>
            </div>

           <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funcionesAc.js" type="text/javascript"></script>
        </body>
    </html>
