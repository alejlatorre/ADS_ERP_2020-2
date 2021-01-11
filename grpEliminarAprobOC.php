<!doctype html>
<html>
	<head>
	
	</head>
	
	
	<body>
		<?php
			$Concepto = $_GET["Concepto"];
			
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			$sentencia = "DELETE FROM grpnuevasoc WHERE Concepto='$Concepto';";
			mysqli_query($conexion,$sentencia);
			header("Location:grpAprobOC.php");
		?>
	</body>
</html>