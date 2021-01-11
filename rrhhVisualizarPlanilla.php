<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="img/du.png">

    <title>ERP | DRINK UP</title>

    <!-- Estilos -->
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>

</head>
<body class="sb-nav-fixed">
    <div id="layoutSidenav">
        <?php include("lateralBar.php") ?> 
        
        <!-- Contenido de la parte de adentro -->
        <div id="layoutSidenav_content">
        <main>
                <div class="container-fluid">
                    <center>
                        <h1 class="mt-4">Base de Datos de Trabajadores</h1>
                        <p>
                            <form action="rrhhFiltro.php" method="POST">			
								<input type="text" placeholder="Gerencia" name="nomGerencia"/>										
                                <input type="submit" value="Buscar"/>
                            </form>
                        </p>
                    <!-- <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Visualizar Plantilla de Trabajadores</li>
                    </ol> -->

                    <div class="card mb-4">
                        <!-- <div class="card-header"><i class="fas fa-table mr-1"></i>DataTable Example</div> -->
                        <div class="card-body">
                            <div class="table-responsive">

                                    <?php
                                    $conexion = mysqli_connect("localhost","root","","bd_erp");
									$sentencia = "SELECT p.nomPersonal, p.apellidoPersonal, p.edadPersonal, p.sexoPersonal, p.dniPersonal, p.celularPersonal, p.correoPersonal, p.fechaNacimiento, p.fechaIngreso, p.fechaPosActual, q.nomPosicion, g.nomGerencia, g.area, h.nomSubcategoria,s.nomPersonal, s.apellidoPersonal,q.cantPosCargo, p.fechaCese
									FROM rrhhpersonal AS p 
									INNER JOIN rrhhposicion as q 
									on p.idPosicion = q.idPosicion 
									INNER JOIN rrhhpersonal as s 
									on s.idPersonal=p.idJefe 
									INNER JOIN rrhhgerencia as g 
									on g.idGerencia=q.idGerencia 
									INNER JOIN rrhhsubcategoria as h 
									on h.idSubcategoria=q.idSubcategoria;";                         
                                    $resultado = mysqli_query($conexion,$sentencia);  
									
									$cantidad = mysqli_num_rows($resultado);
				
                                    echo "<table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>";
                                    echo "<thead>";
                                    echo "<tr>";
                                    echo "<td>Nombre</td>";
									echo "<td>Apellido</td>";
                                    echo "<td>Edad</td>";
                                    echo "<td>Sexo</td>";
                                    echo "<td>DNI</td>";
                                    echo "<td>Teléfono Celular</td>";                                  
                                    echo "<td>Correo Institucional</td>";
                                    echo "<td>Fecha de Nacimiento </td>";
                                    echo "<td>Fecha de Ingreso</td>";
									echo "<td>Fecha de Posición Actual</td>";
									echo "<td>Posición Actual</td>";
									echo "<td>Gerencia</td>";
									echo "<td>Área</td>";
									echo "<td>Estatus</td>";
									echo "<td>Nombre del Jefe Directo</td>";
									echo "<td>Apellido del Jefe Directo</td>";
									echo "<td>Cantidad de Posiciones a Cargo</td>";
									echo "<td>Fecha de Cese</td>";
                                    echo "</tr>";
                                    echo "<thead>";
                
                                    for ($i=1; $i<= $cantidad; $i++){
                                    $registro = mysqli_fetch_row($resultado);
                                    echo "<tr>";
                                    echo "<td>",$registro[0],"</td>";
                                    echo "<td>",$registro[1],"</td>";
                                    echo "<td>",$registro[2],"</td>";
                                    echo "<td>",$registro[3],"</td>";
                                    echo "<td>",$registro[4],"</td>";
                                    echo "<td>",$registro[5],"</td>";
                                    echo "<td>",$registro[6],"</td>";
                                    echo "<td>",$registro[7],"</td>";
									echo "<td>",$registro[8],"</td>";
									echo "<td>",$registro[9],"</td>";
									echo "<td>",$registro[10],"</td>";
									echo "<td>",$registro[11],"</td>";
									echo "<td>",$registro[12],"</td>";
									echo "<td>",$registro[13],"</td>";
									echo "<td>",$registro[14],"</td>";
									echo "<td>",$registro[15],"</td>";
									echo "<td>",$registro[16],"</td>";
									echo "<td>",$registro[17],"</td>";
									echo "</tr>";
                                    }
                                    echo "</table>";
                                                                
                                    ?>

                                    <form method="post" action="rrhhExportExcel.php" >
                                        <input type= "submit" name="export_excel" class="btn btn-success" value="Exportar Excel" />
                                    </form>

                            </div>
                        </div>   
                    </div>
                    </center>            
                </div>
            </main>

            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Drink-Up 2020</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>   

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>       
    <script src="js/script.js" type="application/javascript"></script>



</body>
</html>