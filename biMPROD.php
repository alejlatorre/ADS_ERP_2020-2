<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
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
                   <h1 class="mt-4">Reporte de Producción</h1>
                </center>
                    <div>
                        <form method="POST">
                            <center>
                                <select name="selectKPI">
                                    <option value="1">Porcentaje de Merma</option>
                                    <option value="2">Porcentaje de Productividad</option>
                                </select>
                                <input type="submit" value="Cargar" name='filtroKPI'>
                                <br><br>
                            </center>
                        </form>
                    </div>

                    <?php $cnx = mysqli_connect("localhost", "root", "", "bd_erp"); ?>
                    <?php if (isset($_POST["filtroKPI"])) { if($_POST["selectKPI"] == "1") {?>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">                                
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Evolución mensual del Porcentaje de Merma (%)</div>
                                    <div class="card-body">  
                                    <?php                                                    
                                            $query = "SELECT Mes, tipoProducto, SUM(cantReal) as cantReal, SUM(cantMerma) as cantMerma, TRUNCATE(AVG(porcMerma),2) AS porcMerma FROM (
                                                SELECT 
                                                            CASE
                                                                WHEN MONTH(prd.Fecha_inicio) = 1 THEN '2020-01'
                                                                WHEN MONTH(prd.Fecha_inicio) = 2 THEN '2020-02'
                                                                WHEN MONTH(prd.Fecha_inicio) = 3 THEN '2020-03'
                                                                WHEN MONTH(prd.Fecha_inicio) = 4 THEN '2020-04'
                                                                WHEN MONTH(prd.Fecha_inicio) = 5 THEN '2020-05'
                                                                WHEN MONTH(prd.Fecha_inicio) = 6 THEN '2020-06'
                                                                WHEN MONTH(prd.Fecha_inicio) = 7 THEN '2020-07'
                                                                WHEN MONTH(prd.Fecha_inicio) = 8 THEN '2020-08'
                                                                WHEN MONTH(prd.Fecha_inicio) = 9 THEN '2020-09'
                                                                WHEN MONTH(prd.Fecha_inicio) = 10 THEN '2020-10'
                                                                WHEN MONTH(prd.Fecha_inicio) = 11 THEN '2020-11'
                                                                WHEN MONTH(prd.Fecha_inicio) = 12 THEN '2020-12'
                                                                ELSE '-'
                                                            END AS Mes,
                                                            tp.tipoProducto, SUM(prd.cantidadReal) AS cantReal, SUM(prd.cantidadMerma) AS cantMerma, TRUNCATE((SUM(prd.cantidadMerma)/SUM(prd.cantidadReal)*100),2) AS porcMerma FROM prodoutput prd LEFT JOIN prodtipoprod tp ON prd.codTipoProducto = tp.codTipoProducto GROUP BY prd.Fecha_inicio, tp.tipoProducto) A
                                                            GROUP BY Mes, tipoProducto ORDER BY Mes ASC;";
                                            $result = mysqli_query($cnx, $query);
                                            $data = '';
                                            
                                            while ($row = mysqli_fetch_array($result))
                                            {
                                                $data .= "{ mes: '".$row["Mes"]."' , merma: ".$row["porcMerma"]." }, ";
                                            }
                                            $data = substr($data, 0, -2);                                                                  
                                        ?>                                  
                                        <div id='lineChart'></div>  
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Detalle</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <?php 
                                            $query = "SELECT Mes, tipoProducto, SUM(cantReal) as cantReal, SUM(cantMerma) as cantMerma, TRUNCATE(AVG(porcMerma),2) AS porcMerma FROM (
                                                SELECT 
                                                            CASE
                                                                WHEN MONTH(prd.Fecha_inicio) = 1 THEN '2020-01'
                                                                WHEN MONTH(prd.Fecha_inicio) = 2 THEN '2020-02'
                                                                WHEN MONTH(prd.Fecha_inicio) = 3 THEN '2020-03'
                                                                WHEN MONTH(prd.Fecha_inicio) = 4 THEN '2020-04'
                                                                WHEN MONTH(prd.Fecha_inicio) = 5 THEN '2020-05'
                                                                WHEN MONTH(prd.Fecha_inicio) = 6 THEN '2020-06'
                                                                WHEN MONTH(prd.Fecha_inicio) = 7 THEN '2020-07'
                                                                WHEN MONTH(prd.Fecha_inicio) = 8 THEN '2020-08'
                                                                WHEN MONTH(prd.Fecha_inicio) = 9 THEN '2020-09'
                                                                WHEN MONTH(prd.Fecha_inicio) = 10 THEN '2020-10'
                                                                WHEN MONTH(prd.Fecha_inicio) = 11 THEN '2020-11'
                                                                WHEN MONTH(prd.Fecha_inicio) = 12 THEN '2020-12'
                                                                ELSE '-'
                                                            END AS Mes,
                                                            tp.tipoProducto, SUM(prd.cantidadReal) AS cantReal, SUM(prd.cantidadMerma) AS cantMerma, TRUNCATE((SUM(prd.cantidadMerma)/SUM(prd.cantidadReal)*100),2) AS porcMerma FROM prodoutput prd LEFT JOIN prodtipoprod tp ON prd.codTipoProducto = tp.codTipoProducto GROUP BY prd.Fecha_inicio, tp.tipoProducto) A
                                                            GROUP BY Mes, tipoProducto ORDER BY Mes ASC;";
                                            $result = mysqli_query($cnx, $query);
                                            $numFilas = mysqli_num_rows($result); 
                                        ?>

                                        <thead>
                                            <tr>
                                                <th>Fecha Inicio</th>
                                                <th>Tipo de Producto</th>
                                                <th>Cantidad Real</th>
                                                <th>Cantidad Merma</th>
                                                <th>Porcentaje de Merma (%)</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        <?php
                                            $i = 1;
                                            while($i <= $numFilas)
                                            {
                                                $row = mysqli_fetch_row($result); 
                                        ?>
                                                <tr>
                                                    <td><?php echo $row[0]; ?></td>
                                                    <td><?php echo $row[1]; ?></td>
                                                    <td><?php echo $row[2]; ?></td>
                                                    <td><?php echo $row[3]; ?></td>
                                                    <td><?php echo $row[4]; ?></td>
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
                    <?php } else if ($_POST["selectKPI"] == "2") { ?>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">                                
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Evolución mensual del Porcentaje de la Productividad (%)</div>
                                    <div class="card-body">  
                                    <?php 
                                            $query = "SELECT Mes, nomOperario, SUM(cantProducida) AS cantProducida, SUM(cantNecesaria) AS   cantNecesaria, TRUNCATE(AVG(porcProductividad),2) AS porcProductividad
                                            FROM(
                                            SELECT CASE
                                                    WHEN MONTH(Fecha) = 1 THEN '2020-01'
                                                    WHEN MONTH(Fecha) = 2 THEN '2020-02'
                                                    WHEN MONTH(Fecha) = 3 THEN '2020-03'
                                                    WHEN MONTH(Fecha) = 4 THEN '2020-04' 
                                                    WHEN MONTH(Fecha) = 5 THEN '2020-05'
                                                    WHEN MONTH(Fecha) = 6 THEN '2020-06'
                                                    WHEN MONTH(Fecha) = 7 THEN '2020-07'
                                                    WHEN MONTH(Fecha) = 8 THEN '2020-08'
                                                    WHEN MONTH(Fecha) = 9 THEN '2020-09'
                                                    WHEN MONTH(Fecha) = 10 THEN '2020-10'
                                                    WHEN MONTH(Fecha) = 11 THEN '2020-11'
                                                    WHEN MONTH(Fecha) = 12 THEN '2020-12'
                                                    ELSE '-'
                                                END AS Mes,
                                            nomOperario, SUM(cantProducida) AS cantProducida, SUM(cantNecesaria) AS cantNecesaria, (SUM(cantProducida)/SUM(cantNecesaria))*100 AS porcProductividad 
                                            FROM 
                                            prodoperaciones
                                            GROUP BY 
                                            Fecha, nomOperario) A
                                            GROUP BY 
                                            Mes, nomOperario
                                            ORDER BY
                                            Mes ASC;";

                                            $result = mysqli_query($cnx, $query);
                                            $data = '';
                                            
                                            while ($row = mysqli_fetch_array($result))
                                            {
                                                $data .= "{ mes: '".$row["Mes"]."' , prod: ".$row["porcProductividad"]." }, ";
                                            }
                                            $data = substr($data, 0, -2);
                                                                                                             
                                        ?>                                  
                                        <div id='lineChartB' ></div>  
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Detalle</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <?php
                                            $query = "SELECT Fecha,
                                                        nomOperario, SUM(cantProducida) AS cantProducida, SUM(cantNecesaria) AS cantNecesaria, TRUNCATE((SUM(cantProducida)/SUM(cantNecesaria))*100, 2) AS porcProductividad 
                                                        FROM 
                                                        prodoperaciones
                                                        GROUP BY 
                                                        Fecha, nomOperario
                                                        ORDER BY
                                                        Fecha ASC";
                                            $result = mysqli_query($cnx, $query);
                                            $numFilas = mysqli_num_rows($result); 
                                        ?>                                                           
                                        <thead>
                                            <tr>
                                                <th>Fecha</th>
                                                <th>Nombre del Operario</th>
                                                <th>Cantidad Producida</th>
                                                <th>Cantidad Necesaria</th>
                                                <th>Porcentaje de Productividad (%)</th>
                                            </tr>
                                        </thead>

                                        <tbody>

                                        <?php
                                            $i = 1;
                                            while($i <= $numFilas)
                                            {
                                                $row = mysqli_fetch_row($result); 
                                        ?>
                                                <tr>
                                                    <td><?php echo $row[0]; ?></td>
                                                    <td><?php echo $row[1]; ?></td>
                                                    <td><?php echo $row[2]; ?></td>
                                                    <td><?php echo $row[3]; ?></td>
                                                    <td><?php echo $row[4]; ?></td>
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

                    <?php }} ?>
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
    <script src="js/morrisLineChart.js" type="application/javascript"></script>


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <link rel="stylesheet" href="css/morris.css">  
    <script src="js/morris.min.js" charset="utf-8"></script>
    <script src="js/morris.js" charset="utf-8"></script>
    

    
</body>
</html>



<script>
    Morris.Line({
        element: 'lineChart',
        data:[<?php echo $data; ?>],
        xkey:'mes',
        ykeys:['merma'],
        labels:['Merma'],
        lineColors: ['#D45700'],
        hideHover:'auto',
        xLabels:'month',
        goals:[19, 70],
        goalLineColors: ['blue','red'],
        goalStrokeWidth: 2.8
    });
</script>   

<script>
    Morris.Line({
        element: 'lineChartB',
        data:[<?php echo $data; ?>],
        xkey:'mes',
        ykeys:['prod'],
        labels:['Productividad'],
        lineColors: ['#D45700'],
        hideHover:'auto',
        xLabels:'month',
        goals:[100],
        goalLineColors: ['blue'],
        goalStrokeWidth: 2.8
    });
</script>   