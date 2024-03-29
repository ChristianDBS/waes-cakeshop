<%-- 
    Document   : Domicilios
    Created on : 22-sep-2021, 16:34:11
    Author     : usuario
--%>

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
            <a class="dropdown-item" href="CompraCarrito?accion=MisCompras">Mis Compras</a>
                        <a class="dropdown-item" href="CompraCarrito?accion=MisDomicilios">Mis Domicilios</a>
                        <div class="dropdown-divider"></div>                        
                       <a class="dropdown-item" href="CompraCarrito?accion=Salir"> <i class="fas fa-arrow-right">Cerrar Session</i></a>                   
                    </div>
                </ul>     
            </div>
        </nav> 
        <div class="container mt-4">
            <h2>Mis Domicilios</h2>
            <div class="row">            
                <table class="table tab-pane">
                    <thead class="thead-light">
                        <tr class="text-center">
                            <th>Codigo Domicilio</th>                               
                            <th>Fecha De Pedido</th>
                            <th>Hora Pedido</th>
                            <th>Direecion Cliente</th>
                            <th>Email Cliente</th>                                                   
                            <th>Estado</th>                                                   
                            <th></th>                                                  
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="dcm" items="${mydomicilio}">
                        <tr class="text-center">
                            <td>C00${dcm.getId()}</td>
                            <td>${dcm.getFecha()}</td>
                            <td>${dcm.getHora()}</td>
                            <td>${dcm.getDir()}</td>
                            <td>${dcm.getCorreo()}</td>
                            <td>${dcm.getEstado()}</td>
                            
                        </tr>
                    </c:forEach>
                   </tbody>
                </table>             
            </div>          
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>