package es.unizar.sisinf.grpB02.RRank.model;

//Importamos lo necesario de sql
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//Importamos los ficheros de conexion
import es.unizar.sisinf.grpB02.RRank.db.ConnectionManager;
import es.unizar.sisinf.grpB02.RRank.db.PoolConnectionManager;

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
    
    
    public List<LibroVO> BuscarLibros(String tit){
    	List<LibroVO> resultList = new ArrayList<>();
    	Connection conn = null;
    	try {
    	    conn = PoolConnectionManager.getConnection();
    	    if (conn == null) {
    	        return null;
    	    }

    	    // Realizar la consulta
    	    String queryTituloLibro = "SELECT * FROM libro WHERE titulo = ?"; //TODO cambiar por un LIKE si funciona con un =
    	    PreparedStatement busLibroStmt = conn.prepareStatement(queryTituloLibro);
    	    busLibroStmt.setString(1, tit);
    	    ResultSet nombreUsuarioResultSet = busLibroStmt.executeQuery();

    	    // Iterar a través de los resultados y agregar a la lista
    	    while (nombreUsuarioResultSet.next()) {
    	        String ISBN = nombreUsuarioResultSet.getString("ISBN");
    	        String titulo = nombreUsuarioResultSet.getString("titulo");
    	        String nombreImagen = nombreUsuarioResultSet.getString("nombreImagen");
    	        int numLectores = nombreUsuarioResultSet.getInt("numLectores");

    	        // Crear un objeto LibroVO y agregarlo a la lista
    	        LibroVO libro = new LibroVO(ISBN, titulo, nombreImagen, numLectores);
    	        resultList.add(libro);
    	    }
    	} catch (SQLException e) {
    	    // Manejar la excepción de SQL según tus necesidades
    	    e.printStackTrace();
    	} finally {
    	    // Asegurarse de cerrar la conexión en el bloque 'finally'
    	    try {
    	        if (conn != null) {
    	            conn.close();
    	        }
    	    } catch (SQLException e) {
    	        // Manejar la excepción de cierre de conexión según tus necesidades
    	        e.printStackTrace();
    	    }
    	}
    	return resultList;	
    }
}
