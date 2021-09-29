
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>RECORD INVENTORY PROGRAM</title>
        </head>
        <body>

           <nav class="navbar navbar-expand-lg navbar-light bg-info">
         <a class="navbar-brand" href="#">REINPRO</a>
         <div class="collapse navbar-collapse" id="navbarNav">

       <div class="btn-group" class="btn btn-outline-light" >
           <button style="border:none;" type="button" class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
       Productos
      </button>
    <div class="dropdown-menu dropdown-menu dropdown-menu-lg-left text-center">
    <a style="margin-left: 10px ;border: none" class="btn btn-outline-dark" href="Controlador?menu=Producto&accion=Listar" target="myFrame">Productos</a>    
    </div>
            <div class="btn-group" class="btn btn-outline-light" >
            <button style="border:none;" type="button" class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
            ventas
            </button>
           <div class="dropdown-menu dropdown-menu dropdown-menu-lg-left text-center">
           <a style="margin-left: 10px ;border: none" class="btn btn-outline-dark" href="GenerarVenta?menu=NuevaVenta&accion=default" target="myFrame">Generar venta</a>    
            <a style="margin-left: 10px ;border: none" class="btn btn-outline-dark" href="ListadoC?accion=ListarCompras" target="myFrame">Listar Compras Carrito</a> 
            <a style="margin-left: 10px ;border: none" class="btn btn-outline-dark" href="Listado?accion=ListarVentas" target="myFrame">Listar Ventas</a> 
            </div>
           </div> 
           
    </div>

             <ul class="navbar-nav">
             <li class="nav-item">
               <a style="margin-left: 10px ;border: none" class="btn btn-outline-light"  href="Controlador?menu=Usuario&accion=Listar" target="myFrame">Usuarios</a>
             </li>
                </li>
             <li class="nav-item">
               <a style="margin-left: 10px ;border: none" class="btn btn-outline-light"  href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Clientes</a>
             </li>    
             <li class="nav-item">
               <a style="margin-left: 10px ;border: none" class="btn btn-outline-light"href="ListadoPqrs?accion=ListarPqrs" target="myFrame">Pqrs</a>
             </li>
           
             </ul>
             
               <div class="btn-group" class="btn btn-outline-light" >
            <button style="border:none;" type="button" class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
            Domicilios
            </button>
           <div class="dropdown-menu dropdown-menu dropdown-menu-lg-left text-center">
            <a style="margin-left: 10px ;border: none" class="btn btn-outline-dark" href="ListadoD?accion=ListarDomicilios" target="myFrame">Listar Domicilios</a> 
            </div>
           </div> 

         </div>


      <div class="btn-group dropleft  col-lg-1">
      <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      ${usuario.getUser()}
      </button>
      <div class="dropdown-menu text-center" >
          <a class="dropdown-item" href="#">
              <img src="img/avatar.png" alt="user" width="60" style="border-radius: 50%"/>
          </a>
        <a class="dropdown-item" href="#">${usuario.getNombre()}</a>
        <a class="dropdown-item" href="#">${usuario.getEmail()}</a>
        <div class="dropdown-divider"></div>
            <form action="Validar" method="POST">
              <button value="Salir" name="accion" class="dropdown-item">Salir</button>   
            </form>



      </div>
    </div>
       </nav>
        <div class="m-1" style="height: 500px">
            <iframe name="myFrame" style="height: 98%; width:100% ">

            </iframe>
        </div>

            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        </body>
    </html>
