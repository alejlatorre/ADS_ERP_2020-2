<!doctype html>
<html>
	<head>
	
	</head>
	
	
	<body>
		<?php			
			$OC = $_GET["OC"];
			
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			$sentencia = "DELETE FROM grpnuevasoc WHERE OC ='$OC';";
			mysqli_query($conexion,$sentencia);
			header("Location:grpRegOC.php");
		?>
	</body>
</html>