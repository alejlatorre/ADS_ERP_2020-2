    <html>
    <head>
    </head>
    <body>
        <center>
            <?php
                // Instanciar variables
                $gerencia = $_POST["gerencia"];
                $area = $_POST["area"];
                $num_vac = $_POST["num_vac"];
                $psoli = $_POST["psoli"];
                $soli = $_POST["soli"];
                // Cadena de conexión
                $cnx = mysqli_connect("localhost","root","","bd_erp");
                $query = "INSERT INTO rrhhsolnp VALUES (null,'$gerencia','$area','$num_vac','$psoli','$soli');";
                mysqli_query($cnx,$query);
                header("Location:rrhhSNP.php");
            ?>
        </center>
    </body>
</html>