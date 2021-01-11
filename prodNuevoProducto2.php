<html>
<head>

</head>
<body>
    <center>
		<?php
			# Variables que se extraen de la pestaña anterior
			$tipoProducto= $_POST["tipoProducto"];
			$codLinea= $_POST["codLinea"];
			$codMarca= $_POST["codMarca"];
			$Presentación= $_POST["Presentación"];
	
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			# Se instancia una query
			$sentencia = "INSERT INTO prodtipoprod VALUES (null,'$tipoProducto', '$codLinea','$codMarca','$Presentación');";	
			# Se ejecuta la query 
			mysqli_query($conexion,$sentencia);
			# Regresa a la otra pestaña
			header("Location:prodMostrarProductos.php");
		?>
	
	</center> 
</body>
</html>
