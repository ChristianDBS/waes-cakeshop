<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>Formulario de Contacto</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/estilosa.css">
      
        <script src="js/atencion.js" type="text/javascript"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Login.jsp">WaesCakeShop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="../index.jsp"><i class="fas fa-home"></i>Inicio<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="../CompraCarrito?accion=home"><i class="fa fa-th-list" aria-hidden="true"></i>Catalogo<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa fa-address-book" aria-hidden="true"></i>Atencion Al Cliente<span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
    </nav>
    
	<section class="form_wrap">
		<section class="contact_info">
			<section class="info_title">
				<span class="fa fa-user-circle"></span>
				<h2>INFORMACION<br>DE CONTACTO</h2>
			</section>
			<section class="info_items">
				<a> Correo <i class="fa fa-envelope"></i> WaesCakeshop@gmail.com  </a>
                                <br>
                                <a> Telefono <i class="fa fa-mobile"></i>  321 336 95 21 </a>
                                <br>
                                <a> Direccion <i class="fa fa-map-marker" aria-hidden="true"></i>  Calle 162a # 5a 15  </a>
			</section>
		</section>
            <form action="AtencionCliente" method="POST" class="form_contact">
			<h2>Envia Tu Solicitud</h2>
			<div class="user_info">
				<label for="names">Nombres *</label>
				<input type="text" name="txtNom">

				<label for="phone">Telefono / Celular</label>
                                <input type="text" name="txtTel">

				<label for="email">Correo electronico *</label>
                                <input type="email" name="txtEmail">
                                
                                 <label for="email">Tipo Peticion *</label>
                                <select name="txtTp">
                                    
                                    <option>Queja</option>
                                    <option>Reclamo</option>
                                    <option>Sugerencia</option>
                                
                                </select>
                                <br><br>
                                
                                <label for="number">Calificacion *</label>
                                <input type="number" name="txtCal">
                                
                               
				<label for="mensajeMens">Mensaje *</label>
                                <textarea name="txtMens"></textarea>

			        

                        </div>
                         <button type="submit" name="accion" value="EnviarMensaje" class="btn btn-outline-danger btn-block" onclick="btnsend();">enviar</button>
		</form>
	</section>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script src="js/atencion.js" type="text/javascript"></script>
</body>
</html>