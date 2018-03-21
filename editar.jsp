<%@page import="javafx.util.converter.IntegerStringConverter"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : editar
    Created on : 21-mar-2018, 17:55:47
    Author     : Rafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
    
    String nombre = request.getParameter("nombre");
    String sexo = request.getParameter("sexo");
    String fase = request.getParameter("fase");
    String especie = request.getParameter("especie");
    String fechana = request.getParameter("edad");
    int id = Integer.valueOf(request.getParameter("codigo"));
    String sql = "UPDATE geckos  SET nombre ='"+ nombre +"',sexo='"+sexo+"',fase='"+fase+"',especie='"+especie+"',fechana='"+fechana+"' WHERE codgecko='"+id+"'";
    s.execute(sql);

 String redireccionar = "listEjemplares.jsp";
 response.sendRedirect(redireccionar);
 conexion.close();
%>