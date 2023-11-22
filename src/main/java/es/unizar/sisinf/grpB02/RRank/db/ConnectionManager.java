package es.unizar.sisinf.grpB02.RRank.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_URL = "jdbc:postgresql://btzbxdd9tium0vi5y1bv-postgresql.services.clever-cloud.com:50013/btzbxdd9tium0vi5y1bv";
    private static final String USER = "ujehofnlmsw4huovwiwn";
    private static final String PASS = "13EQb6k7XUdKfXFWeIhAUwi9oVpRZ8";

    public final static Connection getConnection() throws SQLException {
        Connection conn = null;

        try {
            Class.forName(JDBC_DRIVER);
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final static void releaseConnection(Connection conn) throws SQLException {
        if (conn != null) {
            conn.close();
        }
    }
}


