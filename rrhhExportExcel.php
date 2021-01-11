<?php
    # Exportar a excel
    $conexion = mysqli_connect("localhost","root","","bd_erp");
    $output = '';

    if (isset($_POST["export_excel"]))
    {
        $query = "SELECT p.nomPersonal, p.apellidoPersonal, p.edadPersonal, p.sexoPersonal, p.dniPersonal, p.celularPersonal, p.correoPersonal, p.fechaNacimiento, p.fechaIngreso, p.fechaPosActual, q.nomPosicion, g.nomGerencia, g.area, h.nomSubcategoria,s.nomPersonal, s.apellidoPersonal,q.cantPosCargo, p.fechaCese
									FROM rrhhpersonal AS p 
									INNER JOIN rrhhposicion as q 
									on p.idPosicion = q.idPosicion 
									INNER JOIN rrhhpersonal as s 
									on s.idPersonal=p.idJefe 
									INNER JOIN rrhhgerencia as g 
									on g.idGerencia=q.idGerencia 
									INNER JOIN rrhhsubcategoria as h 
									on h.idSubcategoria=q.idSubcategoria";
        $result = mysqli_query($conexion, $query);
		$cantidad = mysqli_num_rows($result);
        if (mysqli_num_rows($result) > 0)
        {
            # Se concatena el resultado a la variable $output
            # Se añade
            $output .= '
                        <table class="table" bordered="1">  
                                        <tr>  
                                            <th>Nombre</th>
											<th>Apellido</th>  
											<th>Sexo</th>  
                                            <th>Edad</th>  
                                            <th>DNI</th>
                                            <th>Teléfono Celular</th>
                                            <th>Correo Institucional</th>
                                            <th>Fecha de Nacimiento</th>
                                            <th>Fecha de Ingreso</th>
											<th>Fecha de Posición Actual</th>
											<th>Posición Actual</th>
											<th>Gerencia</th>
											<th>Area</th>
											<th>Estatus</th>
											<th>Nombre del Jefe Directo</th>
											<th>Apellido del Jefe Directo</th>
											<th>Cantidad de Posiciones a Cargo</th>
											<th>Fecha de Cese</th>
											</tr>
                        ';
            # Cada valor de mysqli_fetch_array es una fila (arreglo) y se asigna a $row 
            # La iterativa se mantendrá verdadera hasta que no hayan más filas (FALSE)
            
			for ($i=1; $i<= $cantidad; $i++){
            $registro = mysqli_fetch_row($result);
			
                $output .= '
                            <tr>  
                                    <td>'.$registro[0].'</td>
                                    <td>'.$registro[1].'</td>
                                    <td>'.$registro[2].'</td>
                                    <td>'.$registro[3].'</td>
                                    <td>'.$registro[4].'</td>
                                    <td>'.$registro[5].'</td>
                                    <td>'.$registro[6].'</td>
									<td>'.$registro[7].'</td>
									<td>'.$registro[8].'</td>
									<td>'.$registro[9].'</td>
									<td>'.$registro[10].'</td>
									<td>'.$registro[11].'</td>
									<td>'.$registro[12].'</td>
									<td>'.$registro[13].'</td>
									<td>'.$registro[14].'</td>
									<td>'.$registro[15].'</td>
									<td>'.$registro[16].'</td>
									<td>'.$registro[17].'</td>
                            </tr>
                            ';
            } 
            
            $output .= '</table>';
            header('Content-Type: application/application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename=Base_Datos_Personal.xls');
            echo $output;      
        }
    }
?>