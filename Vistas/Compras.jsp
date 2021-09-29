<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <title>Carrito de Compras</title>
    </head>
    <body>       
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><i>WaesCakeShop</i></a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Inicio<span class="sr-only">(current)</span></a>
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
                        <a class="dropdown-item" href="Controlador?accion=MisCompras">Mis Compras</a>
                        <a class="dropdown-item" href="CompraCarrito?accion=MisDomicilios">Mis Domicilios</a>
                        <div class="dropdown-divider"></div>                        
                        <a class="dropdown-item" href="CompraCarrito?accion=Salir"> <i class="fas fa-arrow-right">Cerrar Session</i></a>                     </div>
                </ul>     
            </div>
        </nav> 
        <div class="container mt-4">
            <h2>Mis Compras</h2>
            <div class="row">            
                <table class="table tab-pane">
                    <thead class="thead-light">
                        <tr class="text-center">
                            <th>CODIGO DE COMPRA</th>                               
                            <th>Fecha de Compra</th>
                            <th>Monto</th>                                                   
                            <th>Codigo de Pago</th>                                                   
                            <th>Estado</th>                                                   
                            <th></th>                                                   
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="p" items="${myCompras}">
                            <tr class="text-center">
                                <td>C00${p.getId()}</td>                                  
                                <td>${p.getFecha()}</td>
                                <td>${p.getMonto()}</td>                                                                                                       
                                <td>P00${p.getIdPago()}</td>                                                                                                       
                                <td>${p.getEstado()}</td>                                                                                                       
                                <td>
                                    <a href="CompraCarrito?accion=verDetalle&idcompra=${p.getId()}" class="btn btn-success">Detalle Compra</a>
                                   <a class="btn btn-success" href="#" data-toggle="modal" data-target="#myModal">Realizar Domicilio</a>
                                   
                                </td>                                                                                                        
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>             
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
                                    <form action="CompraCarrito" method="POST">
                                        <div class="form-group text-center">
                                            <div class="form-group">
                                                <label>Telefono</label>
                                                <input class="form-control"  type="text" name="txtTel"> 
                                            </div>
                                              <div class="form-group">
                                                <label>Ciudad</label>
                                                  <select class="form-control" name="txtCiu">
                                                   <option>Bogota</option>   
                                                </select>
                                            </div>
                                             <div class="form-group">
                                                <label>Direccion</label>
                                                   <input class="form-control"  type="text" name="txtDir">
                                            </div>
                                             <div class="form-group">
                                                <label>Email</label>
                                                <input class="form-control"  type="text" name="txtEmail"> 
                                             </div>   
                                        </div>                                 
                                        <button type="submit" name="accion" value="AgregarDomicilio" onclick="btnsend();" class="btn btn-outline-danger btn-block">Enviar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    <script>
 function btnsend(){
swal({
  text: "su domicilio se realizo con exito!",
   icon: "success",
});
}

    </script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
