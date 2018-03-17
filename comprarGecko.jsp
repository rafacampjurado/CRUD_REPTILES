<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String edad = request.getParameter("edad");
    String fase = request.getParameter("fase");
    String raza = request.getParameter("raza");
    String sexo = request.getParameter("sexo");
    String dni = request.getParameter("dni");
    String nombre = request.getParameter("nombre");
    String estado = "vendida";

    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
int insertar = s.executeUpdate("INSERT INTO geckos (especie,fase,sexo,fechana,nombre) VALUES ('" + raza + "','" + fase + "','" + sexo + "','" + edad + "','"+ nombre + "')");
    
 String redireccionar = "listEjemplares.jsp";
 response.sendRedirect(redireccionar);
 conexion.close();
 
%>
