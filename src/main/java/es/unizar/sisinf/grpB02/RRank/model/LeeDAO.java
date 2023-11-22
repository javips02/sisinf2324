package es.unizar.sisinf.grpB02.RRank.model;

//Importamos lo necesario de sql
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//Importamos los ficheros de conexion
import es.unizar.sisinf.grpB02.RRank.db.ConnectionManager;

public class LeeDAO {
    public boolean existeLectura(LeeVO lee) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
     	    // Establecemos la conexión
	        conn = ConnectionManager.getConnection();

		    // Verificar si existe una Lee dado un nombre de usuario
    	    String querynombreUsuario = "SELECT * FROM Lee WHERE nombreUsuario = ? AND ISBN = ?";
		    PreparedStatement nombreUsuarioStmt = conn.prepareStatement(querynombreUsuario);
       	 	nombreUsuarioStmt.setString(1, lee.getNombreUsuario());
            nombreUsuarioStmt.setString(2, lee.getISBN());
        	ResultSet nombreUsuarioResultSet = nombreUsuarioStmt.executeQuery();

    		if (nombreUsuarioResultSet.next()) {
    		// Si existe un registro con uno de los identificadores, es válida.
            	res = true;
            }

            // Liberar recursos
        	nombreUsuarioStmt.close();
       	    nombreUsuarioResultSet.close();
		} catch (SQLException sqlE) {
		    sqlE.printStackTrace();
		} catch (Exception e) {
		    e.printStackTrace(System.err);
		} finally {
		    ConnectionManager.releaseConnection(conn);
		}
	    return res;
    }

    public boolean crearLectura(LeeVO lee) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
	        if(!existeLectura(lee)) {
	      	    res = true;

	     	    // Establecemos la conexión
		        conn = ConnectionManager.getConnection();

    		    // Ejecutamos la sentencia de insertar SQL
    		    String insertar = "INSERT INTO Lee (nombreUsuario, ISBN) VALUES (?, ?)";
    		    PreparedStatement anyadirEst = conn.prepareStatement(insertar);

    		    // Añadimos todos los campos de la tabla Usuario
    		    anyadirEst.setString(1, lee.getNombreUsuario());
    		    anyadirEst.setString(2, lee.getISBN());

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
