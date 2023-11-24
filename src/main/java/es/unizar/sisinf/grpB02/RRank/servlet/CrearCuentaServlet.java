package es.unizar.sisinf.grpB02.RRank.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import es.unizar.sisinf.grpB02.RRank.model.PersonaDAO;
import es.unizar.sisinf.grpB02.RRank.model.PersonaVO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CrearCuentaServlet")
public class CrearCuentaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener parámetros del formulario
        String usuario = request.getParameter("usuario");
        String hola="Soy javi";
        String correoElectronico = request.getParameter("correoElectronico");
        String contrasena = request.getParameter("contrasena");
        String confirContrasena = request.getParameter("confirContrasena");

        // Validar que los campos no estén vacíos
        if (usuario != null && correoElectronico != null && !usuario.isEmpty() && !correoElectronico.isEmpty() && contrasena != null && confirContrasena != null && !contrasena.isEmpty() && !confirContrasena.isEmpty()) {
            // Crear un nuevo usuario
        	PersonaVO persona = new PersonaVO(usuario, contrasena, correoElectronico);
        	persona.setNombreUsuario(usuario);
        	persona.setCorreoE(correoElectronico);
        	persona.setContraseña(contrasena);

            // Aquí podrías almacenar el nuevo usuario en una base de datos o hacer otras operaciones necesarias

            // Llamar a la función del DAO para validar la persona
            PersonaDAO personaDAO = new PersonaDAO();
            boolean personaValida = false;
			try {
				personaValida = personaDAO.crearPersona(persona);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	        	// Redirige a una página de error
	            response.sendRedirect("/errorSQL.jsp");
			}

            // Realizar acciones en base al resultado
            if (personaValida) {
                // La persona es válida, puedes redirigir a una página de éxito, por ejemplo.
                response.sendRedirect("Pantallas/exito_registro.jsp");
            } else {
                // La persona no es válida, puedes redirigir a una página de error.
                response.sendRedirect("Pantallas/Error.html");
            }
            //LO QUE HAY DEBAJO DE RESPONSE.SENDREDIRECT NO SE EJECUTA!!!
            // Respuesta al cliente
//            response.setContentType("text/html");
//            PrintWriter out = response.getWriter();
//            out.println("<html><body>");
//            out.println("<h2>Cuenta creada con éxito</h2>");
//            //out.println("<p>Usuario: " + nuevoUsuario.getUsuario() + "</p>");
//            out.println("</body></html>");
        }
        else {
            // Respuesta en caso de campos vacíos
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h2>Error: Nombre de usuario y contrasena son obligatorios</h2>");
            out.println("</body></html>");
        }
    }
}
