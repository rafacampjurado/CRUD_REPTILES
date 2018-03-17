<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
import="reptiles.cria"%>
<%
    int id = Integer.valueOf(request.getParameter("id"));
    int num = 0;
    String fase = "";
    String sexo = "";

    num = (int) (Math.random() * 6);
    switch (num) {
        case 0:
            fase = "nominal";
            break;
        case 1:
            fase = "highYellow";
            break;
        case 2:
            fase = "tangerine";
            break;
        case 3:
            fase = "stripe";
            break;
        case 4:
            fase = "sunglow";
            break;
        case 5:
            fase = "raptor";
            break;
    }
    num = 0;
    num = (int) (Math.random() * 2);
    switch (num) {
        case 0:
            sexo = "macho";
            break;
        case 1:
            sexo = "hembra";
            break;
    }
    Calendar fecha = new GregorianCalendar();
    int año = fecha.get(Calendar.YEAR);
    int mes = fecha.get(Calendar.MONTH);
    int dia = fecha.get(Calendar.DAY_OF_MONTH);
    String fechaResultado;
    fechaResultado = año + "-" + mes + "-" +dia ;
    String estado = "enVenta";
    // -----------------------------------------------------------------------------------------------------------------------
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
    int sql = s.executeUpdate("INSERT INTO crias (fase,fechna,estado,sexo) VALUES ('" + fase + "','" + fechaResultado + "','" + estado + "','" + sexo + "')");
    String redireccionar = "listEjemplares.jsp";
    response.sendRedirect(redireccionar);
    conexion.close();
%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->

