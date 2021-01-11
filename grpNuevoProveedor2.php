<html>
<head>

</head>
<body>
    <center>
		<?php
			# Variables que se extraen de la pestaña anterior
			$RUC = $_POST["RUC"];
			$RazonSocial = $_POST["RazonSocial"];
			$Rubro = $_POST["Rubro"];
			$Direccion = $_POST["Direccion"];
			$RepresentanteComercial = $_POST["RepresentanteComercial"];
			$Celular = $_POST["Celular"];
			$Correo = $_POST["Correo"];
			$Descripcion = $_POST["Descripcion"];
	
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			# Se instancia una query
			$sentencia = "INSERT INTO grpocs VALUES (null, '$RUC','$RazonSocial', '$RepresentanteComercial','$Celular','$Correo','$Rubro','$Direccion','$Descripcion');";	
			# Se ejecuta la query 
			mysqli_query($conexion,$sentencia);
			# Regresa a la otra pestaña
			header("Location:grpRegNuevProve.php");
		?>
	</center> 
</body>
</html>
