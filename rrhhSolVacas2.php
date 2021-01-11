    <html>
    <head>
    </head>
    <body>
        <center>
            <?php
                // Instanciar variables
                $soli = $_POST["soli"];
				$nombre = $_POST["nombre"];
                $apellido = $_POST["apellido"];
                $posicion = $_POST["posicion"];
                $f_inicio = $_POST["f_inicio"];
                $f_fin = $_POST["f_fin"];
                // Cadena de conexión
                $cnx = mysqli_connect("localhost","root","","bd_erp");
                $query = "INSERT INTO rrhhSolVacas VALUES (null,'$soli','$nombre','$apellido','$posicion','$f_inicio','$f_fin');";
                mysqli_query($cnx,$query);
                header("Location:rrhhSolVacas.php");
            ?>
        </center>
    </body>
</html>