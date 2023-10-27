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
import com.DB.DbConn;
import com.DAO.UserDaoImpl;
import com.entity.User;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author ЦОПП
 */
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            PrintWriter w = response.getWriter();
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String check = request.getParameter("check");

            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phone);
            us.setPassword(password);

            HttpSession session = request.getSession();

            if (!name.equals("") & !email.equals("") & !phone.equals("") & !password.equals("")) {
                if (check != null) {
                    UserDaoImpl dao = new UserDaoImpl(DbConn.getConnection());
                    dao.userRegister(us);
                    session.setAttribute("succesRegister", "success");
                    response.sendRedirect("registration.jsp");
                } else {
                    session.setAttribute("failedCheck", "согласитесь с праилами сайта");
                    response.sendRedirect("registration.jsp");
                }
            } else {
                session.setAttribute("failedReg", "не все поля заолняны");
                response.sendRedirect("registration.jsp");
            }

        } catch (Exception e) {

        }
    }
}
