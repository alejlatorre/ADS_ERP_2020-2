<html>
<head>

</head>
<body>
    <center>
		<?php
			# Variables que se extraen de la pestaña anterior
			$Concepto = $_POST["Concepto"];
			$Precio = $_POST["Precio"];
			$Proveedor = $_POST["Proveedor"];
			$CentroCostos = $_POST["CentroCostos"];
			$Cantidad = $_POST["Cantidad"];
			$Unidad = $_POST["Unidad"];
			$FechaCrea_OC = $_POST["FechaCrea_OC"];
			$EstadoLegal = "PENDIENTE";
			$EstadoFin = "PENDIENTE";
	
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			# Se instancia una query
			$sentencia = "INSERT INTO grpnuevasoc VALUES (null, '$Concepto','$Precio', '$Proveedor','$CentroCostos', '$Cantidad','$Unidad','$FechaCrea_OC', '$EstadoLegal', '$EstadoFin');";	
			# Se ejecuta la query 
			mysqli_query($conexion,$sentencia);
			# Regresa a la otra pestaña
			header("Location:grpRegOC.php");
		?>
	</center> 
</body>
</html>
