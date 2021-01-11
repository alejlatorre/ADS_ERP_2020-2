<html>
<head>

</head>
<body>
    <center>
		<?php
			# Variables que se extraen de la pestaña anterior
			$codTipoProducto = $_POST["codTipoProducto"];
			$nomPT= $_POST["nomPT"];
			$Observacion = $_POST["Observacion"];
			$Fecha_inicio = $_POST["Fecha_inicio"];
			$Fecha_fin = $_POST["Fecha_fin"];
			$fecha_ven = $_POST["fecha_ven"];
			$codLinea= $_POST["codLinea"];
			$cantidadReal= $_POST["cantidadReal"];
			$cantidadMerma= $_POST["cantidadMerma"];
			$Unidad= $_POST["Unidad"];
	
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			# Se instancia una query
			$sentencia = "INSERT INTO prodoutput VALUES (null, '$fecha_ven','$codTipoProducto', '$Observacion','$Fecha_inicio', '$Fecha_fin','$codLinea','$nomPT','$cantidadReal', '$cantidadMerma', '$Unidad');";	
			# Se ejecuta la query 
			mysqli_query($conexion,$sentencia);
			# Regresa a la otra pestaña
			header("Location:prodMostrarProyectos.php");
		?>
	</center> 
</body>
</html>
