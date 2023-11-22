package es.unizar.sisinf.grpB02.RRank.model;

public class LibroVO {
    // Datos (en privado)
    private String ISBN;
    private String titulo;
    private String nombreImagen;
    private int numLectores;

    /**
     * Constructor
     * @param ISBN El ISBN del libro.
     * @param titulo El título del libro.
     * @param nombreImagen El nombre de la imagen del libro.
     * @param numLectores El número de lectores del libro.
     */
    public LibroVO(String ISBN, String titulo, String nombreImagen, int numLectores) {
        this.ISBN = ISBN;
        this.titulo = titulo;
        this.nombreImagen = nombreImagen;
        this.numLectores = numLectores;
    }

    // Métodos 'get' y 'set' para el atributo 'ISBN'
    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    // Métodos 'get' y 'set' para el atributo 'titulo'
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    // Métodos 'get' y 'set' para el atributo 'nombreImagen'
    public String getNombreImagen() {
        return nombreImagen;
    }

    public void setNombreImagen(String nombreImagen) {
        this.nombreImagen = nombreImagen;
    }

    // Métodos 'get' y 'set' para el atributo 'numLectores'
    public int getNumLectores() {
        return numLectores;
    }

    public void setNumLectores(int numLectores) {
        this.numLectores = numLectores;
    }
}
