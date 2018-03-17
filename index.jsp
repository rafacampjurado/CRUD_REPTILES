<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="imagenes/favicon.ico" type="image/ico" />

        <title>REPTILES | inicio </title>

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
                                <h1>Introducción</h1> 
                            </div>
                            <div class="text-left">
                                <div class="col-md-12 col-sm-12 col-xs-12 bg-white">
                                    <div class="x_title">
                                        <h2>Eublepharis macularius</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <p>El gecko leopardo (Eublepharis macularius) es una especie de gecko de la familia Eublepharidae.
                                        Viven principalmente en las regiones semidesérticas de Oriente Medio, desde Irán hasta Pakistán. 
                                        Se trata de una especie muy utilizada como mascota por su facilidad para la cría y mantenimiento en cautividad en el terrario.</p>
                                    <div class="img-container">
                                        <img src="imagenes/foto2.JPG" height="400px" style="position:relative;left:20px; margin-bottom: 50px; border:6px solid #bdbdbd;">
                                        <img src="imagenes/foto3.JPG" height="400px" style="position:relative;left:400px; margin-bottom: 50px; border:6px solid #bdbdbd;">
                                    </div>
                                    <p>Su tamaño total es de unos 18-24 cm, siendo la cola un tercio de la longitud total.
                                        Se caracterizan, como todos los geckos del género Eublepharis, por poseer párpados completos y móviles.
                                        Tienen un cuerpo robusto, alargado, con extremidades fuertes y adaptadas a la vida terrestre, terminadas en 5 dedos.
                                        Los geckos leopardo carecen de las clásicas lamellas o almohadillas adhesivas de los dedos
                                        que otros geckos tienen para subir por superficies lisas e incluso andar boca abajo por un cristal, así que E.
                                        macularius no dispone de esta habilidad trepadora. Otra característica típica es el patrón de máculas (manchas) oscuras sobre
                                        un fondo amarillo anaranjado (sus patrones son infinitos y únicos en el mundo) (de ahí el nombre vulgar de gecko leopardo).
                                        Su piel es lisa salpicada irregularmente de escamas tuberculares. No así en los geckos recién nacidos, cuyo patrón de color consta de
                                        un bandeado como el de una avispa; si bien con el crecimiento enseguida las bandas negras se diseminan en forma de los característicos puntos
                                        'leopardinos' de los adultos. Los colores y las formas en cautividad son diversas y variopintas 
                                        debido a los cruces sucesivos y a la selección genética de los criadores.</p>                                   
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

