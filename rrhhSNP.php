<?php session_start(); ?>
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
                            <h1>Solicitud de Nueva Posición</h1>
                            <p>
                                <form action="" method="POST">
                                    Gerencia: <input type="text" name="gerencia"><br><br>
                                    Área: <input type="text" name="area"><br><br>
                                    Número de vacantes: <input type="text" name="num_vac"><br><br>
                                    Puesto a solicitud: <input type="text" name="psoli"><br><br>
                                    Solicitante: <input type="text" name="soli"><br><br>
                                    <br>
                                    <input type="submit" value="Guardar" formaction="rrhhSNP2.php">
                                    <input type="submit" value="Regresar" formaction="vistaPrincipal.html">                                    
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