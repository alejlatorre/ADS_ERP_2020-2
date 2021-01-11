<html>
<head>

</head>
<body>
    <center>
		<?php
			# Variables que se extraen de la pestaña anterior
			$numFactura = $_POST["numFactura"];
			$NomRemesa= $_POST["NomRemesa"];
			$Ordenante = $_POST["Ordenante"];
			$RUC = $_POST["RUC"];
			$ConcepFactura = $_POST["ConcepFactura"];
			$Fecha_emi = $_POST["Fecha_emi"];
			$Fecha_venc = $_POST["Fecha_venc"];
			$Importe = $_POST["Importe"];
	
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			# Se instancia una query
			$sentencia = "INSERT INTO grpremesas VALUES (null, '$numFactura','$NomRemesa', '$Ordenante','$RUC', '$ConcepFactura','$Fecha_emi','$Fecha_venc' ,'$Importe' );";	
			# Se ejecuta la query 
			mysqli_query($conexion,$sentencia);
			# Regresa a la otra pestaña
			header("Location:grpRemesa.php");
		?>
	</center> 
</body>
</html>
