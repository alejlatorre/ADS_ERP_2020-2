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
                        <h1 class="mt-4">Aprobar OC</h1>
                        
                        <!-- <ol class="breadcrumb mb-4">

                        </ol> -->

                        <div class="card mb-4">
                            <!-- <div class="card-header"><i class="fas fa-table mr-1"></i>DataTable Example</div> -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <?php
                                        # Sirve GET cuando se pasa una variable directamente
                                        $Concepto = $_GET["Concepto"];                                        
                                        $conexion = mysqli_connect("localhost","root","","bd_erp");
                                        $sentencia = "SELECT * FROM grpnuevasoc WHERE Concepto='$Concepto';";                   
                                        $resultado = mysqli_query($conexion,$sentencia); 
                                        $registro = mysqli_fetch_row($resultado);                                  
                                        echo "<form action='' method='POST'>";
                                        echo "Concepto: <input type='text' name='Concepto' value='",$registro[1],"'><br><br>"; 
                                        echo "Precio: <input type='text' name='Precio' value='",$registro[2],"'><br><br>"; 
                                        echo "Proveedor: <input type='text' name='Proveedor' value='",$registro[3],"'><br><br>"; 
                                        echo "Centro de costos: <input type='text' name='CentroCostos' value='",$registro[4],"'><br><br>"; 
                                        echo "Cantidad: <input type='text' name='Cantidad' value='",$registro[5],"'><br><br>"; 
                                        echo "Unidad: <input type='text' name='Unidad' value='",$registro[6],"'><br><br>"; 
                                        echo "Fecha de creación de la OC: <input type='text' name='FechaCrea_OC' value='",$registro[7],"'><br><br>";
										if ($registro[8]=='Aprobado'){
											echo "	Aprobacion Legal: <input name='Aprob_Legal' type='radio' value='Aprobado' checked>Aprobado";
											echo "			<input name='Aprob_Legal' type='radio' value='Rechazado'>Rechazado";
										}													
										else {
											echo "	Aprobacion Legal: <input name='Aprob_Legal' type='radio' value='Aprobado'>Aprobado";
											echo "			<input name='Aprob_Legal' type='radio' value='Rechazado' checked>Rechazado";
										}
										echo "	<br>";											
										if ($registro[9]=='Aprobado'){
											echo "	Aprobacion Finanzas: <input name='Aprob_Finanzas' type='radio' value='Aprobado' checked>Aprobado";
											echo "			<input name='Aprob_Finanzas' type='radio' value='Rechazado'>Rechazado";
										}													
										else {
										echo "	<br><br>";	
											echo "	Aprobacion Finanzas: <input name='Aprob_Finanzas' type='radio' value='Aprobado'>Aprobado";
											echo "			<input name='Aprob_Finanzas' type='radio' value='Rechazado' checked>Rechazado";
										}	
										echo "	<br><br>";										
                                        echo "<input type='submit' value='Guardar' formaction='grpEditarAprobOC.php'>";
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
