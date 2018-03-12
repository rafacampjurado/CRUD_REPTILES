<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        		<h1>Encabezado</h1>
        	</header>
        	<nav>
        		<a href="index.html">Introducción</a> - <a href="listEjemplares.jsp">Listado de ejemplares</a> - Listado de crías - listado de clientes
        	</nav>
        	<section>
                    <h1>Listado</h1>
                    <table id="tablaLista">
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Fase</th>
                            <th>Especie</th>
                            <th>Sexo</th>
                        
                       
                    
                    <%
                    Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reptiles","root", "");
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM geckos");
		
		while (listado.next()) {
			out.println("<tr><td>"+listado.getString("codgecko")+"</td><td>"+listado.getString("nombre")+"</td><td>"+listado.getString("fase")+"</td><td>"
                          +listado.getString("especie")+"</td><td>"+listado.getString("sexo")+"</td></tr>"+"");
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
