package com.user.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author днс
 */
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            if(request.getSession().getAttribute("userObj") != null) {
                request.getSession().removeAttribute("userObj");
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (Exception e) {
        }
    }
}