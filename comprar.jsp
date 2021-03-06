<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id = Integer.valueOf(request.getParameter("id"));
     Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
    ResultSet select = s.executeQuery("SELECT fase FROM crias WHERE codcria='"+id+"'");
        String fase = "";
        while(select.next()) {
     fase = (select.getString("fase"));
        }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="imagenes/favicon.ico" type="image/ico" />

        <title>REPTILES | venta </title>

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
                    <!-- top tiles -->

                    <!-- /top tiles -->

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="text-center">
                                <h1>Datos del comprador</h1> 
                            </div>
                            <div class="text-left">
                                <div class="col-md-12 col-sm-12 col-xs-12 bg-white">
                                    <h2>Gecko seleccionado: <% out.print("número "+id+" fase "+fase);%></h2>
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12">
                                            <div class="x_panel">
                                                <div class="x_content">
                                                    <form action="compraCria.jsp" method="POST" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre <span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input type="text" id="nombre" name="nombre" required="required" class="form-control col-md-7 col-xs-12">
                                                                <input type="int" id="codigoCria" name="codigoCria" hidden="hidden" value="<% out.print(id); %>">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Primer Apellido <span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input type="text" id="apellidoUno" name="apellidoUno" required="required" class="form-control col-md-7 col-xs-12">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Segundo Apellido <span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input type="text" id="apellidoDos" name="apellidoDos" required="required" class="form-control col-md-7 col-xs-12">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">DNl</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="dni" class="form-control col-md-7 col-xs-12" type="text" name="dni"maxLength="9">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <div id="gender" class="btn-group" data-toggle="buttons">
                                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                                        <input type="radio" name="sexo" value="hombre" data-parsley-multiple="gender"> &nbsp; Hombre &nbsp;
                                                                    </label>
                                                                    <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                                        <input type="radio" name="sexo" value="mujer" data-parsley-multiple="gender"> Mujer
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="ln_solid"></div>
                                                        <div class="form-group">
                                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                                <a href="ventaEjemplar.jsp"><button class="btn btn-primary" type="button">Cancelar compra</button></a>
                                                                <button type="submit" class="btn btn-success">Realizar compra</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>
                    <br />
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