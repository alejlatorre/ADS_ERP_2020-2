<html>
<head>

</head>
<body>
    <center>
		<?php
			# Variables que se extraen de la pestaña anterior
			$nomOperario= $_POST["nomOperario"];
			$celOperario= $_POST["celOperario"];
			$idPosicion= $_POST["idPosicion"];
			$cantProducida= $_POST["cantProducida"];
			$cantNecesaria= $_POST["cantNecesaria"];
			$Fecha= $_POST["Fecha"];
			$codLinea= $_POST["codLinea"];
			$codTurno= $_POST["codTurno"];
			$idPersonal= $_POST["idPersonal"];
			# Parámetros de conexión
			$conexion = mysqli_connect("localhost","root","","bd_erp");
			# Se instancia una query
			$sentencia = "INSERT INTO prodoperaciones VALUES (null,'$nomOperario', '$celOperario', '$idPosicion', '$cantProducida', '$cantNecesaria', '$Fecha', '$codLinea','$codTurno', '$idPersonal');";	
			# Se ejecuta la query 
			mysqli_query($conexion,$sentencia);
			# Regresa a la otra pestaña
			header("Location:prodMostrarOperacion.php");
		?>
	</center> 
</body>
</html>
