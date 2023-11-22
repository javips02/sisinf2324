package es.unizar.sisinf.grpB02.RRank.model;

public class EscribeVO {
    // Datos (en privado)
    private String nombreUsuario;
    private String ISBN;

    /**
     * Constructor
     * @param nombreUsuario El nombre de usuario de la persona.
     * @param ISBN El ISBN del libro que la persona escribe.
     */
    public EscribeVO(String nombreUsuario, String ISBN) {
        this.nombreUsuario = nombreUsuario;
        this.ISBN = ISBN;
    }

    // Métodos 'get' y 'set' para el atributo 'nombreUsuario'
    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    // Métodos 'get' y 'set' para el atributo 'ISBN'
    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
}
