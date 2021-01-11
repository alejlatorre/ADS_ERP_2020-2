<?php
    if(isset($_POST["btnRegistrar"]))
    {
        // Variables de conexion
        $server = "localhost";
        $username = "root";
        $password = "";
        $dbname = "bd_erp";
        $cnx = mysqli_connect($server, $username, $password, $dbname);

        // Variables del archivo previo
        $idUsuario = $_POST["idUsuario"];
        $nombreUsuario = $_POST["nombreUsuario"];
        $rol = "admin";
        $apellidoUsuario = $_POST["apellidoUsuario"];
        $fechaNacimiento = $_POST["fechaNacimiento"];
        $anio = substr($_POST["fechaNacimiento"],0,4);
        $mes = substr($_POST["fechaNacimiento"],5,2);
        $dia = substr($_POST["fechaNacimiento"],8,2);
        $pw = ($anio*$mes)+$dia;
        
        // Condicional por si falla la conexión
    }
    else
    {
        echo "Error";
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <!-- Símbolo del ERP -->
    <link rel="shortcut icon" href="img/du.png">

 
    <title>ERP - DRINK-UP</title>

    <!-- FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
   
    <!-- CSS-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/custom.min.css" rel="stylesheet" type="text/css">
    <link href="css/webADS.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">

    <!--JS-->
    <script type="text/javascript"  src="js/jquery-1.12.4.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- <script type="text/javascript" src="http://b29310t16w7:8080/prod/public/js/impl.js"></script> -->
    
    <style> 
    .fondo 
    {
        /* background-image: url('img/verano.jpg'); */
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;    

    }
</style>
</head>

<body class="loginFondo">
    <div>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">                                                             
                    <style> 
                        .textoLogin {
                        color: black;
                        font-size: 16px;      
                        opacity: 97%;      
                        }
                    </style>

                    <form method="POST">
                        <div class="imgLogin">
                            <img src = "img/du.png" style="width: 100%" />
                        </div>
                        <div class="form-group">
                            <?php 
                                if (!$cnx)
                                {
                                    die("Error en la conexión: ".mysqli_connect_error);
                                }
                                else
                                {
                                    // Inserción de datos en una tabla
                                    $queryRegistro = "INSERT INTO dimusuarios VALUES ('$idUsuario','$pw','$rol','$nombreUsuario','$apellidoUsuario','$fechaNacimiento')";                       
                                    if (mysqli_query($cnx, $queryRegistro))
                                    {
                                        echo "<p style='color: white; font-size:18px'> Su usuario es: ", $idUsuario, "<br>";
                                        echo "Su contraseña es: ", $pw, "</p><br>";                
                                    }
                                    else
                                    {
                                        echo "<p style='color: white; font-size:18px'> Error al generar el registro en la base de datos. <br> Por favor contactar a soporte técnico.</p>";
                                    }
                                }                                                   
                            ?>
                        <div class="form-group">
                            <p><input class="btn btn-default textoLogin" type="submit" style="font-weight: bold;" name="Regresar" value="Ir al login" formaction="index.php"></p>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator"></div>
                    </form>
                </section>
            </div>
        </div>
    </div>
</body>
</html>