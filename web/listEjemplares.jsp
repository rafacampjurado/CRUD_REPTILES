<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
                    <%
                    Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles","root", "");
		Statement s = conexion.createStatement();
                %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
        	<header>
        	</header>
        	<nav>
        		<a href="index.html">Introducción</a> - <a href="listEjemplares.jsp">Listado de ejemplares</a> - Listado de crías - listado de clientes
        	</nav>
        	<section>
                    <h1>Listado de ejemplares adultos</h1>
                    <table id="tablaLista">
                        <tr>
                            <th>Nombre</th>
                            <th>Fase</th>
                            <th>Especie</th>
                            <th>Sexo</th>
                            <th>Criar</th>
                    <%		
		ResultSet listado = s.executeQuery ("SELECT * FROM geckos");
		
		while (listado.next()) {
			out.println("<tr><td>"+listado.getString("nombre")+"</td><td>"+listado.getString("fase")+"</td><td>"+listado.getString("especie")+"</td><td>"
                          +listado.getString("sexo")+"</td><td><a href='criar.jsp?id="+listado.getString("codgecko")+"'>Criar</a></td></tr>");
                                    }
                                     
		
		
                %>
                        
                 </table>
                                     <h1>Listado de ejemplares jóvenes</h1>
                    <table id="tablaLista">
                        <tr>
                            <th>Sexo</th>
                            <th>Fase</th>
                            <th>Fecha de nacimiento</th>                   
                    <%		
		ResultSet listado2 = s.executeQuery ("SELECT * FROM crias");
		
		while (listado2.next()) {
			out.println(" </tr><td>"+listado2.getString("sexo")+"</td><td>"+listado2.getString("fase")+"</td><td>"+listado2.getString("fechna")+"</td> </tr>");
                                    }
                                     
		
		conexion.close();
                %>
                 </table>
        	</section>
        	<footer>
        	Pié de página
        </footer>
        </div>
    </body>
</html>
