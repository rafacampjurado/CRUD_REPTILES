<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre = request.getParameter("nombre");
    int codigoCria = Integer.valueOf(request.getParameter("codigoCria"));
    String apellidoUno = request.getParameter("apellidoUno");
    String apellidoDos = request.getParameter("apellidoDos");
    String sexo = request.getParameter("sexo");
    String dni = request.getParameter("dni");
    String estado = "vendida";

    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
    PreparedStatement pS = null;

 String actualizar = "UPDATE crias SET estado='vendida' where codcria="+codigoCria+"";
s.execute(actualizar);
int insertar = s.executeUpdate("INSERT INTO comprador (dni,nombre,primerApellido,segundoApellido,sexo) VALUES ('" + dni + "','" + nombre + "','" + apellidoUno + "','" + apellidoDos + "','"+ sexo + "')");
    
 String redireccionar = "listEjemplares.jsp";
 response.sendRedirect(redireccionar);
 conexion.close();
 
%>
