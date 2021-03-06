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
                        <h1 class="mt-4">Modificar Proveedor</h1>
                        
                        <!-- <ol class="breadcrumb mb-4">

                        </ol> -->

                        <div class="card mb-4">
                            <!-- <div class="card-header"><i class="fas fa-table mr-1"></i>DataTable Example</div> -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <?php
                                        # Sirve GET cuando se pasa una variable directamente
                                        $RUC = $_GET["RUC"];                                        
                                        $conexion = mysqli_connect("localhost","root","","bd_erp");
                                        $sentencia = "SELECT * FROM grpocs WHERE RUC='$RUC';";                   
                                        $resultado = mysqli_query($conexion,$sentencia); 
                                        $registro = mysqli_fetch_row($resultado);                                  
                                        echo "<form action='' method='POST'>";
                                        echo "RUC: <input type='text' name='RUC' value='",$registro[1],"'><br><br>"; 
                                        echo "Rubro: <input type='text' name='Rubro' value='",$registro[6],"'><br><br>"; 
                                        echo "Razón Social: <input type='text' name='RazonSocial' value='",$registro[2],"'><br><br>"; 
                                        echo "Direccion: <input type='text' name='Direccion' value='",$registro[7],"'><br><br>"; 
                                        echo "Representante Comercial: <input type='text' name='RepresentanteComercial' value='",$registro[3],"'><br><br>"; 
                                        echo "Celular: <input type='text' name='Celular' value='",$registro[4],"'><br><br>"; 
                                        echo "Correo: <input type='text' name='Correo' value='",$registro[5],"'><br><br>"; 
                                        echo "Descripcion: <input type='text' name='Descripcion' value='",$registro[8],"'><br><br>"; 
                                        echo "<input type='submit' value='Guardar' formaction='grpEditarProveedor.php'>";
                                        echo "</form>";
                                    ?>                                
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