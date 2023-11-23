package es.unizar.sisinf.grpB02.RRank.model;

//Imports

/**
* Interfaz de Persona
*/

public class PersonaVO {
	// Datos (en privado)
	private String nombreUsuario;
	private String contraseña;
	private String correoE;
	private int puntosLectura;
	private int seguidores;

	/**
	 * Constructor
	 * @param nombreUsuario;
	 * @param contraseña;
	 * @paramg correoE;
	 */
	public PersonaVO (String nombreUsuario, String contraseña, String correoE) {
		this.nombreUsuario = nombreUsuario;
		this.contraseña = contraseña;
		this.correoE =correoE;
		this.puntosLectura = 0;
		this.seguidores = 0;
	}
	public PersonaVO () {
		this.nombreUsuario = null;
		this.contraseña = null;
		this.correoE =null;
		this.puntosLectura = 0;
		this.seguidores = 0;
	}


	   // Métodos 'get' y 'set' para cada atributo
  public String getNombreUsuario() {
      return nombreUsuario;
  }

  public void setNombreUsuario(String nombreUsuario) {
      this.nombreUsuario = nombreUsuario;
  }

  public String getContraseña() {
      return contraseña;
  }

  public void setContraseña(String contraseña) {
      this.contraseña = contraseña;
  }

  public String getCorreoE() {
      return correoE;
  }

  public void setCorreoE(String correoE) {
      this.correoE = correoE;
  }

  public int getPuntosLectura() {
      return puntosLectura;
  }

  public void setPuntosLectura(int puntosLectura) {
      this.puntosLectura = puntosLectura;
  }

  public int getSeguidores() {
      return seguidores;
  }

  public void setSeguidores(int seguidores) {
      this.seguidores = seguidores;
  }

}
