//package es.unizar.sisinf.grpB02.RRank.servlet;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//import es.unizar.sisinf.grpB02.RRank.model.UsuarioFacade;
//
///**
// * Servlet implementation class RecogerItemEscritorServlet
// */
//@WebServlet("/RecogerItemEscritorServlet")
//public class RecogerItemEscritorServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public RecogerItemEscritorServlet() {
//        super();
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		
//		  // Lógica para obtener datos del escritor desde la base de datos
//        String nombreAutor = request.getParameter("");
//        String DescAutor = null, ObrasAutor = null;
//        
//        //TODO Ir a la base de datos a buscar
//        boolean exitoso = false;
//        try {
//        	//TODO generar escritor y llamar a fucnion que devuelva sus params
//        	//TODO cambair tabla de escritor para que almacene descripcion
//            UsuarioFacade pers = new UsuarioFacade();
//            exitoso = pers.iniciarSesion(usuario, contrasena);
//        } catch (Exception e) {
//            // Forward to the error page instead of using sendRedirect
//        	request.getRequestDispatcher("Pantallas/Error.html").forward(request, response);
//            return; // Return to avoid further processing
//        }
//        if (exitoso) {
//        	 // Almacenar los datos en el objeto request
//            request.setAttribute("nombreAutor", nombreAutor);
//            request.setAttribute("DescAutor", DescAutor);
//            request.setAttribute("ObrasAutor", ObrasAutor);
//
//            // Redirigir al JSP
//            RequestDispatcher dispatcher = request.getRequestDispatcher("tupagina.jsp");
//            dispatcher.forward(request, response);
//        } else {
//        	request.getRequestDispatcher("Pantallas/Error.html").forward(request, response);
//        }
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
