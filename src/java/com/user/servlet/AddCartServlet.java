package com.user.servlet;

import com.DAO.CartDaoImpl;
import com.DAO.ToolsDaoImpl;
import com.DB.DbConn;
import com.entity.Cart;
import com.entity.ToolsDtls;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AddCartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter w = response.getWriter();

        try {
            int id = Integer.parseInt(request.getParameter("id"));
            int uId = Integer.parseInt(request.getParameter("uid"));
            int count = Integer.parseInt(request.getParameter("count"));

            CartDaoImpl car_dao = new CartDaoImpl(DbConn.getConnection());
            Cart existingCartItem = car_dao.getCartItemByIdAndUserId(id, uId);
//            int i_tools = car_dao.quntityTools(uId);
//            String jsonData = String.format("{ \"count\": \"%s\"}", i_tools);
//            response.getWriter().write(jsonData);

            if (existingCartItem != null) {
                existingCartItem.setCount(count);
                boolean f = car_dao.updateCartCount(existingCartItem);

            } else {
                ToolsDaoImpl dao = new ToolsDaoImpl(DbConn.getConnection());
                ToolsDtls td = dao.getToolsById(id);
                Cart c = new Cart();

                c.setToolsId(id);
                c.setUserId(uId);
                c.setToolsName(td.getToolsName());
                c.setBrend(td.getBrend());
                c.setCount(count);
                c.setPrice(Double.parseDouble(td.getPrice()));
                c.setTotalPrice(Double.parseDouble(td.getPrice()));

                boolean f = car_dao.addCart(c);

                HttpSession session = request.getSession();
                if (f) {
//                    session.setAttribute("quantityCart", i_tools);
                } else {
                    session.setAttribute("quantityCart", "0");
                }

            }

        } catch (Exception e) {
            w.print(e);
        }

    }
}
