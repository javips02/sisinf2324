package es.unizar.sisinf.grpB02.RRank.model;

public class TrabajaVO {
    // Datos (en privado)
    private String nombreUsuario;
    private String nombre;

    /**
     * Constructor
     * @param nombreUsuario El nombre de usuario de la persona.
     * @param nombre El nombre de la editorial.
     */
    public TrabajaVO(String nombreUsuario, String nombre) {
        this.nombreUsuario = nombreUsuario;
        this.nombre = nombre;
    }

    // Métodos 'get' y 'set' para el atributo 'nombreUsuario'
    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    // Métodos 'get' y 'set' para el atributo 'nombre'
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
