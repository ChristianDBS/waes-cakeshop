<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>        
        <title>Carrito de Compras</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="Login.jsp"><i>WaesCakesShop</i></a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i>Inicio<span class="sr-only">(current)</span></a>
                    </li>
                     <li class="nav-item active">
                     <a class="nav-link" href="CompraCarrito?accion=home"><i class="fa fa-th-list" aria-hidden="true"></i>Catalogo<span class="sr-only">(current)</span></a>
                    </li>           
                    <li class="nav-item">
                        <a class="nav-link" href="CompraCarrito?accion=Carrito"><i class="fas fa-cart-plus">(<label style="color: darkorange">${contador}</label>)</i> Carrito</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="AtencionCliente.jsp"><i class="fa fa-address-book" aria-hidden="true"></i>Atencion Al Cliente</a>
                    </li> 
                </ul>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <!--<form class="form-inline my-2 my-lg-0">-->
                    <input style="width:400px" class="form-control mr-sm-2" id="txtBuscar">
                    <button class="btn btn-outline-info my-2 my-sm-0" id="btnBuscar"><i class="fas fa-search"></i> Buscar</button>
                    <!-- </form>       -->                 
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
            <div class="row">
              
                  <c:forEach var="p" items="${productos}">
                   <div class="col-sm-4">
                   <div class="card">
                       <div class="card-header text-center">
                           <label>${p.getNombres()}</label> 
                       </div>
                        <div class="card-body text-center"> 
                            <img src="ControladorIMG?id=${p.getId()}" width="200" height="180">
                        </div>  
                        <div class=" text-center">
                            <label>Precio</label>
                            <i>$ ${p.getPrecio()}</i>
                            <label>Existencias</label>
                           <i> ${p.getStock()}</i>
                        </div>
                       <div class="card-footer text-center"> 
                           <label>${p.getDescripcion()}</label>
                           
                           <div>
                               <a href="CompraCarrito?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-outline-info"><i class="fa fa-cart-plus" aria-hidden="true"></i>Agregar a Carrito </a>
                               <a href="CompraCarrito?accion=Comprar&id=${p.getId()}" class="btn btn-danger"><i class="fa fa-money" aria-hidden="true"></i>Comprar</a>
                           </div>
                       </div>
                   </div>
               </div>   
               </c:forEach>                            
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
        
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/index.js" type="text/javascript"></script>
    </body>
</html>
