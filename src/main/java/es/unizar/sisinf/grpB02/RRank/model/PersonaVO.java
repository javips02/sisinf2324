package es.unizar.sisinf.grpB02.RRank.model;

//Imports

/**
 * Interfaz de Persona
 */

public class PersonaVO {
	// Datos (en privado)
	private String nombreUsuario;
	private String DNI;
	private String nombreCompleto;
	private String contraseña;
	private String correoE;
	private int puntosLectura;
	private int seguidores;

	/**
	 * Constructor
	 * @param nombreUsuario;
	 * @param DNI;
	 * @param nombreCompleto;
	 * @param contraseña;
	 * @paramg correoE;
	 */
	public PersonaVO (String nombreUsuario, String DNI, String nombreCompleto, String contraseña, String correoE) {
		this.nombreUsuario = nombreUsuario;
		this.DNI = DNI;
		this.nombreCompleto = nombreCompleto;
		this.contraseña = contraseña;
		this.correoE =correoE;
		this.puntosLectura = 0;
		this.seguidores = 0;
	}
	public PersonaVO () {
		this.nombreUsuario = null;
		this.DNI = null;
		this.nombreCompleto = null;
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

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
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
