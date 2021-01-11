<!DOCTYPE html>
<head>
    <link rel="shortcut icon" href="img/du.png">

    <link href="css/font-awesome-5.7.1.min.css" rel="stylesheet" type="text/css">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>
    <div id="layoutSidenav_nav">   
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <!-- <div>
                    <img src="du.png" alt="logo" class="logo">  
                </div> -->
                <div class="nav">
                    <p>
                        <span class="welcome">Bienvenido/a,</span>
                    </p>
                    <p>
                        <span class="name"><?php echo strtoupper($_SESSION['nombre']); ?></span> <br>
                        <span class="lastname"><?php echo strtoupper($_SESSION['apellido']); ?></span>
                    </p>
                    <p>
                        <span class="dni"><?php echo $_SESSION['dni']; ?></span>
                    </p>    
                    
                    <div class="sb-sidenav-menu-heading"></div>       

                    <!-- Módulo de Producción -->
                    <!-- Combinación de condicionales de PHP con resultados en HTML -->
                    <?php if($_SESSION['rol'] == 'admin' || $_SESSION['rol'] == 'an_prod'): ?> 
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProd" aria-expanded="false" aria-controls="collapseProd">
                        <div class="sb-nav-link-icon">
                            <i class="icony fas fa-industry"></i>
                        </div>Producción<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapseProd" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link" href="prodMostrarProyectos.php">Administrar Proyectos de Producción</a>
                                <a class="nav-link" href="prodVisualizarProyectos.php">Visualizar Reportes Diarios de Producción</a>
                                <!-- En prodPlanificacion.php ponerlo en este href -->
                                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">Planificación de la Producción Diaria<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>                                                      
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="prodplani.php">Visualizar planificación diaria</a>
                                            <a class="nav-link" href="prodmaqui.php">Visualizar maquinaria disponible</a>
                                            <a class="nav-link" href="prodMostrarOperacion.php">Agregar nueva operación</a>
                                        </nav>
                                    </div>
                                <a class="nav-link" href="prodMostrarProductos.php">Registro de Nuevos Productos</a>
                            </nav>
                        </div>
                    <?php else: ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProd" aria-expanded="false" aria-controls="collapseProd">
                        <div class="sb-nav-link-icon">
                            <i class="icony fas fa-industry"></i>
                        </div>Producción<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapseProd" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link" href="#">Administrar Proyectos de Producción</a>
                                <a class="nav-link" href="prodVisualizarProyectos.php">Visualizar Reportes Diarios de Producción</a>
                                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">Planificación de la Producción Diaria<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>                                                      
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="prodplani.php">Visualizar planificación diaria</a>
                                            <a class="nav-link" href="prodmaqui.php">Visualizar maquinaria disponible</a>
                                            <a class="nav-link" href="#">Agregar nueva operación</a>
                                        </nav>
                                    </div>
                                <a class="nav-link" href="#">Registro de Nuevos Productos</a>
                            </nav>
                        </div>
                    <?php endif ?>


                    <!-- Módulo de Logística -->
                    <?php if($_SESSION['rol'] == 'admin' || $_SESSION['rol'] == 'an_log'): ?> 
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLog" aria-expanded="false" aria-controls="collapseLog">
                            <div class="sb-nav-link-icon">
                                <i class="icony fas fa-truck"></i>
                            </div>Logística<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseLog" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link" href="logisticaP1.php">Visualizar stock de ingredientes</a>
                                    <a class="nav-link" href="logisticaP2.php">Visualizar stock de productos finales</a>
                                    <a class="nav-link" href="logisticaP3.php">Registrar ingreso de ingredientes</a>
                                    <a class="nav-link" href="logisticaP4.php">Registrar ingreso de producto terminado</a>
                                    <a class="nav-link" href="logisticaP5.php">Registro de solicitudes de compra</a>
                                    <a class="nav-link" href="logisticaP6.php">Registro de pedidos de ingredientes</a>
                                </nav>
                            </div>
                    <?php else: ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLog" aria-expanded="false" aria-controls="collapseLog">
                            <div class="sb-nav-link-icon">
                                <i class="icony fas fa-truck"></i>
                            </div>Logística<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseLog" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link" href="logisticaP1.php">Visualizar stock de ingredientes</a>
                                    <a class="nav-link" href="logisticaP2.php">Visualizar stock de productos finales</a>
                                    <a class="nav-link" href="#">Registrar ingreso de ingredientes</a>
                                    <a class="nav-link" href="#">Registrar ingreso de producto terminado</a>
                                    <a class="nav-link" href="#">Registro de solicitudes de compra</a>
                                    <a class="nav-link" href="#">Registro de pedidos de ingredientes</a>
                                </nav>
                            </div>
                    <?php endif ?>


                    <!-- Módulo de RRHH  -->
                    <?php if($_SESSION['rol'] == 'admin' || $_SESSION['rol'] == 'an_rrhh'): ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRRHH" aria-expanded="false" aria-controls="collapseRRHH">
                            <div class="sb-nav-link-icon">
                                <i class="icony fas fa-users"></i>
                            </div>Recursos Humanos<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseRRHH" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <!-- Ejemplo de un segundo nivel -->
                                    <a class="nav-link" href="rrhhSNP.php">Solicitar nuevo proceso de selección</a>
                                    <a class="nav-link" href="rrhhSolVacas.php">Solicitud de vacaciones</a>
                                    <a class="nav-link" href="rrhhVisualizarPlanilla.php">Administración del personal</a>                                       
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">Ingreso como recursos humanos<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>                                                      
                                        <!-- Ejemplo de un tercer nivel -->
                                        <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                            <nav class="sb-sidenav-menu-nested nav">
                                                <a class="nav-link" href="rrhhVSNP.php">Solicitudes de proceso de selección</a>
                                                <a class="nav-link" href="rrhhVSolVacas.php">Solicitud de vacaciones</a>
                                                <a class="nav-link" href="rrhhTrabajadores.php">Consulta por trabajadores</a>
                                            </nav>
                                        </div>
                                </nav>    
                            </div>
                    <?php else: ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRRHH" aria-expanded="false" aria-controls="collapseRRHH">
                            <div class="sb-nav-link-icon">
                                <i class="icony fas fa-users"></i>
                            </div>Recursos Humanos<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseRRHH" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <!-- Ejemplo de un segundo nivel -->
                                    <a class="nav-link" href="rrhhSNP.php">Solicitar nuevo proceso de selección</a>
                                    <a class="nav-link" href="rrhhSolVacas.php">Solicitud de vacaciones</a>
                                    <a class="nav-link" href="#">Administración del personal</a>                                       
                                    <a class="nav-link" href="#">Ingreso como recursos humanos</a>                                       
                                </nav>    
                            </div>
                    <?php endif ?>

                    
                    <!-- Módulo GRP -->
                    <?php if($_SESSION['rol'] == 'admin' || $_SESSION['rol'] == 'an_grp'): ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGRP" aria-expanded="false" aria-controls="collapseGRP">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-clipboard-list"></i>
                            </div>Gestión de Relación con Proveedores<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseGRP" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link" href="grpRecepSolCompra.php">Recepción de solicitudes de compra</a>                                       
                                    <a class="nav-link" href="grpRegNuevProve.php">Registro de nuevos proveedores</a>                                                                         
                                    <a class="nav-link" href="grpRegOC.php">Registro de OC</a>
                                    <a class="nav-link" href="grpRemesa.php">Generar remesas bancarias</a>
                                </nav>
                            </div>
                    <?php else: ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGRP" aria-expanded="false" aria-controls="collapseGRP">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-clipboard-list"></i>
                            </div>Gestión de Relación con Proveedores<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseGRP" aria-labelledby="headingOne" data-parent="#sidenavAccordion"></div>
                    <?php endif ?>


                    <!-- Módulo de BI -->
                    <?php if($_SESSION['rol'] == 'admin' || $_SESSION['rol'] == 'an_bi'): ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBI" aria-expanded="false" aria-controls="collapseBI">
                            <div class="sb-nav-link-icon">
                                <i class="icony fas fa-chart-line"></i>
                            </div>Inteligencia Comercial<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseBI" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link" href="biERP.php">Administración de tablas del ERP</a>
                                    <a class="nav-link" href="biETL.php">Administración de ETLs</a>                    
                                    <a class="nav-link" href="biMPROD.php">Reporte de Producción</a>
                                    <!-- <a class="nav-link" href="#">Reporte de Logística</a> -->
                                    <a class="nav-link" href="biMRRHH.php">Reporte de RRHH</a>
                                    <!-- <a class="nav-link" href="#">Reporte de GRP</a> -->
                                </nav>
                            </div>   
                    <?php else: ?>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBI" aria-expanded="false" aria-controls="collapseBI">
                            <div class="sb-nav-link-icon">
                                <i class="icony fas fa-chart-line"></i>
                            </div>Inteligencia Comercial<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                            <div class="collapse" id="collapseBI" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link" href="#">Administración de tablas del ERP</a>
                                    <a class="nav-link" href="#">Administración de ETLs</a>                    
                                    <a class="nav-link" href="biMPROD.php">Reporte de Producción</a>
                                    <!-- <a class="nav-link" href="#">Reporte de Logística</a> -->
                                    <a class="nav-link" href="biMRRHH.php">Reporte de RRHH</a>
                                    <!-- <a class="nav-link" href="#">Reporte de GRP</a> -->
                            </nav></div>   
                    <?php endif ?>
                    
                </div>
            </div>

            <div class="sb-sidenav-footer">
                <div class="medium">Perfil de:</div>                   
                <div class="medium">
                    <?php
                        if ($_SESSION['rol'] == 'admin'):
                            echo 'Administrador';
                        elseif ($_SESSION['rol'] == 'an_prod'):
                            echo 'Analista de Producción';
                        elseif ($_SESSION['rol'] == 'an_log'):
                            echo 'Analista de Logística';
                        elseif ($_SESSION['rol'] == 'an_rrhh'):
                            echo 'Analista de RRHH';
                        elseif ($_SESSION['rol'] == 'an_grp'):
                            echo 'Analista de GRP';
                        elseif ($_SESSION['rol'] == 'an_bi'):
                            echo 'Analista de BI';
                        else:
                            echo '-';
                        endif 
                    ?>
                </div>
                <div class="medium">
                    <div class="endSession">
                        <a href="endSession.php">Cerrar sesión</a>   
                    </div>  
                </div>
            </div>
        </nav> 
    </div>  
</body>
</html>



