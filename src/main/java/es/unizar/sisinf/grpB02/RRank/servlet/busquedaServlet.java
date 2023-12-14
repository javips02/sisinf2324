package es.unizar.sisinf.grpB02.RRank.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import es.unizar.sisinf.grpB02.RRank.model.BusquedaFacade;

/**
 * Servlet implementation class busquedaServlet
 */
@WebServlet("/busquedaServlet")
public class busquedaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public busquedaServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String busqueda = request.getParameter("busqueda");
		  List<Object> listaCompleta = null;
		  BusquedaFacade bus = new BusquedaFacade();
		  listaCompleta = bus.listarTodoSinFiltros(busqueda);
		  
		  // Guardar la lista como un atributo de solicitud
        request.setAttribute("listaCompleta", listaCompleta);

        // Redirigir a la página JSP para mostrar los resultados
        RequestDispatcher dispatcher = request.getRequestDispatcher("Pantallas/busqueda.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
