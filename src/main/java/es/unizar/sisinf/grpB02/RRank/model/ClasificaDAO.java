package es.unizar.sisinf.grpB02.RRank.model;

//Importamos lo necesario de sql
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//Importamos los ficheros de conexion
import es.unizar.sisinf.grpB02.RRank.db.ConnectionManager;

public class ClasificaDAO {
    public boolean existeClasificacion(ClasificaVO clas) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
     	    // Establecemos la conexión
	        conn = ConnectionManager.getConnection();

		    // Verificar si existe una Clasifica dado un nombre de usuario
    	    String querynombreUsuario = "SELECT * FROM Clasifica WHERE liga = ? AND nombreUsuario = ?";
		    PreparedStatement nombreUsuarioStmt = conn.prepareStatement(querynombreUsuario);
       	 	nombreUsuarioStmt.setString(1, clas.getLiga());
            nombreUsuarioStmt.setString(2, clas.getNombreUsuario());

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

    public boolean crearClasificacion(ClasificaVO clas) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
	        if(!existeClasificacion(clas)) {
	      	    res = true;

	     	    // Establecemos la conexión
		        conn = ConnectionManager.getConnection();

    		    // Ejecutamos la sentencia de insertar SQL
    		    String insertar = "INSERT INTO Clasifica (liga, nombreUsuario) VALUES (?, ?)";
    		    PreparedStatement anyadirEst = conn.prepareStatement(insertar);

    		    // Añadimos todos los campos de la tabla Usuario
    		    anyadirEst.setString(1, clas.getLiga());
                anyadirEst.setString(2, clas.getNombreUsuario());


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
