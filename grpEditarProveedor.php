<?php
	# Variables que se extraen el archivo anterior
	$RUC = trim($_POST["RUC"]);
	$RazonSocial= trim($_POST["RazonSocial"]);
	$Rubro = trim($_POST["Rubro"]);
	$Direccion = trim($_POST["Direccion"]);
	$RepresentanteComercial = trim($_POST["RepresentanteComercial"]);   
	$Celular = trim($_POST["Celular"]);
	$Correo = trim($_POST["Correo"]);
	$Descripcion= trim($_POST["Descripcion"]);
	
	# Parámetros de conexión
	$conexion = mysqli_connect("localhost","root","","bd_erp");
	$sentencia = "UPDATE grpocs 
						SET RUC = '".$RUC."', RazonSocial = '".$RazonSocial."', Direccion = '".$Direccion."', RepresentanteComercial = '".$RepresentanteComercial."',	Celular = '".$Celular."', Correo = '".$Correo."', Descripcion = '".$Descripcion."', Rubro = '".$Rubro."' 
						WHERE RUC = '".$RUC."'"; 
	mysqli_query($conexion, $sentencia);
	header("Location:grpRegNuevProve.php");
	
?>
