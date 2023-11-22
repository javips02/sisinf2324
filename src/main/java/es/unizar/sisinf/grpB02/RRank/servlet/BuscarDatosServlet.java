package es.unizar.sisinf.grpB02.RRank.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BuscarDatosServlet")
public class BuscarDatosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String term = request.getParameter("busqueda");

        // Realiza la búsqueda en la base de datos usando la clase BuscarDatos
        ResultSet resultados = BuscarDatos.buscarEnBD(term); // Suponiendo que ya has implementado este método en la clase BuscarDatos

        // Procesa los resultados y envíalos de vuelta a la página JSP, por ejemplo, como HTML
        try {
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h2>Resultados de la búsqueda:</h2>");
            out.println("<ul>");

            // Itera sobre los resultados y los muestra en la respuesta
            while (resultados.next()) {
                // Suponiendo que estás obteniendo resultados de una columna llamada 'nombre'
                out.println("<li>" + resultados.getString("nombre") + "</li>");
            }

            out.println("</ul>");
            out.println("</body></html>");
        } catch (SQLException e) {
        	 // Redirige a una página de error
            response.sendRedirect("/errorSQL.jsp");
        } catch (IOException e) {
        	// Redirige a otra página de error
            response.sendRedirect("/errorIO.jsp");
        }
    }
}

