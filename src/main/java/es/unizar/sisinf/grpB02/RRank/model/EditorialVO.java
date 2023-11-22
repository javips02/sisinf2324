package es.unizar.sisinf.grpB02.RRank.model;

public class EditorialVO {
    // Datos (en privado)
    private String nombre;

    /**
     * Constructor
     * @param nombre El nombre de la editorial.
     */
    public EditorialVO(String nombre) {
        this.nombre = nombre;
    }

    // Métodos 'get' y 'set' para el atributo 'nombre'
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
