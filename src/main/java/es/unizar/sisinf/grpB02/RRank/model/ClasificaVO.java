package es.unizar.sisinf.grpB02.RRank.model;

public class ClasificaVO {
    // Datos (en privado)
    private String liga;
    private String nombreUsuario;

    /**
     * Constructor
     * @param liga El nombre de la liga en la que se clasifica.
     * @param nombreUsuario El nombre de usuario de la persona que clasifica.
     */
    public ClasificaVO(String liga, String nombreUsuario) {
        this.liga = liga;
        this.nombreUsuario = nombreUsuario;
    }

    // Métodos 'get' y 'set' para el atributo 'liga'
    public String getLiga() {
        return liga;
    }

    public void setLiga(String liga) {
        this.liga = liga;
    }

    // Métodos 'get' y 'set' para el atributo 'nombreUsuario'
    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }
}
