<!doctype html>
<html>
	<head>
	
	</head>
	
	
	<body>
		<?php
			$RUC = $_GET["RUC"];
			
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			$sentencia = "DELETE FROM grpocs WHERE RUC='$RUC';";
			mysqli_query($conexion,$sentencia);
			header("Location:grpRegNuevProve.php");
		?>
	</body>
</html>