package on.musichouse.connection;

import java.sql.*;

public class DbConn {

    private static Connection connection = null;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (connection == null) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce_music_house?useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            
            System.out.println("connected");
        }
        return connection;
    }
}
