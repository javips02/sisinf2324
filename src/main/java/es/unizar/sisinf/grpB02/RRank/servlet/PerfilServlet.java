package es.unizar.sisinf.grpB02.RRank.servlet;

import java.io.IOException;

import es.unizar.sisinf.grpB02.RRank.model.PersonaDAO;
import es.unizar.sisinf.grpB02.RRank.model.PersonaVO;
import es.unizar.sisinf.grpB02.RRank.model.UsuarioFacade;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/PerfilServlet")
public class PerfilServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Obtén la sesión
        HttpSession session = request.getSession(false);
		
        boolean exitoso = false;
		
        if(session != null && session.getAttribute("usuario") != null) {
        	try {
        		
        		// Recupera el nombre de usuario
                String user = (String) session.getAttribute("usuario");
        		
	            // Crea una instancia de LibroDAO y obtén el libro por su nombre
	            PersonaDAO PersonaDAO = new PersonaDAO();
	            PersonaVO pers = PersonaDAO.mostrarPersona(user);
	            // Verifica si se encontró el libro
	            if (pers != null) {
	                // Establece los atributos del libro en el request
	                request.setAttribute("nu", pers.getNombreUsuario());
	                request.setAttribute("c", pers.getContraseña());
	                request.setAttribute("ce", pers.getCorreoE());
	                request.setAttribute("pl", pers.getPuntosLectura());
	                request.setAttribute("s", pers.getSeguidores());
 
	                // Redirecciona a item_libro.jsp
	                RequestDispatcher dispatcher = request.getRequestDispatcher("Pantallas/perfil.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                // Manejo si el libro no se encuentra
	                response.getWriter().println("Persona no encontrada");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            // Manejo de excepciones (registra o lanza la excepción según tu necesidad)
	        }
        }
        else {
        	// Manejo si la sesión no existe o no contiene la información del usuario
            response.getWriter().println("Usuario no autenticado");
        }
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
    
}
