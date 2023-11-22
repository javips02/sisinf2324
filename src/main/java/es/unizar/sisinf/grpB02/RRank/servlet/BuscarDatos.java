package es.unizar.sisinf.grpB02.RRank.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BuscarDatos {
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_URL = "jdbc:postgresql://btzbxdd9tium0vi5y1bv-postgresql.services.clever-cloud.com:50013/btzbxdd9tium0vi5y1bv";
    private static final String USER = "ujehofnlmsw4huovwiwn";
    private static final String PASS = "13EQb6k7XUdKfXFWeIhAUwi9oVpRZ8";

    public static ResultSet buscarEnBD(String term) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "SELECT * FROM libro WHERE titulo LIKE ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + term + "%");
            rs = stmt.executeQuery();

            return rs;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Manejo de errores o devuelve null en caso de error
            return null;
        } finally {
            // Cierra las conexiones y los recursos (idealmente en el servlet)
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

