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

import es.unizar.sisinf.grpB02.RRank.db.ConnectionManager;
import es.unizar.sisinf.grpB02.RRank.db.PoolConnectionManager;

// Clase DAO para la gestión de personas
public class PreguntasDAO {

    // Método para validar la identidad de un pers, utilizando el correo
    // (identificador único de cada pers) y su correspondiente contraseña
    public int validarPreguntas(String ISBN, String r1, String r2, String r3) throws SQLException {
        boolean res = false;
        int cont = 0;
        PreguntasVO pregunta = null;
    	PreguntasVO preguntaVacia = new PreguntasVO("","","","","","","");

        try {
        	Connection conn = ConnectionManager.getConnection();
            String consulta = "SELECT * FROM preguntas WHERE isbn = ?";
            PreparedStatement preguntaStmt = conn.prepareStatement(consulta);

            preguntaStmt.setString(1, ISBN);
            ResultSet preguntaResultSet = preguntaStmt.executeQuery();

            if (preguntaResultSet.next()) {
                // Crea un objeto LibroVO con los datos obtenidos de la base de datos 
            	pregunta = new PreguntasVO(
            			preguntaResultSet.getString("isbn"),
            			preguntaResultSet.getString("p1"),
            			preguntaResultSet.getString("p2"),
            			preguntaResultSet.getString("p3"),
            			preguntaResultSet.getString("rr1"),
            			preguntaResultSet.getString("rr2"),
            			preguntaResultSet.getString("rr3")
                );
            }

            // Liberar recursos
            
            if(pregunta.getr1() == r1) {
            	cont += 5;
            }
            if(pregunta.getr2() == r2) {
            	cont += 5;
            }
            if(pregunta.getr3() == r3) {
            	cont += 5;
            }
            
            preguntaStmt.close();
            preguntaResultSet.close();
            ConnectionManager.releaseConnection(conn);
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
            return -1;
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return -1;
        } 
        return cont;  
    }

    public PreguntasVO mostrarPreguntas(String isbn) {
    	PreguntasVO pregunta = null;
    	PreguntasVO preguntaVacia = new PreguntasVO("","","","","","","");
        
        try {
            Connection conn = ConnectionManager.getConnection();
            String consulta = "SELECT * FROM preguntas WHERE isbn = ?";
            PreparedStatement preguntaStmt = conn.prepareStatement(consulta);

            preguntaStmt.setString(1, isbn);
            ResultSet preguntaResultSet = preguntaStmt.executeQuery();

            if (preguntaResultSet.next()) {
                // Crea un objeto LibroVO con los datos obtenidos de la base de datos 
            	pregunta = new PreguntasVO(
            			preguntaResultSet.getString("isbn"),
            			preguntaResultSet.getString("p1"),
            			preguntaResultSet.getString("p2"),
            			preguntaResultSet.getString("p3"),
            			preguntaResultSet.getString("r1"),
            			preguntaResultSet.getString("r2"),
            			preguntaResultSet.getString("r3")
                );
            }

            // Liberar recursos
            preguntaStmt.close();
            preguntaResultSet.close();
            ConnectionManager.releaseConnection(conn);
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
            return preguntaVacia;
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return preguntaVacia;
        }
        return pregunta != null ? pregunta : preguntaVacia;
    }
   
    
    
//    
//    public Set<PersonaVO> buscarEscritores(String nom) {
//        Set<PersonaVO> personasSet = new HashSet<>();
//        try (Connection conn = PoolConnectionManager.getConnection()) {
//            if (conn == null) {
//                return null;
//            }
//
//            String queryEscritores = "SELECT nombreusuario FROM escribe WHERE nombreusuario=?;";
//            try (PreparedStatement escritoresStmt = conn.prepareStatement(queryEscritores)) {
//                escritoresStmt.setString(1, nom);
//                try (ResultSet nombreUsuarioResultSet = escritoresStmt.executeQuery()) {
//
//                    String queryUsuarios = "SELECT * FROM persona WHERE nombreusuario = ?;";
//                    while (nombreUsuarioResultSet.next()) {
//                        try (Connection connUsuarios = PoolConnectionManager.getConnection()) {
//                            if (connUsuarios != null) {
//                                try (PreparedStatement userStmt = connUsuarios.prepareStatement(queryUsuarios)) {
//                                    userStmt.setString(1, nombreUsuarioResultSet.getString("nombreusuario"));
//                                    try (ResultSet userSet = userStmt.executeQuery()) {
//                                        while (userSet.next()) {
//                                        	 String nombreUsuario = userSet.getString("nombreusuario");
//                         		            String contraseña = userSet.getString("contraseña");
//                         		            String correoE = userSet.getString("correoE");
//                         		            
//                         		            System.out.println("Nombre de usuario: " + nombreUsuario);
//                         		            System.out.println("Contraseña: " + contraseña);
//                         		            System.out.println("Correo electrónico: " + correoE);
//                         		
//                         		            // Crear un objeto PersonaVO
//                         		            PersonaVO persona = new PersonaVO(nombreUsuario, contraseña, correoE);
//                         		
//                         		            // Agregar a la lista, Set se encargará de no permitir duplicados
//                         		            personasSet.add(persona);
//                         		            System.out.println("Persona agregada: " + persona);
//                                        }
//                                    }
//                                }
//                                connUsuarios.close();
//                            }
//                        }
//                    }
//                }
//                personasSet.add(new PersonaVO("Checkpoint PersonaDAO", "hellegao", "hellegao"));
//            }
//            if (conn != null) {
//                conn.close();
//            }
//        } catch (SQLException e) {
//            // Manejar la excepción de SQL según tus necesidades
//            e.printStackTrace();
//        }
//        return personasSet;
//    }

}







