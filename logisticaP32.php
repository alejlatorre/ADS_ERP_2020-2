
<?php
	/* Conexion a Base de Datos*/

	
	if(isset($_POST['Registrar']))

	{
	
	$ID = $_POST["ID"];
	$codMP = $_POST["codMP"];
	$Cantidad = $_POST["Cantidad"];
	$Unidad = $_POST["Unidad"];
	$Fecha_entrada = $_POST["f_entrada"];
	$Hora_entrada = $_POST["h_entrada"];
	$Fecha_vencimiento = $_POST["fecha_ven"];
	$Temperatura_ref = $_POST["T_ref"];
	
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

	if(empty($Fecha_entrada))
	{echo "<p> *Error, completar la Fecha de entrada </p>";
	$valido = 0;
	}

	if(empty($Hora_entrada))
	{echo "<p> *Error, completar la Hora de entrada </p>";
	$valido = 0;
	}

	if(empty($Fecha_vencimiento))
	{echo "<p> *Error, completar la Fecha de vencimiento </p>";
	$valido = 0;
	}

	if(empty($Temperatura_ref))
	{echo "<p> *Error, completar la Temperatura de refrigeración </p>";
	$valido = 0;
	}

	if ($valido==1) {
		

		$conexion = mysqli_connect("localhost","root","","bd_erp");
		$sentencia = "INSERT INTO logentrada_mp VALUES ($ID, null,'$codMP','$Cantidad','$Unidad','$Fecha_entrada','$Hora_entrada','$Fecha_vencimiento','$Temperatura_ref') ;";
		$resultado = mysqli_query($conexion,$sentencia);                      


		if($resultado)
		{echo "<p> Se realizó con éxito </p>";}

	}

	}
?>

	