package es.unizar.sisinf.grpB02.RRank.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import es.unizar.sisinf.grpB02.RRank.model.LibroDAO;
import es.unizar.sisinf.grpB02.RRank.model.LibroVO;

/**
 * Servlet implementation class ItemLibroServlet
 */
public class ItemLibroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemLibroServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombreLibro = request.getParameter("nombreLibro");
		boolean exitoso = false;
		 try {
	            // Crea una instancia de LibroDAO y obtén el libro por su nombre
	            LibroDAO libroDAO = new LibroDAO();
	            LibroVO libro = libroDAO.mostrarLibro(nombreLibro);

	            // Verifica si se encontró el libro
	            if (libro != null) {
	                // Establece los atributos del libro en el request
	                request.setAttribute("ISBN", libro.getISBN());
	                request.setAttribute("titulo", libro.getTitulo());
	                request.setAttribute("descripcion", libro.getDesc());
	                request.setAttribute("nombreImagen", libro.getNombreImagen());
	                request.setAttribute("editorial", libro.getEditorial());
	                request.setAttribute("autor", libro.getAutor());

	                // Redirecciona a item_libro.jsp
	                RequestDispatcher dispatcher = request.getRequestDispatcher("item_libro.jsp");
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
