package es.unizar.sisinf.grpB02.RRank.model;

//Imports

/**
* Interfaz de Persona
*/

public class PreguntasVO {
	// Datos (en privado)
	private String ISBN;
	private String p1;
	private String p2;
	private String p3;
	private String r1;
	private String r2;
	private String r3;

	/**
	 * Constructor
	 * @param ISBN;
	 * @param p1;
	 * @param p2;
	 * @param p3;
	 * @param r1;
	 * @param r2;
	 * @param r3;
	 *     
	 */
	public PreguntasVO (String ISBN, String p1, String p2, String p3, String r1, String r2, String r3) {
		this.ISBN = ISBN;
		this.p1 = p1;
		this.p2 = p2;
		this.p3 = p3;
		this.r1 = r1;
		this.r2 = r2;
		this.r3 = r3;
		
	}
	public PreguntasVO () {
		this.ISBN = null;
		this.p1 = null;
		this.p2 = null;
		this.p3 = null;
		this.r1 = null;
		this.r2 = null;
		this.r3 = null;
	}


  // Métodos 'get' y 'set' para cada atributo
  public String getISBN() {
      return ISBN;
  }

  public void setISBN(String ISBN) {
      this.ISBN = ISBN;
  }

  public String getp1() {
      return p1;
  }

  public void setp1(String p1) {
      this.p1 = p1;
  }

  public String getp2() {
      return p2;
  }

  public void setp2(String p2) {
      this.p2 = p2;
  }
  
  public String getp3() {
      return p3;
  }

  public void setp3(String p3) {
      this.p3 = p3;
  }
  
  public String getr3() {
      return r3;
  }

  public void setr3(String r3) {
      this.r3 = r3;
  }
  
  public String getr1() {
      return r1;
  }

  public void setr1(String r1) {
      this.r1 = r1;
  }
  
  public String getr2() {
      return r2;
  }

  public void setr2(String r2) {
      this.r2 = r2;
  }
}
