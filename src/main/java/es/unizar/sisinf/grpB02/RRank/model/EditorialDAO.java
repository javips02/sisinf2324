package es.unizar.sisinf.grpB02.RRank.model;

//Importamos lo necesario de sql
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//Importamos los ficheros de conexion
import es.unizar.sisinf.grpB02.RRank.db.ConnectionManager;

public class EditorialDAO {

    public boolean existeEditorial(EditorialVO ed) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
     	    // Establecemos la conexión
	        conn = ConnectionManager.getConnection();

		    // Verificar si existe una persona dado un nombre de usuario
    	    String queryNombre = "SELECT * FROM Editorial WHERE nombre = ?";
		    PreparedStatement nombreStmt = conn.prepareStatement(queryNombre);
       	 	nombreStmt.setString(1, ed.getNombre());
        	ResultSet nombreResultSet = nombreStmt.executeQuery();

    		if (nombreResultSet.next()) {
    		// Si existe un registro con uno de los identificadores, es válida.
            	res = true;
            }

            // Liberar recursos
        	nombreStmt.close();
       	    nombreResultSet.close();
		} catch (SQLException sqlE) {
		    sqlE.printStackTrace();
		} catch (Exception e) {
		    e.printStackTrace(System.err);
		} finally {
		    ConnectionManager.releaseConnection(conn);
		}
	    return res;
    }

    public boolean crearEditorial(EditorialVO ed) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
	        if(!existeEditorial(ed)) {
	      	    res = true;

	     	    // Establecemos la conexión
		        conn = ConnectionManager.getConnection();

    		    // Ejecutamos la sentencia de insertar SQL
    		    String insertar = "INSERT INTO Editorial (nombre) VALUES (?)";
    		    PreparedStatement anyadirEst = conn.prepareStatement(insertar);

    		    // Añadimos todos los campos de la tabla Usuario
    		    anyadirEst.setString(1, ed.getNombre());

    		    // Lo actualizamos
    		    anyadirEst.executeUpdate();
    		    // Cerramos conex
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
