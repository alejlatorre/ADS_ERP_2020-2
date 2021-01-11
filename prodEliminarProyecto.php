<!doctype html>
<html>
	<head>
	
	</head>
	
	
	<body>
		<?php
			$idLote = $_GET["idLote"];
			
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			$sentencia = "DELETE FROM prodoutput WHERE idLote='$idLote';";
			mysqli_query($conexion,$sentencia);
			header("Location:prodMostrarProyectos.php");
		?>
	</body>
</html>