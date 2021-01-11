<?php
	session_start();
	# Variables que se extraen el archivo anterior
	$codTipoProducto = trim($_POST["codTipoProducto"]);
	$nomPT= trim($_POST["nomPT"]);
	$Observacion = trim($_POST["Observacion"]);
	$Fecha_inicio = trim($_POST["Fecha_inicio"]);
	$Fecha_fin = trim($_POST["Fecha_fin"]);   
	$fecha_ven = trim($_POST["fecha_ven"]);
	$codLinea= trim($_POST["codLinea"]);
	$cantidadReal= trim($_POST["cantidadReal"]);
	$cantidadMerma= trim($_POST["cantidadMerma"]);
	$Unidad= trim($_POST["Unidad"]);
	
	# Parámetros de conexión
	
	$idLote = $_SESSION['idLote'];

	$conexion = mysqli_connect("localhost","root","","bd_erp");
	$sentencia = "UPDATE prodoutput 
						SET Observacion = '".$Observacion."', Fecha_inicio = '".$Fecha_inicio."', Fecha_fin = '".$Fecha_fin."', codLinea = '".$codLinea."',	fecha_ven = '".$fecha_ven."', cantidadReal = '".$cantidadReal."', cantidadMerma = '".$cantidadMerma."', Unidad = '".$Unidad."', codTipoProducto = '".$codTipoProducto."', nomPT = '".$nomPT."' WHERE idLote='$idLote';"; 
	mysqli_query($conexion, $sentencia);
	header("Location:prodMostrarProyectos.php");
		
?>
