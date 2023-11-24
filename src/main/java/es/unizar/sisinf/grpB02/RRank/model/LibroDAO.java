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
    
    public LibroVO mostrarLibro(String titulo) {
        LibroVO libro = null;
        LibroVO libroVacio = new LibroVO("","","","","","");
        
        try {
            System.out.println("---- 1 ----");            // Establecemos la conexión
            Connection conn = ConnectionManager.getConnection();
            String consulta = "SELECT * FROM libro WHERE titulo = ?";
            PreparedStatement nombreUsuarioStmt = conn.prepareStatement(consulta);

            nombreUsuarioStmt.setString(1, titulo);
            ResultSet nombreUsuarioResultSet = nombreUsuarioStmt.executeQuery();

            if (nombreUsuarioResultSet.next()) {
                // Crea un objeto LibroVO con los datos obtenidos de la base de datos
                libro = new LibroVO(
                    nombreUsuarioResultSet.getString("ISBN"),
                    nombreUsuarioResultSet.getString("titulo"),
                    nombreUsuarioResultSet.getString("descripcion"),
                    nombreUsuarioResultSet.getString("nombreImagen"),
                    nombreUsuarioResultSet.getString("editorial"),
                    nombreUsuarioResultSet.getString("autor")
                );
            }

            // Liberar recursos
            nombreUsuarioStmt.close();
            nombreUsuarioResultSet.close();
            ConnectionManager.releaseConnection(conn);
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
            return libroVacio;
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return libroVacio;
        }
        return libro != null ? libro : libroVacio;
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
    		    String insertar = "INSERT INTO Libro (ISBN, titulo, nombreImagen, numLectores) VALUES (?, ?, ?, ?, ?, ?)";
    		    PreparedStatement anyadirEst = conn.prepareStatement(insertar);
    		  //ISBN, titulo, desc, nombreImagen, editorial, autor
    		    // Añadimos todos los campos de la tabla Usuario
    		    anyadirEst.setString(1, lib.getISBN());
    		    anyadirEst.setString(2, lib.getTitulo());
    		    anyadirEst.setString(3, lib.getDesc());
    		    anyadirEst.setString(4, lib.getNombreImagen());
    		    anyadirEst.setString(5, lib.getEditorial());
    		    anyadirEst.setString(6, lib.getAutor());

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
    	    String queryTituloLibro = "SELECT * FROM libro WHERE titulo = ? ;\n"; //TODO cambiar por un LIKE si funciona con un =
    	    PreparedStatement busLibroStmt = conn.prepareStatement(queryTituloLibro);
    	    busLibroStmt.setString(1, tit);
    	    ResultSet nombreUsuarioResultSet = busLibroStmt.executeQuery();

    	    // Iterar a través de los resultados y agregar a la lista
    	    while (nombreUsuarioResultSet.next()) {
    	        String ISBN = nombreUsuarioResultSet.getString("isbn");
    	        String titulo = nombreUsuarioResultSet.getString("titulo");
    	        String desc = nombreUsuarioResultSet.getString("descripcion");
    	        String nombreImagen = nombreUsuarioResultSet.getString("nombreimagen");
    	        String editorial = nombreUsuarioResultSet.getString("editorial");
    	        String autor = nombreUsuarioResultSet.getString("autor");
    	        

    	        // Crear un objeto LibroVO y agregarlo a la lista
    	        LibroVO libro = new LibroVO(ISBN, titulo, desc, nombreImagen, editorial, autor);
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
