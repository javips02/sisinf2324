package es.unizar.sisinf.grpB02.RRank.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import es.unizar.sisinf.grpB02.RRank.model.BusquedaFacade;
import es.unizar.sisinf.grpB02.RRank.model.PreguntasDAO;
import es.unizar.sisinf.grpB02.RRank.model.PreguntasVO;

/**
 * Servlet implementation class busquedaServlet
 */
@WebServlet("/PreguntasServlet")
public class PreguntasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Obtén la sesión
        HttpSession session = request.getSession(false);
        System.out.println("**************");
        boolean exitoso = false;
		
        if(session != null && session.getAttribute("isbn") != null) {
        	try {
        		
        		// Recupera el nombre de usuario
                String ISBN = (String) session.getAttribute("isbn");
                System.out.println("**************" + ISBN);
        		
	            // Crea una instancia de LibroDAO y obtén el libro por su nombre
                PreguntasDAO PreguntasDAO = new PreguntasDAO();
                PreguntasVO libro = PreguntasDAO.mostrarPreguntas(ISBN);
	            // Verifica si se encontró el libro
	            if (libro != null) {
	                // Establece los atributos del libro en el request
	                request.setAttribute("isbn", libro.getISBN());
	                request.setAttribute("p1", libro.getp1());
	                request.setAttribute("p2", libro.getp2());
	                request.setAttribute("p3", libro.getp3());
	                request.setAttribute("r1", libro.getr1());
	                request.setAttribute("r2", libro.getr2());
	                request.setAttribute("r3", libro.getr3());
	                
	                
	                // Redirecciona a item_libro.jsp
	                RequestDispatcher dispatcher = request.getRequestDispatcher("Pantallas/preguntasReaderRank.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                // Manejo si el libro no se encuentra
	                response.getWriter().println("Libro no encontrado");
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