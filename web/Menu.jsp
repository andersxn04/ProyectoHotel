<%-- 
    Document   : Menu
    Created on : 20-sep-2020, 23:13:52
    Author     : ander
--%>

<%@page import="presentacion.ModeloEmpleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Proyecto Hotel</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <% ModeloEmpleado modEmp=(ModeloEmpleado)session.getAttribute("sesEmp"); %>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Proyecto Hotel</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            
            <!-- Navbar-->
            <ul class="navbar-nav d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#"><%=modEmp.getCod()%></a>
                        <a class="dropdown-item" href="#">Recepcionista</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Salir</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Gestión</div>
                            <!--Gestion Empleado-->
                            <form action="ControlEmpleado" method="Post" class="nav-link">
                                <div class="sb-nav-link-icon"><i class="fas fa-user-cog	"></i></div>
                                <input type="submit" name="acc" value="Nuevo Empleado" class="input-sinEstilo"/>
                            </form>
                            <!--Gestion Cliente-->
                            <form action="ControlCliente" method="Post" class="nav-link">
                                <div class="sb-nav-link-icon"><i class="fa fa-users"></i></div>
                                <input type="submit" name="acc" value="Nuevo Cliente" class="input-sinEstilo"/>
                            </form>
                            <!--Gestion Habitacion-->
                            <form action="ControlHabitacion" method="Post" class="nav-link">
                                <div class="sb-nav-link-icon"><i class="fas fa-bed"></i></div>
                                <input type="submit" name="acc" value="Nueva Habitacion" class="input-sinEstilo"/>
                            </form>
                            <div class="sb-sidenav-menu-heading">Gestión de Reservas</div>
                            <!--Gestion Reserva-->
                            <form action="ControlReserva" method="Post" class="nav-link">
                                <div class="sb-nav-link-icon"><i class="fas fa-concierge-bell"></i></div>
                                <input type="submit" name="acc" value="Nueva Reserva" class="input-sinEstilo"/>
                            </form>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Desarrollo Web</div>
                      
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <!--SESION-->
                
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Inicio</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Inicio</li>
                        </ol>
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title" style="text-align: center; margin-bottom: 0rem;">¡Bienvenido <%=modEmp.getNom()%>!</h3>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Empleados</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Ver Detalles</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Clientes</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Ver Detalles</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Habitaciones</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Ver Detalles</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Reservaciones</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Ver Detalles</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area mr-1"></i>
                                En construcción
                            </div>
                            <div class="card-body " style="text-align: center;">
                                <img src="img/ingeniero.png" alt="En construccion">
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; &middot; Anderson Surco 2020</div>
                            <div>
                                <a href="#">Politica de Privacidad</a>
                                &middot;
                                <a href="#">Terminos &amp; Condiciones</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    </body>
</html>
