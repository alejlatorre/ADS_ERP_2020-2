<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
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
                            <!-- <input type="hidden" name="_token" value="Yd6LAHkG9QMk3RfikWuU4r7Pk8FI6jxlcgAbQF6T"> -->
                            <input class="form-control textoLogin" autocomplete="off" placeholder="Registro de Usuario" type="text" name="idUsuario" value="">
                        </div>
                        <div class="form-group">
                            <input class="form-control textoLogin" autocomplete="off" placeholder="Password" type="password" name="pwUsuario" value="">
                        </div>
                        <div class="form-group">
                            <center>
                                <input class="btn btn-default textoLogin" type="submit" style="font-weight: bold;" value="Ingresar" name="btnAcceder" required>
                                <input class="btn btn-default textoLogin" type="submit" style="font-weight: bold;" value="Registrar" name="btnRegistrar" required>
                            </center>
                        </div>

                        <?php
            
                            if (isset($_POST["btnAcceder"]))
                            {
                                # Parámetros de conexión
                                $server = "localhost";
                                $username = "root";
                                $password = "";
                                $dbname = "bd_erp";
                                $cnx = mysqli_connect($server, $username, $password, $dbname);

                                # Variables
                                $idUsuario = $_POST["idUsuario"];
                                $pwUsuario = $_POST["pwUsuario"];

                                # Condicional de la conexión
                                if (!$cnx)
                                {
                                    die("Error en la conexión: ".mysqli_connect_error);
                                }
                                else
                                {
                                    # Realiza una query en la que se evalúa si el resultado devuelve más de una fila
                                    $query = "SELECT idUsuario, pwUsuario, rolUsuario, nombreUsuario, apellidoUsuario, fechaNacimiento 
                                                FROM dimusuarios 
                                                WHERE 
                                                idUsuario = '$idUsuario' 
                                                AND pwUsuario ='$pwUsuario'";
                                    $resultado = mysqli_query($cnx, $query);
                                    $fila = mysqli_fetch_row($resultado);

                                    session_start();
                                    $_SESSION['nombre'] = $fila[3];
                                    $_SESSION['apellido'] = $fila[4];
                                    $_SESSION['dni'] = $fila[0];
                                    $_SESSION['rol'] = $fila[2];   
                                    $numFilas = mysqli_num_rows($resultado);    
                                    
                                    if ($numFilas != 0)
                                    {
                                    
                                        header("Location: vistaPrincipal.php");
                                    }
                                    else
                                    {
                                        echo "Usuario o contraseña incorrectos";
                                    }    
                                }
                            }
                            elseif (isset($_POST["btnRegistrar"]))
                            {   
                                header("Location: crearRegistro.php");
                            }
                            else
                            {}
                
                        ?>
                        <div class="clearfix"></div>
                        <div class="separator"></div>
                    </form>
                </section>
            </div>
        </div>
    </div>
</body>
</html>
