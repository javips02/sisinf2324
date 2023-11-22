package es.unizar.sisinf.grpB02.RRank.model;

public class RankingVO {
    // Datos (en privado)
    private String liga;

    /**
     * Constructor
     * @param liga El nombre de la liga en el ranking.
     */
    public RankingVO(String liga) {
        this.liga = liga;
    }

    // Métodos 'get' y 'set' para el atributo 'liga'
    public String getLiga() {
        return liga;
    }

    public void setLiga(String liga) {
        this.liga = liga;
    }
}
