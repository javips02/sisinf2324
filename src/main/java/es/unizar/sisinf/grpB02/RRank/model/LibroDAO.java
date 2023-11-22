package es.unizar.sisinf.grpB02.RRank.model;

//Importamos lo necesario de sql
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//Importamos los ficheros de conexion
import es.unizar.sisinf.grpB02.RRank.db.ConnectionManager;

public class LibroDAO {
    public boolean existeLibro(LibroVO lib) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
     	    // Establecemos la conexión
	        conn = ConnectionManager.getConnection();

		    // Verificar si existe una Libro dado un nombre de usuario
    	    String queryISBN = "SELECT * FROM Libro WHERE ISBN = ?";
		    PreparedStatement ISBNStmt = conn.prepareStatement(queryISBN);
       	 	ISBNStmt.setString(1, lib.getISBN());
        	ResultSet ISBNResultSet = ISBNStmt.executeQuery();

    		if (ISBNResultSet.next()) {
    		// Si existe un registro con uno de los identificadores, es válida.
            	res = true;
            }

            // Liberar recursos
        	ISBNStmt.close();
       	    ISBNResultSet.close();
		} catch (SQLException sqlE) {
		    sqlE.printStackTrace();
		} catch (Exception e) {
		    e.printStackTrace(System.err);
		} finally {
		    ConnectionManager.releaseConnection(conn);
		}
	    return res;
    }

    public boolean crearLibro(LibroVO lib) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
	        if(!existeLibro(lib)) {
	      	    res = true;

	     	    // Establecemos la conexión
		        conn = ConnectionManager.getConnection();

    		    // Ejecutamos la sentencia de insertar SQL
    		    String insertar = "INSERT INTO Libro (ISBN, titulo, nombreImagen, numLectores) VALUES (?, ?, ?, 0)";
    		    PreparedStatement anyadirEst = conn.prepareStatement(insertar);

    		    // Añadimos todos los campos de la tabla Usuario
    		    anyadirEst.setString(1, lib.getISBN());
    		    anyadirEst.setString(2, lib.getTitulo());
    		    anyadirEst.setString(3, lib.getNombreImagen());
    		    anyadirEst.setInt(4, lib.getNumLectores());

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
