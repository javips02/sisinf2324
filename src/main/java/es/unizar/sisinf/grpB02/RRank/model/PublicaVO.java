package es.unizar.sisinf.grpB02.RRank.model;

public class PublicaVO {
    // Datos (en privado)
    private String ISBN;
    private String nombre;

    /**
     * Constructor
     * @param ISBN El ISBN del libro publicado.
     * @param nombre El nombre de la editorial que publica el libro.
     */
    public PublicaVO(String ISBN, String nombre) {
        this.ISBN = ISBN;
        this.nombre = nombre;
    }

    // Métodos 'get' y 'set' para el atributo 'ISBN'
    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    // Métodos 'get' y 'set' para el atributo 'nombre'
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
