<%-- 
    Document   : Carrito
    Created on : 31-ago-2021, 18:55:46
    Author     : usuario
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">WaesCakeShop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i>Inicio<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="CompraCarrito?accion=home"><i class="fas fa-plus-circle"></i>Seguir Comprando</a>
      </li>
    </ul>    
        <ul class="navbar-nav btn-group my-2 my-lg-0" role="group">
                    <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fas fa-user-tie"></i> ${logueo}</a>
                    <div class="dropdown-menu text-center dropdown-menu-right">
                        <a class="dropdown-item" href="#"><img src="img/user.png" alt="60" height="60"/></a>                        
                        <a class="dropdown-item" href="#">${user}</a>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">${correo}</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="CompraCarrito?accion=MisCompras">Mis Compras</a>
                         <a class="dropdown-item" href="CompraCarrito?accion=MisDomicilios">Mis Domicilios</a>
                        <div class="dropdown-divider"></div>
                         <a class="dropdown-item" href="CompraCarrito?accion=Salir"> <i class="fas fa-arrow-right">Cerrar Session</i></a>                     </div>
                </ul>  
  </div>
</nav>
        <div class="container mt-4">
             <label>Carrito Compras</label>
             <br>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>codigo</th>
                                <th>Nombres</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>cantidad</th>
                                <th>Subtotal</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                         <tbody>
                        <c:forEach var="car" items="${carrito}">
                            <tr>
                                <td>${car.getItem()}</td>
                                <td>${car.getNombres()}</td>
                                <td>${car.getDescripcion()}
                                   <img src="ControladorIMG?id=${car.getIdproducto()}" width="20" height="20" alt="no sale">
                                </td>                                
                                <td>${car.getPrecioCompra()}</td>
                                <td>
                                    <input type="hidden" id="idpro" value="${car.getIdproducto()}">
                                    <input type="number" id="Cantidad" value="${car.getCantidad()}" class="form-control text-center" min="1">
                                </td>
                                <td>${car.getSubTotal()}</td>
                                <td>
                                    <input type="hidden" id="idp" value="${car.getIdproducto()}">
                                    <a id="btnDelete" href="#" class="btn" value="Eliminar"><i class="fas fa-trash-alt"></i>Eliminar</a>
                                </td> 
                        </c:forEach>
                            
                        </tbody>
                    
                    </table>
                </div>
                
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal</label>
                            <input type="text" value="$ ${totalPagar}" readonly="" class="form-control">
                             <label>Descuento</label>
                            <input type="text" value="$.0.000" readonly="" class="form-control">
                             <label>Total Pagar</label>
                            <input type="text" value="$ ${totalPagar}" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                             <a  href="CompraCarrito?accion=GenerarCompra"  class="btn btn-danger btn-block">Realizar Compra</a>

                            <a href="#" data-toggle="modal"  data-target="#myModalPago" class="btn btn-info btn-block">Realizar Pago</a>
                        </div>
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
                        <div class="text-center">                         
                            <img src="img/user.png" width="100" height="100">                         
                        </div>
                        <div class="modal-header text-center">                      
                            <ul class="nav nav-pills">                           
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="pill" href="#pills-iniciar">Iniciar Sesion</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#pills-registrar">Registrarse</a>
                                </li>                          
                            </ul>  
                        </div>
                        <div class="modal-body"> 
                            <div class="tab-content" id="pills-tabContent">
                                
                                
                                <!-- Iniciar Session -->
                                <div class="tab-pane fade show active" id="pills-iniciar" role="tabpanel">
                                    <form action="CompraCarrito" method="POST">
                                        <div class="form-group">
                                            <label>Email address</label>
                                             <input type="text" name="txtuser" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                             <input type="password" name="txtpass" class="form-control">
                                        </div>                                   
                                        <button type="submit" name="accion" value="Validar" class="btn btn-outline-danger btn-block">Iniciar session</button>
                                    </form>
                                </div>
                                
                                
                                <!-- Registrarse -->
                                <div class="tab-pane fade" id="pills-registrar" role="tabpanel">
                                    <form action="CompraCarrito" method="POST">
                                        <div class="form-group">
                                            <label>Nombre</label>
                                            <input type="text" name="txtnom" class="form-control" placeholder="ingrese su nombre">
                                        </div>
                                        <div class="form-group">
                                            <label>Nª identificacion</label>
                                            <input type="text" name="txtIden" class="form-control" placeholder="numero de cedula">
                                        </div>
                                        <div class="form-group">
                                            <label>Telefono</label>
                                            <input type="text" maxlength="15" name="txtTel" class="form-control" placeholder="telefono">
                                        </div>
                                        <div class="form-group">
                                            <label>Direccion</label>
                                            <input type="text" name="txtDir" class="form-control" placeholder="Direccion">
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" name="txtemail" class="form-control" placeholder="Ingrese su correo electronico">
                                        </div>
                                        <div class="form-group">
                                            <label>Contraseña</label>
                                            <input type="password" name="txtpass" class="form-control" placeholder="Ingrese la contraseña">
                                        </div>                                  
                                        <button type="submit" name="accion" value="Agregar" class="btn btn-outline-danger btn-block">Crear Cuenta</button>
                                    </form>
                                </div>  
                                
                                
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
                        <div class="modal fade" id="myModalPago" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">         
                <div class="modal-content">                   
                    <div class="modal-header text-center"> 
                        <label><i class="fa-dollar-sign"></i>Realizar Pago</label>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>  
                    </div>
                    <div class="modal-body"> 
                        <div class="tab-content" id="pills-tabContent">
                            <!-- Metodo Pago -->
                            <div class="tab-pane fade show active" id="pills-iniciar" role="tabpanel">
                                <form action="CompraCarrito"  method="POST">
                                    <div class="form-group">
                                        <label>Card address</label>
                                        <input type="text" class="form-control" placeholder="9999-9999-9999-9999">
                                    </div>
                                    <div class="form-group">
                                        <label>Codigo Seguridad</label>
                                        <input type="text" class="form-control" placeholder="xxxx">
                                    </div>
                                    <div class="form-group">
                                        <label>Monto</label>
                                        <input type="text" name="txtmonto" value="$.${totalPagar}0" class="form-control h1" disabled="" >
                                    </div>                                   
                                    <button type="submit" name="accion" onclick="btnsend();" value="RealizarPago" class="btn btn-info btn-block">Pagar</button>
                                </form>
                            </div>

                        </div> 
                    </div>
                </div>
            </div>
        </div>
          
      <script>
 function btnsend(){
swal({
  text: "su pago se realizo con exito!",
   icon: "success",
});
}

    </script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>                               
                                    
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
    </body>
</html>
