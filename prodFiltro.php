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
                        <h1 class="mt-4">Relación de Proyectos</h1>
                        <p>
                            <form action="" method="POST">
                                <p>
                                    <input type="text" placeholder="Digite el nombre" name="nomPT"/>				
                                    <input type="submit" value="Buscar" formaction="prodFiltro.php"/>
                                    <input type="submit" value="Crear" formaction="prodNuevoProyecto.php"/>

                                </p>	
                                    
                                <div class="card mb-4">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                                <?php
                                                    $conexion = mysqli_connect("localhost","root","","bd_erp");
                                                    $sentencia = "SELECT * FROM prodoutput WHERE nomPT like '%".$_POST["nomPT"]."%';";                   
                                                    $resultado = mysqli_query($conexion,$sentencia);                                   
                                                    $numFilas = mysqli_num_rows($resultado);

                                                    echo "<table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>";
                                                    echo "<thead>";
                                                    echo "<tr>";
                                                    echo "<td>idLote</td>";
                                                    echo "<td>Fecha de vencimiento</td>";
                                                    echo "<td>Código de producto</td>";
                                                    echo "<td>Observación</td>";
                                                    echo "<td>Fecha de inicio</td>";
                                                    echo "<td>Fecha de fin</td>";
                                                    echo "<td>Código de Línea</td>";
                                                    echo "<td>Nombre</td>";
                                                    echo "<td>Cantidad Real</td>";
                                                    echo "<td>Cantidad de Merma</td>";
                                                    echo "<td>Unidad</td>";
                                                    echo "<td>Acciones</td>";
                                                    echo "</tr>";
                                                    echo "<thead>";
                                                    echo "<tbody>";
                                                    $i = 1;
                                                    while ($i <= $numFilas)
                                                    {
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
                                                        echo "<td><a href='prodEditarProyecto.php?idLote=$registro[0]'>Editar</a> <a href='prodEliminarProyecto.php?idLote=$registro[0]'>Eliminar</a></td>";
                                                        echo "</tr>";
                                                        $i = $i + 1;
                                                    }
                                                    echo "</tbody>";
                                                    echo "</table>";
                                                ?>
                                                <p>
                                                    <!-- <input type="submit" value="Crear"> -->
                                                </p>                                                                               
                                        </div>
                                    </div>
                                </div>
                            </form>                            
                        </p>
                        
                        <!-- Nuevo nuevo proyecto -->
                    </center>
                        
                    <!-- <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Administrar Proyectos</li>
                    </ol> -->
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