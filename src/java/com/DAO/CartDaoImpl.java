package com.DAO;

import java.sql.*;
import com.entity.Cart;
import java.util.ArrayList;
import java.util.List;

public class CartDaoImpl implements CartDao {

    private Connection conn;

    public CartDaoImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean addCart(Cart cart) {
        boolean f = false;

        try {
            String sql = "insert into cart (tid, uid, tools_name, brend, price, count, total_price) values (?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, cart.getToolsId());
            ps.setInt(2, cart.getUserId());
            ps.setString(3, cart.getToolsName());
            ps.setString(4, cart.getBrend());
            ps.setDouble(5, cart.getPrice());
            ps.setInt(6, cart.getCount());
            ps.setDouble(7, cart.getTotalPrice());
            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
        }

        return f;
    }

    @Override
    public Cart getCartItemByIdAndUserId(int id, int uId) {
        Cart c = null;
        

        try {
            String sql = "select * from cart where tid=? and uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setInt(2, uId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                c = new Cart();
                c.setId(rs.getInt(1));
                c.setToolsId(rs.getInt(2));
                c.setUserId(rs.getInt(3));
                c.setToolsName(rs.getString(4));
                c.setBrend(rs.getString(5));
                c.setPrice(rs.getDouble(6));
                c.setCount(rs.getInt(7));
                c.setTotalPrice(rs.getInt(8));

            }
        } catch (Exception e) {
        }
        return c;
    }

    @Override
    public boolean updateCartCount(Cart c) {
        boolean f = false;

        try {
            String sql = "update cart set count=? where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, c.getCount());
            ps.setInt(2, c.getId());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
        }

        return f;
    }

    @Override
    public int quntityTools(int uid) {
        int i = 0;

        try {
            String sql = "select count(*) from cart where uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, uid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                i += rs.getInt(1);
            }

        } catch (Exception e) {
        }

        return i;
    }

    @Override
    public List<Cart> getToolsUser(int userId) {
        List<Cart> list = new ArrayList<Cart>();
        Cart c = null;
        int totalPrice = 0;

        try {
            String sql = "select * from cart where uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                c = new Cart();
                c.setId(rs.getInt(1));
                c.setToolsId(rs.getInt(2));
                c.setUserId(rs.getInt(3));
                c.setToolsName(rs.getString(4));
                c.setBrend(rs.getString(5));
                c.setPrice(rs.getDouble(6) * rs.getInt(7));
                c.setCount(rs.getInt(7));
                totalPrice += c.getPrice();
                c.setTotalPrice(totalPrice);

                list.add(c);
            }
        } catch (Exception e) {
        }

        return list;
    }
    
    public boolean deleteCart(int id, int uId){
        boolean f = false;
        
        try {
            String sql = "delete from cart where tid=? and uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setInt(2, uId);
            
            int i = ps.executeUpdate();
            
            if(i == 1) {
                f = true;
            }
            
        } catch (Exception e) {
        }
        
        return f;
    }
}
