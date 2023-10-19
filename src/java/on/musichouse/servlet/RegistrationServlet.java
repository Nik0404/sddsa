/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package on.musichouse.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import on.musichouse.connection.DbConn;
import on.musichouse.dao.UserDao;
import on.musichouse.model.User;

/**
 *
 * @author ЦОПП
 */
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter w = response.getWriter();
        String name = request.getParameter("login-name");
        String email = request.getParameter("login-email");
        String password = request.getParameter("login-password");

        try {
            UserDao dao = new UserDao(DbConn.getConnection());
            int i = dao.userRegistration(name, email, password);

            if (i != 0) {
                response.sendRedirect("login.jsp");
            } else {
                w.print("0");
            }
        } catch (ClassNotFoundException | SQLException e) {
            w.print(e);
        }
    }
}
