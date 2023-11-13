package com.admin.servlet;

import com.DAO.ToolsDaoImpl;
import com.DB.DbConn;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author днс
 */
public class MusicToolsDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException{
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            
            ToolsDaoImpl dao = new ToolsDaoImpl(DbConn.getConnection());
            boolean f = dao.deleteTools(id);
            
            HttpSession session = request.getSession();
            if(f){
                session.setAttribute("editMsg", "Музыкальный инструмент был ужален");
                response.sendRedirect("admin/all_tools.jsp");
            } else {
                session.setAttribute("failedMsg", "Что-то на сервере не так");
                response.sendRedirect("admin/all_tools.jsp");
            }
        } catch (Exception e) {
        }
    }
}
    