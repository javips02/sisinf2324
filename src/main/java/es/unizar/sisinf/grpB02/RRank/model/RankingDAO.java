package es.unizar.sisinf.grpB02.RRank.model;

//Importamos lo necesario de sql
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//Importamos los ficheros de conexion
import es.unizar.sisinf.grpB02.RRank.db.ConnectionManager;


public class RankingDAO {

    public boolean existeRanking(RankingVO ranking) throws SQLException {
        boolean res = false;
        Connection conn = null;

        try {
     	    // Establecemos la conexión
	        conn = ConnectionManager.getConnection();

		    // Verificar si existe una Ranking dado un nombre de usuario
    	    String queryliga = "SELECT * FROM Ranking WHERE liga = ?";
		    PreparedStatement ligaStmt = conn.prepareStatement(queryliga);
       	 	ligaStmt.setString(1, ranking.getLiga());
        	ResultSet ligaResultSet = ligaStmt.executeQuery();

    		if (ligaResultSet.next()) {
    		// Si existe un registro con uno de los identificadores, es válida.
            	res = true;
            }

            // Liberar recursos
        	ligaStmt.close();
       	    ligaResultSet.close();
		} catch (SQLException sqlE) {
		    sqlE.printStackTrace();
		} catch (Exception e) {
		    e.printStackTrace(System.err);
		} finally {
		    ConnectionManager.releaseConnection(conn);
		}
	    return res;
    }

    public boolean crearRanking(RankingVO ranking) throws SQLException {
        boolean res = false;
        Connection conn = null;

        try {
            // Verificar si ya existe un ranking con el mismo nombre de liga
            if (!existeRanking(ranking)) {
                // Establecemos la conexión
                conn = ConnectionManager.getConnection();

                // Ejecutamos la sentencia de inserción SQL
                String insertar = "INSERT INTO Ranking (liga) VALUES (?)";
                PreparedStatement anyadirEst = conn.prepareStatement(insertar);

                // Añadimos el nombre de la liga al PreparedStatement
                anyadirEst.setString(1, ranking.getLiga());

                // Ejecutamos la inserción
                anyadirEst.executeUpdate();
                res = true;

                // Cerramos el PreparedStatement
                anyadirEst.close();
            }
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace(System.err);
        } finally {
            ConnectionManager.releaseConnection(conn);
        }

        return res;
    }
}
