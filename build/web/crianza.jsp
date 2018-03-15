<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                     Class.forName("com.mysql.jdbc.Driver");
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
                    <h1>Listado de ejemplares en posesión</h1>
                    <form id="formularioCria" action="criar.jsp" method="POST">
                        <p>Selecciona un macho</p>
                        <select name="padre">
                            <option value="">Selecciona un macho..</option>
                            <% ResultSet resultado = s.executeQuery ("SELECT nombre FROM geckos WHERE sexo = 'macho'");
                            while(resultado.next()) {
                                out.println("<option value="+resultado.getString("nombre")+">"+resultado.getString("nombre")+"</option>");
                            }
                            
                            
                            %>
                            Enviar<br>
                            <input type="submit">
                    </form>
                    <table id="tablaLista">
                        <tr>
                            <th>Nombre</th>
                            <th>Fase</th>
                            <th>Especie</th>
                            <th>Sexo</th>
                        
                       
                    
                    <%

		
		ResultSet listado = s.executeQuery ("SELECT * FROM geckos WHERE sexo = 'macho'");
		
		while (listado.next()) {
			out.println("<tr><td>"+listado.getString("nombre")+"</td><td>"+listado.getString("fase")+"</td><td>"+listado.getString("especie")+"</td><td>"
                          +listado.getString("sexo")+"</td></tr>");
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
