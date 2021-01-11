<?php session_start();
?>
<!DOCTYPE html>
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
                            <h1>Registro de Pedido de Ingredientes:</h1>
                            <p>
                                <form action="" method="POST">
                                    ID Personal: <input type="text" name="ID"><br><br>
                                    Codigo de Materia Prima:  
									
									<select name="codMP">	
									   <option selected value="1">Agua embotellada</option> 
									   <option value="2">Cebada malteada Pale Ale</option> 
									   <option value="3">Cebada malteada Caramel</option>
									   <option value="4">Lúpulo</option> 
									   <option value="5">Levadura Safale</option> 
									   <option value="6">Camu camu</option> 
									   <option value="7">Arandanos</option>
									   <option value="8">Maracuya</option>
									</select> <br><br>
																
																	
                                    Cantidad: <input type="text" name="Cantidad"><br><br>
                                    Unidad:
									<select name="Unidad">	
									   <option value="litros">litros</option> 
									   <option value="kilogramos">kilogramos</option> 
									</select> <br><br>
									
                                    Fecha de solicitud:  <input type="date" name="f_solicitud"><br><br>
									
									Fecha requerida de entrega: <input type="date" name="f_requerida"><br><br>
									
                                    <br>
                                    <input type="submit" value="Registrar" name="Registrar" >  <br><br>


								<?php
								
									include("logisticaP62.php");
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