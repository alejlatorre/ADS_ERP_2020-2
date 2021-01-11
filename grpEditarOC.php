<?php
	session_start();
	# Variables que se extraen el archivo anterior
	$OC = trim($_SESSION["OC"]);
	$Concepto = trim($_POST["Concepto"]);
	$Precio = trim($_POST["Precio"]);
	$Proveedor = trim($_POST["Proveedor"]);
	$CentroCostos = trim($_POST["CentroCostos"]);
	$Cantidad = trim($_POST["Cantidad"]);   
	$Unidad = trim($_POST["CUnidad"]);
	$FechaCrea_OC = trim($_POST["FechaCrea_OC"]);
	
	# Parámetros de conexión
	$conexion = mysqli_connect("localhost","root","","bd_erp");
	$sentencia = "UPDATE grpnuevasoc 
						SET Concepto = '".$Concepto."', Precio = '".$Precio."', Proveedor = '".$Proveedor."', CentroCostos = '".$CentroCostos."',	Cantidad = '".$Cantidad."', Unidad = '".$Unidad."', FechaCrea_OC = '".$FechaCrea_OC."' 
						WHERE OC = '".$OC."'"; 
	mysqli_query($conexion, $sentencia);
	header("Location:grpRegOC.php");
	
?>
