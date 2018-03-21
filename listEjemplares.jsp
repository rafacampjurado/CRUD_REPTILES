<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="imagenes/favicon.ico" type="image/ico" />

        <title>REPTILES | listado </title>

        <!-- Bootstrap -->
        <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">

        <!-- bootstrap-progressbar -->
        <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
        <!-- bootstrap-daterangepicker -->
        <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="build/css/custom.min.css" rel="stylesheet">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
            Statement s = conexion.createStatement();

        %>
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="nav.jsp" %>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <nav>
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>
                        </nav>
                    </div>
                </div>
                <!-- /top navigation -->

                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Listado de ejemplares </h3>
                            </div>
                            <div class="clearfix">

                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h3>Listado adultos</h3>
                                        </div>
                                        <div class="x_content">
                                            <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <table id="datatable" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
                                                            <thead>
                                                            <th>Nombre</th>
                                                            <th>Fase</th>
                                                            <th>Especie</th>
                                                            <th>Sexo</th>
                                                            
                                                            
                                                            </thead>
                                                            <tbody>
                                                                <%                                                                    ResultSet listado = s.executeQuery("SELECT * FROM geckos ");

                                                                    while (listado.next()) {
                                                                        out.println("<tr><td>" + listado.getString("nombre") + "</td><td>" + listado.getString("fase") + "</td><td>" + listado.getString("especie") + "</td><td>"
                                                                                + listado.getString("sexo") + "</td><td><a href='criar.jsp?id=" + listado.getString("codgecko") + "'<button type='button' class='btn btn-primary'>Criar</a></td>"
                                                                                        + "<td><a href='editorGecko.jsp?id="+ listado.getString("codgecko") +"'> <i class='fa fa-pencil'> Editar</i></a></td></tr>");
                                                                    }
                                                                %>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- top tiles -->

                                            <!-- /top tiles -->


                                        </div>

                                    </div>
                                    <br />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h3>Listado ejemplares jóvenes</h3>
                                        </div>
                                        <div class="x_content">
                                            <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <table id="datatable" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
                                                            <thead>
                                                            <th>Sexo</th>
                                                            <th>Fase</th>
                                                            <th>Fecha de nacimiento</th> 
                                                            </thead>
                                                            <tbody>
                                                                <%
                                                                    ResultSet listado2 = s.executeQuery("SELECT * FROM crias WHERE estado='enVenta'");

                                                                    while (listado2.next()) {
                                                                        out.println(" </tr><td>" + listado2.getString("sexo") + "</td><td>" + listado2.getString("fase") + "</td><td>" + listado2.getString("fechna") + "</td> </tr>");
                                                                    }

                                                                    conexion.close();
                                                                %>



                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- top tiles -->

                                            <!-- /top tiles -->


                                        </div>

                                    </div>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <%@include file="footer.jsp" %>

                <!-- jQuery -->
                <script src="vendors/jquery/dist/jquery.min.js"></script>
                <!-- Bootstrap -->
                <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
                <!-- FastClick -->
                <script src="vendors/fastclick/lib/fastclick.js"></script>
                <!-- NProgress -->
                <script src="vendors/nprogress/nprogress.js"></script>
                <!-- Chart.js -->
                <script src="vendors/Chart.js/dist/Chart.min.js"></script>
                <!-- gauge.js -->
                <script src="vendors/gauge.js/dist/gauge.min.js"></script>
                <!-- bootstrap-progressbar -->
                <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
                <!-- iCheck -->
                <script src="vendors/iCheck/icheck.min.js"></script>
                <!-- Skycons -->
                <script src="vendors/skycons/skycons.js"></script>
                <!-- Flot -->
                <script src="vendors/Flot/jquery.flot.js"></script>
                <script src="vendors/Flot/jquery.flot.pie.js"></script>
                <script src="vendors/Flot/jquery.flot.time.js"></script>
                <script src="vendors/Flot/jquery.flot.stack.js"></script>
                <script src="vendors/Flot/jquery.flot.resize.js"></script>
                <!-- Flot plugins -->
                <script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
                <script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
                <script src="vendors/flot.curvedlines/curvedLines.js"></script>
                <!-- DateJS -->
                <script src="vendors/DateJS/build/date.js"></script>
                <!-- JQVMap -->
                <script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
                <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
                <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
                <!-- bootstrap-daterangepicker -->
                <script src="vendors/moment/min/moment.min.js"></script>
                <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

                <!-- Custom Theme Scripts -->
                <script src="build/js/custom.min.js"></script>

                </body>
                </html>

