package es.unizar.sisinf.grpB02.RRank.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
// Importamos lo necesario de sql
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import es.unizar.sisinf.grpB02.RRank.db.PoolConnectionManager;

// Clase DAO para la gestión de personas
public class PersonaDAO {

    // Método para validar la identidad de un pers, utilizando el correo
    // (identificador único de cada pers) y su correspondiente contraseña
    public boolean validarPersona(String login, String password) throws SQLException {
        boolean res = false;

        try {
           	// Establecemos la conexión
    	    Connection conn = PoolConnectionManager.getConnection();
    	    if (conn == null) {
    	        return false;
    	    }
        	String queryNombreUsuario = "SELECT * FROM persona WHERE nombreusuario = ? AND contraseña = ?";
       	 	PreparedStatement nombreUsuarioStmt = conn.prepareStatement(queryNombreUsuario);
//    	    String queryNombreUsuario = "SELECT * FROM Persona WHERE (nombreusuario=? OR correoe=?) AND contraseña=?";


       	 	nombreUsuarioStmt.setString(1, login);
    	 	nombreUsuarioStmt.setString(2, password);
//    	 	nombreUsuarioStmt.setString(3, pers.getContraseña());
        	ResultSet nombreUsuarioResultSet = nombreUsuarioStmt.executeQuery();

    		if (nombreUsuarioResultSet.next()) {
    		// Si existe un registro con uno de los identificadores, es válida.
               	res = true;
            }

       	// Imprimir la query
       	 System.out.println("Query: " + nombreUsuarioStmt.toString());

       	// Imprimir los resultados
       	 while (nombreUsuarioResultSet.next()) {
       	     System.out.println("Nombre de Usuario: " + nombreUsuarioResultSet.getString("nombreusuario"));
       	     // Imprime otros campos según sea necesario
       	     res = true;
       	 }

            // Liberar recursos
        	nombreUsuarioStmt.close();
       	    nombreUsuarioResultSet.close();
       	 PoolConnectionManager.releaseConnection(conn);
    	} catch (SQLException sqlE) {
    		sqlE.printStackTrace();
    		return false;
    	} catch (Exception e) {
    		e.printStackTrace(System.err);
    		return false;
    	}
    	return res;
    }

    public boolean existePersona(PersonaVO pers) throws SQLException {
        boolean res = false;
		Connection conn = null;

        try {
     	    // Establecemos la conexión
	        conn = PoolConnectionManager.getConnection();

		    // Verificar si existe una persona dado un nombre de usuario
    	    String queryNombreUsuario = "SELECT * FROM Persona WHERE nombreUsuario = ?";
		    PreparedStatement nombreUsuarioStmt = conn.prepareStatement(queryNombreUsuario);
       	 	nombreUsuarioStmt.setString(1, pers.getNombreUsuario());
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
		    PoolConnectionManager.releaseConnection(conn);
		}
	    return res;
    }

    public boolean crearPersona(PersonaVO pers) throws SQLException {
		Connection conn = null;

        try {
	       
        	System.out.println("---- 1 ----");
	     	    // Establecemos la conexión
		        conn = PoolConnectionManager.getConnection();

    		    // Ejecutamos la sentencia de insertar SQL
    		    String insertar = "INSERT INTO Persona (nombreUsuario, contraseña, correoE, puntosLectura, seguidores) VALUES (?, ?, ?, ?, ?)";
    		    PreparedStatement anyadirEst = conn.prepareStatement(insertar);

    		    // Añadimos todos los campos de la tabla Usuario
    		    anyadirEst.setString(1, pers.getNombreUsuario());
    		    anyadirEst.setString(2, pers.getContraseña());
    		    anyadirEst.setString(3, pers.getCorreoE());
    		    anyadirEst.setInt(4, pers.getPuntosLectura());
    		    anyadirEst.setInt(5, pers.getSeguidores());

    		    anyadirEst.executeUpdate();  // Lo actualizamos
    		    anyadirEst.close(); // Cerramos conex

	        
		} catch (SQLException sqlE) {
			System.out.printf("Error en la base\n");
		    sqlE.printStackTrace();
		    return false; // Establecer res a false en caso de SQLException
		} catch (Exception e) {
		    System.out.printf("Error en el sistema\n");
		    e.printStackTrace(System.err);
		    return false; // Establecer res a false en caso de Exception
		} finally {
		    PoolConnectionManager.releaseConnection(conn);
		}

	    return true; //Que compruebe que se ha anadidio abriendo una conexion a la BD. Si la encuentra, true, sino false (se podria hacer toa la funcion con una sola conexion?
    }

    public PersonaVO getPersona(String nombre) throws SQLException {
    	PersonaVO pers = new PersonaVO(nombre,null,null);
    	if (existePersona(pers)) {
    		Connection conn = null;
            List<PersonaVO> personas = new ArrayList<>();

            try {
                // Establecemos la conexión
                conn = PoolConnectionManager.getConnection();

                // Verificar si existe una persona dado un nombre de usuario
                String queryNombreUsuario = "SELECT * FROM Persona WHERE nombreUsuario = ?";
                PreparedStatement nombreUsuarioStmt = conn.prepareStatement(queryNombreUsuario);
                nombreUsuarioStmt.setString(1, pers.getNombreUsuario());
                ResultSet nombreUsuarioResultSet = nombreUsuarioStmt.executeQuery();

                while (nombreUsuarioResultSet.next()) {
                    // Si hay resultados, crear un objeto PersonaVO y agregarlo a la lista
                    PersonaVO persona = new PersonaVO();
                    persona.setNombreUsuario(nombreUsuarioResultSet.getString("nombreUsuario"));
                    persona.setContraseña(nombreUsuarioResultSet.getString("contraseña"));
                    persona.setCorreoE(nombreUsuarioResultSet.getString("correoE"));
                    persona.setPuntosLectura(nombreUsuarioResultSet.getInt("puntosLectura"));
                    persona.setSeguidores(nombreUsuarioResultSet.getInt("seguidores"));

                    personas.add(persona);
                }

            } catch (SQLException sqlE) {
                sqlE.printStackTrace();
                return null;
            } catch (Exception e) {
                e.printStackTrace(System.err);
                return null;
            } finally {
                // Liberar recursos
                PoolConnectionManager.releaseConnection(conn);
            }
    	}
    	 return pers; //Error, no encontrada
    }
    
    public Set<PersonaVO> buscarEscritores(String nom){
    	Set<PersonaVO> personasSet = new HashSet<>();
    	Connection conn = null;
    	 try {
            	// Establecemos la conexión
     	    conn = PoolConnectionManager.getConnection();
     	    if (conn == null) {
     	        return null;
     	    }
         	String queryEscritores = "SELECT *\n"
         			+ "FROM persona\n"
         			+ "WHERE nombreUsuario = ? IN (SELECT nombreUsuario FROM escribe);\n";
        	PreparedStatement escritoresStmt = conn.prepareStatement(queryEscritores);
        	escritoresStmt.setString(1, nom);
         	ResultSet nombreUsuarioResultSet = escritoresStmt.executeQuery();

	        while (nombreUsuarioResultSet.next()) {
	            String nombreUsuario = nombreUsuarioResultSet.getString("nombreUsuario");
	            String contraseña = nombreUsuarioResultSet.getString("contraseña");
	            String correoE = nombreUsuarioResultSet.getString("correoE");
	            int puntosLectura = nombreUsuarioResultSet.getInt("puntosLectura");
	            int seguidores = nombreUsuarioResultSet.getInt("seguidores");
	
	            // Crear un objeto PersonaVO
	            PersonaVO persona = new PersonaVO(nombreUsuario, contraseña, correoE);
	            persona.setPuntosLectura(puntosLectura);
	            persona.setSeguidores(seguidores);
	
	            // Agregar a la lista, Set se encargará de no permitir duplicados
	            personasSet.add(persona);
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
    	 return personasSet;
   }
}







