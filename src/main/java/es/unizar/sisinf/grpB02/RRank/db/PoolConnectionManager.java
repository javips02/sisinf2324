package es.unizar.sisinf.grpB02.RRank.db;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/** * Clasequeabstraelaconexionconla base dedatos. */

public class PoolConnectionManager { //Le pide la conexion a tomcat
	// Devuelvela conexion, para no tener que abrirla y cerrarla siempre.
	public final static Connection getConnection() {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");

			System.out.println(envCtx.toString());
			System.out.println("********************* 1 **********************");
			DataSource ds = (DataSource) envCtx.lookup("jdbc/sisinfDB"); //Nombre de recurso en la app
			System.out.println("********************* 2 **********************");
			System.out.println(ds.toString());

			System.out.println("********************* 3 **********************");
			Connection conn = ds.getConnection();
			System.out.println("********************* 4 **********************");
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// Libera la conexion, devolviendola al pool
	public final static void releaseConnection(Connection conn) {
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
