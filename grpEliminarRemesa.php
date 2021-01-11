<!doctype html>
<html>
	<head>
	
	</head>
	
	
	<body>
		<?php
			$numFactura = $_GET["numFactura"];
			
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			$sentencia = "DELETE FROM grpremesas WHERE numFactura='$numFactura';";
			mysqli_query($conexion,$sentencia);
			header("Location:grpRemesa.php");
		?>
	</body>
</html>