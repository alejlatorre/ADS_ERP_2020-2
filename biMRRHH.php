<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <link rel="shortcut icon" href="img/du.png">


    <title>ERP | DRINK UP</title>

    <!-- Estilos -->
    <link rel="stylesheet" href="css/styles.css">  
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>



</head>
<body class="sb-nav-fixed">   
    <div id="layoutSidenav">
        <!-- Barra lateral -->
        <?php include("lateralBar.php"); ?> 

        <!-- Contenido de la parte de adentro -->
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                <center>
                   <h1 class="mt-4">Reporte de RRHH</h1>
                </center>
                    <div>
                        <form method="POST">
                        </form>
                    </div>

                    <?php $cnx = mysqli_connect("localhost", "root", "", "bd_erp"); ?>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Distribución de la cantidad de Personal por Categoría</div>
                                <div class="card-body">

                                <?php
                                    $query = "SELECT A.nomSubcategoria, COUNT(*) AS cantPersonal
                                    FROM (
                                    SELECT per.idPersonal, per.nomPersonal, cat.nomSubcategoria
                                    FROM rrhhpersonal per
                                    LEFT JOIN 
                                    rrhhposicion pos 
                                    ON
                                    per.idPosicion = pos.idPosicion
                                    LEFT JOIN 
                                    rrhhsubcategoria cat
                                    ON 
                                    pos.idSubcategoria = cat.idSubcategoria) A 
                                    GROUP BY
                                    A.nomSubcategoria
                                    ORDER BY 
                                    A.nomSubcategoria ASC;";
                                    $result = mysqli_query($cnx, $query);
                                    $data = '';

                                    while ($row = mysqli_fetch_array($result))
                                    {
                                        $data .= "{ label: '".$row["nomSubcategoria"]."', value: ".$row["cantPersonal"]." }, ";
                                    }
                                    $data = substr($data, 0, -2);
                                ?>
                                
                                <div id="donutChart"></div> 

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-4">
                        <div class="card-header"><i class="fas fa-table mr-1"></i>Registros</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <?php 
                                        $query = "SELECT DISTINCT per.nomPersonal, cat.nomSubcategoria
                                        FROM rrhhpersonal per
                                        LEFT JOIN 
                                        rrhhposicion pos 
                                        ON
                                        per.idPosicion = pos.idPosicion
                                        LEFT JOIN 
                                        rrhhsubcategoria cat
                                        ON 
                                        pos.idSubcategoria = cat.idSubcategoria
                                        ORDER BY nomSubcategoria ASC;";
                                        $result = mysqli_query($cnx, $query);
                                        $numFilas = mysqli_num_rows($result);
                                    ?> 
                                    <thead>
                                        <tr>
                                            <th>Nombre del Personal</th>
                                            <th>Rol del Personal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $i = 1;
                                            while ($i <= $numFilas)
                                            {
                                                $row = mysqli_fetch_row($result);
                                        ?>
                                            <tr>
                                                <td><?php echo $row[0]; ?></td>
                                                <td><?php echo $row[1]; ?></td>
                                            </tr>
                                        
                                        <?php 
                                            $i = $i + 1;
                                            }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>                    
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
    <script src="js/morrisDonutChart.js" type="application/javascript"></script>


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <link rel="stylesheet" href="css/morris.css">  
    <script src="js/morris.min.js" charset="utf-8"></script>
    
   
</body>
</html>


<script>
    Morris.Donut({
    element: 'donutChart',
    data: [<?php echo $data; ?>],
    colors: ['#AC2400', '#AD3F00', '#A86700', '#D8871C'],
    labelColor: "black"
  });
</script>