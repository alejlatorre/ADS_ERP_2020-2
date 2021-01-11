<?php
	# Variables que se extraen el archivo anterior
	$Concepto = trim($_POST["Concepto"]);
	$Precio = trim($_POST["Precio"]);
	$Proveedor = trim($_POST["Proveedor"]);
	$CentroCostos = trim($_POST["CentroCostos"]);
	$Cantidad = trim($_POST["Cantidad"]);   
	$Unidad = trim($_POST["Unidad"]);
	$Aprob_Legal = trim($_POST["Aprob_Legal"]);
	$Aprob_Finanzas = trim($_POST["Aprob_Finanzas"]);
	$FechaCrea_OC = trim($_POST["FechaCrea_OC"]);
	
	# Parámetros de conexión
	$conexion = mysqli_connect("localhost","root","","bd_erp");
	$sentencia = "UPDATE grpnuevasoc 
						SET Concepto = '".$Concepto."', Precio = '".$Precio."', Proveedor = '".$Proveedor."', CentroCostos = '".$CentroCostos."',	Cantidad = '".$Cantidad."', Unidad = '".$Unidad."', Aprob_Legal = '".$Aprob_Legal."', Aprob_Finanzas = '".$Aprob_Finanzas."', FechaCrea_OC = '".$FechaCrea_OC."' 
						WHERE Concepto = '".$Concepto."'"; 
	mysqli_query($conexion, $sentencia);
	header("Location:grpAprobOC.php");
	
?>
