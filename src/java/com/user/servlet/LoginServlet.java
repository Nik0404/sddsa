/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import com.DAO.UserDao;
import com.DAO.UserDaoImpl;
import com.DB.DbConn;
import com.entity.User;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getUserPrincipal();
        try {
            String email = request.getParameter("login-email");
            String password = request.getParameter("login-password");

            UserDaoImpl usd = new UserDaoImpl(DbConn.getConnection());
            HttpSession session = request.getSession();

            if ("root@mail.ru".equals(email) && "root".equals(password)) {
                User user = new User();
                user.setName("Admin");
                session.setAttribute("userObj", user);
                response.sendRedirect("admin/home.jsp");
            } else {
                User user = usd.userLogin(email, password);
                if (user != null) {
                    session.setAttribute("userObj", user);
                    response.sendRedirect("login.jsp");
                } else {
                    session.setAttribute("failedUser", "Неверный логин или пароль");
                    response.sendRedirect("login.jsp");
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
