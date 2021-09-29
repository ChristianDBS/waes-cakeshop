<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pagina principal</title>
    <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<body class="hidden">
    <div class="centrado" id="onload">
        <div class="lds-facebook"><div></div><div></div><div></div></div>
    </div>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Login.jsp">WaesCakeShop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i>Inicio<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="CompraCarrito?accion=home"><i class="fa fa-th-list" aria-hidden="true"></i>Catalogo<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="AtencionCliente.jsp"><i class="fa fa-address-book" aria-hidden="true"></i>Atencion Al Cliente<span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
         </nav>
        <div class="textos">
            <h1>Bienvenidos</h1>
            <h2>Nuestros productos a tu alcance</h2>
        </div>
    </header>
    
    <main>
      
        <section class="" id="servicio">
            <div class="contenedor">
                <h3>Conoce Mas de Nosotros</h3>
                <p class="after">Donde Estamos Ubicados</p>
                <div class="servicios">
                    <div class="caja-servicios">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.191478022042!2d-74.02430698523752!3d4.736770796559729!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f8f85bc93f30f%3A0xdbe9b20fa0d78a28!2sCl.%20162a%20%235a-15%2C%20Bogot%C3%A1!5e0!3m2!1ses-419!2sco!4v1630769616353!5m2!1ses-419!2sco" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>                        
                    </div>
                    <div class="caja-servicios">
                         <p>Quienes somos </p>
                        <label style="color:black">Somos una microempresa dedicada a la elaboración de productos de pastelería tradicional, pastelería decorativa y productos para cóctel. 
                        Deseamos ser parte de cada una de tus celebraciones, en las que puedas contar con un pastel de buena presentación, de rico sabor, así como también una gran variedad de productos dulces y salados para que tú y tus invitados puedan disfrutar en sus reuniones.</label>
                        
                    </div>
                </div>
            </div>
        </section>
        
        <section class="about" id="servicio">
            <div class="contenedor">
                <h3>Nuestros servicios</h3>
                <p class="after">Siempre mejorando para ti</p>
                <div class="servicios">
                    <div class="caja-servicios">
                        <img src="img/pagos.png" alt="">
                        
                        <p>Ventas</p>
                    </div>
                    <div class="caja-servicios">
                        <img src="img/domicilios.jpg" alt="">
                       
                        <p>Domicilios</p>
                    </div>
                    <div class="caja-servicios">
                        <img src="img/productos.png" alt="">
                       
                        <p>Atencion al cliente</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="work contenedor" id="trabajo">
            <h3>Nuestro trabajo</h3>
            <p class="after">Productos en descuentos y promociones</p>
            <div class="botones-work">
                <ul>
                    <li class="filter active" data-nombre='todos'>Todos</li>
                    <li class="filter" data-nombre='diseño'>Pasteles</li>
                    <li class="filter" data-nombre='programacion'>Postres</li>
                    <li class="filter" data-nombre='marketing'>helados y pancakes</li>
                </ul>
            </div>
            <div class="galeria-work">
                <div class="cont-work programacion">
                    <div class="textos-work">
                        <h4>Postres</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/chocolate.jpeg" alt="">
                    </div>
                    <div class="content"> 
                       <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                    </div>
                    </div>
                <div class="cont-work programacion">
                    <div class="textos-work">
                        <h4>Postres</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/limon.jpeg" alt="">
                    </div>
                    <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                </div>
                </div>
                <div class="cont-work programacion">
                    <div class="textos-work">
                        <h4>Postres</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/maracuya.jpeg" alt="">
                    </div>
                    <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                    </div>
                </div>
                <div class="cont-work diseÃ±o">
                    <div class="textos-work">
                        <h4>Pasteles</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/durazno.jpeg" alt="">
                        </div>
                        <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                    </div>
                </div>
                <div class="cont-work diseÃ±o">
                    <div class="textos-work">
                        <h4>Pasteles</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/tfresa.jpg" alt="">
                    </div>
                    <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                    </div>
                </div>
                <div class="cont-work diseÃ±o">
                    <div class="textos-work">
                        <h4>Pasteles</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/tchocolate.jpg" alt="">
                    </div>
                    <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                </div>
                </div>
                <div class="cont-work marketing">
                    <div class="textos-work">
                        <h4>helados y pancakes</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/helado.jpeg" alt="">
                    </div>
                    <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                    </div>
                </div>
                <div class="cont-work marketing">
                    <div class="textos-work">
                        <h4>helados y pancakes</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/pancake.jpeg" alt="">
                    </div>
                    <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                    </form>
                    </div>
                </div>
                <div class="cont-work marketing">
                    <div class="textos-work">
                        <h4>helados y pancakes</h4>
                    </div>
                    <br>
                    <div class="img-work">
                        <img src="img/merengon.jpeg" alt="">
                    </div>
                    <div class="content">
                    <form action="" method="POST" name="enviar" id="enviar" class="cont_form">
                 
                    </form>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="contacto">
        <div class="footer contenedor">
            
            <p>siguenos en nuestras redes sociales</p>
            <br>
            <div class="iconos">
                <a href="https://www.instagram.com/waescakeshop/"><i class="fab fa-instagram"></i></a>
                <a href="https://www.facebook.com/alsa.moto"><i class="fab fa-facebook-square"></i></a>
                <a href=""><i class="fab fa-twitter"></i></a>
            </div>
            <p>La pasion e innovacion es lo que nos distingue del resto</p>
        </div>

    </footer>
    <script src="js/jquery.js"></script>
    <script src="js/main.js"></script>
    <script src="js/filtro.js"></script>
    <script src="js/validacion.js"></script>
    
</body>
</html>



