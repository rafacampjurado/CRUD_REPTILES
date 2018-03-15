package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class listEjemplares_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>TODO supply a title</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=PT+Serif\" rel=\"stylesheet\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("        \t<header>\r\n");
      out.write("        \t\t<h1>Encabezado</h1>\r\n");
      out.write("        \t</header>\r\n");
      out.write("        \t<nav>\r\n");
      out.write("        \t\t<a href=\"index.html\">Introducción</a> - <a href=\"listEjemplares.jsp\">Listado de ejemplares</a> - Listado de crías - listado de clientes\r\n");
      out.write("        \t</nav>\r\n");
      out.write("        \t<section>\r\n");
      out.write("                    <h1>Listado</h1>\r\n");
      out.write("                    <table id=\"tablaLista\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th>Código</th>\r\n");
      out.write("                            <th>Nombre</th>\r\n");
      out.write("                            <th>Fase</th>\r\n");
      out.write("                            <th>Especie</th>\r\n");
      out.write("                            <th>Sexo</th>\r\n");
      out.write("                        \r\n");
      out.write("                       \r\n");
      out.write("                    \r\n");
      out.write("                    ");

                    Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reptiles","root", "");
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM geckos");
		
		while (listado.next()) {
			out.println("<tr><td>"+listado.getString("codgecko")+"</td><td>"+listado.getString("nombre")+"</td><td>"+listado.getString("fase")+"</td><td>"
                          +listado.getString("especie")+"</td><td>"+listado.getString("sexo")+"</td></tr>"+"");
                                    }
                                     
		
		conexion.close();
                
      out.write("\r\n");
      out.write("                 </table>\r\n");
      out.write("        \t</section>\r\n");
      out.write("        \t<footer>\r\n");
      out.write("        \tPié de página\r\n");
      out.write("        </footer>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
