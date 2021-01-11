<?php session_start();
?>
<!DOCTYPE>
<html>
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


            <!-- Inicio del bloque de la pantalla a mostrar -->
            <!-- Div es una bloque de divide la pantalla -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <center>
                            <h1>Registro de ingreso de Producto Terminado:</h1>
                            <p>
                                <form action="" method="POST">
                                    ID Personal: <input type="text" name="ID"><br><br>
                                    Codigo Lote:  
									<select name="idLote">
									   <option value="1">1</option> 
									   <option value="7">7</option> 
									   <option value="9">9</option>
									   <option value="12">12</option> 
									 </select> <br><br>
									 
                                    Cantidad: <input type="text" name="Cantidad"><br><br>
                                    Unidad: 
									<select name="Unidad">
									   <option value="botella">botella</option> 
									</select> 									
									<br><br>
																		
                                    Fecha entrada:  <input type="date" name="f_entrada"><br><br>
									Hora entrada:   <input type="time" name="h_entrada"><br><br>
									Fecha de vencimiento:  <input type="date" name="fecha_ven"><br><br>
									Temperatura de refrigeración:  <input type="text" name="T_ref"><br><br>
                                    <br>
                                    <input type="submit" value="Registrar" name="Registrar"> <br><br>

                                    <?php								
                                        include("logisticaP42.php");
                                    ?>																		
                                </form>																				
                            </p>
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
            <!-- Fin del bloque de la pantalla a mostrar -->


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