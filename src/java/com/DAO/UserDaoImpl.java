package com.DAO;

import com.entity.User;
import java.sql.*;

public class UserDaoImpl implements UserDao{
    private Connection con;
    
    public UserDaoImpl(Connection con){
        super();
        this.con = con;
    }
    
    @Override
    public boolean userRegister(User us){
        boolean f = false;
        
        try {
            String sql = "insert into user(name, email, phno, password) values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhno());
            ps.setString(4, us.getPassword());
            
            int i = ps.executeUpdate();
            
            if(i == 1) {
                f = true;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }

    @Override
    public User userLogin(String email, String password) {
        User user = null;
        try {
            String sql = "select * from user where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                user = new User();
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setPhno(rs.getString(4));
                user.setPassword(rs.getString(5));
                user.setAddress(rs.getString(6));
                user.setLandmark(rs.getString(7));
                user.setCity(rs.getString(8));
                user.setState(rs.getString(9));
                user.setPincode(rs.getString(10));
            }
            
        } catch (Exception e) {
        }
        
        return user;
    }
}
