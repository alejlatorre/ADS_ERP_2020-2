<!doctype html>
<html>
	<head>
	
	</head>
	

	
	<body>
		<?php
			$tipoProducto = $_GET["tipoProducto"];
			
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			$sentencia = "DELETE FROM prodtipoprod WHERE tipoProducto='$tipoProducto';";
			mysqli_query($conexion,$sentencia);
			header("Location:prodMostrarProductos.php");
		?>

	</body>
	
</html>