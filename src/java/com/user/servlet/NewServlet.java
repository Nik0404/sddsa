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
import com.google.gson.*;

/**
 *
 * @author днс
 */
public class NewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter w = response.getWriter();

        try {
            int id = Integer.parseInt(request.getParameter("id"));
            int uId = Integer.parseInt(request.getParameter("uid"));

            CartDaoImpl car_dao = new CartDaoImpl(DbConn.getConnection());
            List<Cart> existingCartItem = car_dao.getToolsUser(uId);
            String jsn = new Gson().toJson(existingCartItem);
            w.print(jsn);
        } catch (Exception e) {
        }
    }
}
