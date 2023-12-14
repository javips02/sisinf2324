package es.unizar.sisinf.grpB02.RRank.servlet;

import java.io.IOException;

import es.unizar.sisinf.grpB02.RRank.model.UsuarioFacade;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuarioLogin");
        String contrasena = request.getParameter("contrasenaLogin");

        boolean exitoso = false;
        try {
            UsuarioFacade pers = new UsuarioFacade();
            exitoso = pers.iniciarSesion(usuario, contrasena);
        } catch (Exception e) {
            // Set the error message as a request attribute
            request.setAttribute("mensajeErrorLogin", "El usuario " + usuario + " no existe o la contraseña es incorrecta");
            // Forward to the error page instead of using sendRedirect
            request.getRequestDispatcher("Pantallas/error_iniciar.jsp").forward(request, response);
            return; // Return to avoid further processing
        } 
 
        if (exitoso) {
        	// If the login is successful, store the usuario in the session
            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", usuario);
            
            // If the login is successful, redirect to menu_principal.jsp
            response.sendRedirect("Pantallas/menu_principal.jsp");
            return;
        } else {
            // If the login fails, redirect to the error page with the error message
            request.setAttribute("mensajeErrorLogin", "El usuario " + usuario + " no existe o la contraseña es incorrecta");
            request.getRequestDispatcher("Pantallas/error_iniciar.jsp").forward(request, response);
        }
    }
}
