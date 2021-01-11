<html>

<?php
	/* Conexion a Base de Datos*/

	if(isset($_POST['Registrar']))

	{
								
	$ID = $_POST["ID"];
	$codMP = $_POST["codMP"];
	$Cantidad = $_POST["Cantidad"];
	$Unidad = $_POST["Unidad"];
	$Fecha_solicitud = $_POST["f_solicitud"];
	$Fecha_requerida = $_POST["f_requerida"];
	
	$valido=1;
		

	if(empty($ID))
	{echo "<p> *Error, completar tu ID </p>";
		$valido = 0;
	}

	if(empty($codMP))
	{echo "<p> *Error, completar el Código de la Materia Prima ID </p>";
	$valido = 0;
	}

	if(empty($Cantidad))
	{echo "<p> *Error, completar la Cantidad </p>";
	$valido = 0;
	}

	if(empty($Unidad))
	{echo "<p> *Error, completar la Unidad </p>";
	$valido = 0;
	}

	if(empty($Fecha_solicitud))
	{echo "<p> *Error, completar la Fecha de solicitud </p>";
	$valido = 0;
	}
	
	if(empty($Fecha_requerida))
	{echo "<p> *Error, completar la Fecha requerida de entrega</p>";
	$valido = 0;
	}



	if ($valido==1) {
		

		$conexion = mysqli_connect("localhost","root","","bd_erp");
		$sentencia = "INSERT INTO logsolprod VALUES ($ID, null,'$codMP','$Cantidad','$Unidad','$Fecha_solicitud','$Fecha_requerida') ;";
		$resultado = mysqli_query($conexion,$sentencia);                      


		$conexion2 = mysqli_connect("localhost","root","","bd_erp");
		$sentencia2 = "INSERT INTO logentrada_mp VALUES ($ID, null,'$codMP',$Cantidad *(-1),'$Unidad','$Fecha_solicitud',null,null,null) ;";
		$resultado2 = mysqli_query($conexion2,$sentencia2); 


		if($resultado)
		{echo "<p> Se realizó con éxito </p>";}

	}

	}

?>
