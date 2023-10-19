package on.musichouse.dao;

import java.sql.*;
import on.musichouse.model.User;

public class UserDao {

    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    User user = null;

    public UserDao(Connection con) {
        this.con = con;
    }

    public User userLogin(String email, String password) {
        try {
            query = "select * from users where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return user;
    }

    public int userRegistration(String name, String email, String password) {
        try {
            query = "insert into users (name, email, password) values (?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, password);
            return pst.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return 0;
    }
}
