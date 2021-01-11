<!doctype html>
<html>
	<head>
	
	</head>
	
	
	<body>
		<?php
			$codOperacion = $_GET["codOperacion"];
			
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			$sentencia = "DELETE FROM prodoperaciones WHERE codOperacion='$codOperacion';";
			mysqli_query($conexion,$sentencia);
			header("Location:prodMostrarOperacion.php");
		?>
	</body>
</html>