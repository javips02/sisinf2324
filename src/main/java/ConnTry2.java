import es.unizar.sisinf.grpB02.RRank.model.UsuarioFacade;


public class ConnTry2 {
	public static void main(String[] args) {
		 String usuario ="Javi";
	     String contrasena = "1234Password";

	     boolean exitoso = false ;
	     try {
	         UsuarioFacade usuarioFacade = new UsuarioFacade();
	         exitoso = usuarioFacade.iniciarSesion(usuario, contrasena);
	     } catch (Exception e) {
	        System.out.println("Error en conexion");
	     }

	     if (exitoso) {
	    	 System.out.println("Todo correcto en conexion");
	     } else {
	    	 System.out.println("Error en conexion (segundo)");
	     }
	 }

}
