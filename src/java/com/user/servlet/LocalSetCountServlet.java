/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.user.servlet;

import com.DAO.CartDaoImpl;
import com.DB.DbConn;
import com.entity.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author ЦОПП
 */
public class LocalSetCountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        PrintWriter w = response.getWriter();
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            int uId = Integer.parseInt(request.getParameter("uid"));
            int count = Integer.parseInt(request.getParameter("count"));

            if (count != 0) {
                CartDaoImpl dao = new CartDaoImpl(DbConn.getConnection());
                List<Cart> cart = dao.getToolsUser(uId);
                for (Cart c : cart) {
                    w.print(c.getCount());
                }
            } else {
                w.print(0);
            }
        } catch (Exception e) {
        }
    }
}
