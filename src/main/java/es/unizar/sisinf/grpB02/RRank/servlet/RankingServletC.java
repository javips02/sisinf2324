package es.unizar.sisinf.grpB02.RRank.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import es.unizar.sisinf.grpB02.RRank.model.ClasificaDAO;
import es.unizar.sisinf.grpB02.RRank.model.ClasificaVO;

/**
 * Servlet implementation class ItemLibroServlet
 */
@WebServlet("/RankingServletC")
public class RankingServletC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RankingServletC() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombreRanking = request.getParameter("nombreRanking");
		boolean exitoso = false;
		 try {
	            // Crea una instancia de LibroDAO y obtén el libro por su nombre
	            ClasificaDAO clasificaDAO = new ClasificaDAO();
	            List<ClasificaVO> clasifica = clasificaDAO.mostrarClas(nombreRanking);
 
	            // Verifica si se encontró el libro
	            if (!clasifica.isEmpty()) {
	                // Almacena los 5 primeros elementos en variables distintas
	                ClasificaVO clas1 = clasifica.get(0);
	                ClasificaVO clas2 = (clasifica.size() > 1) ? clasifica.get(1) : null;
	                ClasificaVO clas3 = (clasifica.size() > 2) ? clasifica.get(2) : null;
	                ClasificaVO clas4 = (clasifica.size() > 3) ? clasifica.get(3) : null;
	                ClasificaVO clas5 = (clasifica.size() > 4) ? clasifica.get(4) : null;

	                // Establece las variables en el request
	                request.setAttribute("clas1", clas1);
	                request.setAttribute("clas2", clas2);
	                request.setAttribute("clas3", clas3);
	                request.setAttribute("clas4", clas4);
	                request.setAttribute("clas5", clas5);

	                // Redirecciona a rankingB.jsp
	                RequestDispatcher dispatcher = request.getRequestDispatcher("Pantallas/rankingC.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                // Manejo si no se encontraron clasifica
	                response.getWriter().println("No se encontraron clasifica para el ranking: " + nombreRanking);
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