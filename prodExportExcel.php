<?php
    session_start();
    # Exportar a excel
    $conexion = mysqli_connect("localhost","root","","bd_erp");
    $output = '';

    if (isset($_POST["export_excel"]))
    {
        $query = $_SESSION["query"];
        $result = mysqli_query($conexion, $query);
        if (mysqli_num_rows($result) > 0)
        {
            # Se concatena el resultado a la variable $output
            # Se añade
            $output .= '
                        <table class="table" bordered="1">  
                                        <tr>  
                                            <th>Nombre</th>  
                                            <th>Fecha de vencimiento</th>  
                                            <th>Fecha de inicio</th>  
                                            <th>Fecha de fin</th>
                                            <th>Observación</th>
                                            <th>Cantidad Real</th>
                                            <th>Cantidad de Merma</th>
                                            <th>Unidad</th>
                                        </tr>
                        ';
            # Cada valor de mysqli_fetch_array es una fila (arreglo) y se asigna a $row 
            # La iterativa se mantendrá verdadera hasta que no hayan más filas (FALSE)
            while ($row = mysqli_fetch_array($result))
            {
                $output .= '
                            <tr>  
                                    <td>'.$row["nomPT"].'</td>  
                                    <td>'.$row["fecha_ven"].'</td>  
                                    <td>'.$row["Fecha_inicio"].'</td>  
                                    <td>'.$row["Fecha_fin"].'</td>  
                                    <td>'.$row["Observacion"].'</td>
                                    <td>'.$row["cantidadReal"].'</td>
                                    <td>'.$row["cantidadMerma"].'</td>
                                    <td>'.$row["Unidad"].'</td>
                            </tr>
                            ';
            } 
            
            $output .= '</table>';
            header('Content-Type: application/application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename=Reportes_diarios_produccion.xls');
            echo $output;      
        }
    }
?>