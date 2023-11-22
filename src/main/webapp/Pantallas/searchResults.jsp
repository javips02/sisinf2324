<%@ page import="java.sql.*" %>
<%
    String query = request.getParameter("query");
    String dbURL = "jdbc:postgresql://btzbxdd9tium0vi5y1bv-postgresql.services.clever-cloud.com:50013/btzbxdd9tium0vi5y1bv";
    String username = "ujehofnlmsw4huovwiwn";
    String password = "13EQb6k7XUdKfXFWeIhAUwi9oVpRZ8";

    try {
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection(dbURL, username, password);
        Statement statement = connection.createStatement();

        String sql = "SELECT * FROM tu_tabla WHERE columna LIKE '%" + query + "%'";
        ResultSet resultSet = statement.executeQuery(sql);

        while(resultSet.next()) {
            out.println(resultSet.getString("columna_que_quieres_mostrar") + "<br>");
        }

        resultSet.close();
        statement.close();
        connection.close();
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>

