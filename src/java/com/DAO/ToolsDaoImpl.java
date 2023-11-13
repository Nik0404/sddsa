package com.DAO;

import java.sql.*;
import com.entity.ToolsDtls;
import java.util.ArrayList;
import java.util.List;

public class ToolsDaoImpl implements ToolsDao {

    private Connection conn;

    public ToolsDaoImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    @Override
    public boolean addTools(ToolsDtls td) {
        boolean f = false;

        try {
            String sql = "insert into tools_dtls(toolsname, brend, price, toolsCategory, status, photo, email) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, td.getToolsName());
            ps.setString(2, td.getBrend());
            ps.setString(3, td.getPrice());
            ps.setString(4, td.getToolsCategory());
            ps.setString(5, td.getStatus());
            ps.setString(6, td.getPhotoName());
            ps.setString(7, td.getUser_email());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
        }

        return f;
    }

    @Override
    public List<ToolsDtls> getAllTools() {

        List<ToolsDtls> list = new ArrayList<ToolsDtls>();
        ToolsDtls td = null;

        try {
            String sql = "select * from tools_dtls";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                td = new ToolsDtls();
                td.setToolsId(rs.getInt(1));
                td.setToolsName(rs.getString(2));
                td.setBrend(rs.getString(3));
                td.setPrice(rs.getString(4));
                td.setToolsCategory(rs.getString(5));
                td.setStatus(rs.getString(6));
                td.setPhotoName(rs.getString(7));
                td.setUser_email(rs.getString(8));

                list.add(td);

            }

        } catch (Exception e) {
        }

        return list;
    }

    @Override
    public ToolsDtls getToolsById(int id) {
        ToolsDtls td = null;

        try {
            String sql = "select * from tools_dtls where toolsId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                td = new ToolsDtls();
                td.setToolsId(rs.getInt(1));
                td.setToolsName(rs.getString(2));
                td.setBrend(rs.getString(3));
                td.setPrice(rs.getString(4));
                td.setToolsCategory(rs.getString(5));
                td.setStatus(rs.getString(6));
                td.setPhotoName(rs.getString(7));
                td.setUser_email(rs.getString(8));
            }
        } catch (Exception e) {
        }

        return td;
    }

    @Override
    public boolean updateEditTools(ToolsDtls td) {
        boolean f = false;

        try {
            String sql = "update tools_dtls set toolsname=?, brend=?, price=?, toolsCategory=?, status=? where toolsId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, td.getToolsName());
            ps.setString(2, td.getBrend());
            ps.setString(3, td.getPrice());
            ps.setString(4, td.getToolsCategory());
            ps.setString(5, td.getStatus());
            ps.setInt(6, td.getToolsId());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
        }

        return f;
    }

    @Override
    public boolean deleteTools(int id) {
        boolean f = false;

        try {
            String sql = "delete from tools_dtls where toolsId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {

        }

        return f;
    }

    @Override
    public List<ToolsDtls> getNewTools() {

        List<ToolsDtls> list = new ArrayList<ToolsDtls>();
        ToolsDtls td = null;

        try {
            String sql = "select * from tools_dtls";
            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setString(1, "Old");
//            ps.setString(2, "Inactive");
            ResultSet rs = ps.executeQuery();

            int i = 1;
            while (rs.next() && i <= 4) {
                td = new ToolsDtls();
                td.setToolsId(rs.getInt(1));
                td.setToolsName(rs.getString(2));
                td.setBrend(rs.getString(3));
                td.setPrice(rs.getString(4));
                td.setToolsCategory(rs.getString(5));
                td.setStatus(rs.getString(6));
                td.setPhotoName(rs.getString(7));
                td.setUser_email(rs.getString(8));
                
                list.add(td);
                i++;
            }
        } catch (Exception e) {
        }

        return list;

    }
}
