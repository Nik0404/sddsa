package com.admin.servlet;

import com.DAO.ToolsDaoImpl;
import com.DB.DbConn;
import com.entity.ToolsDtls;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;

/**
 *
 * @author днс
 */
@MultipartConfig
public class ToolsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter w = response.getWriter();
        try {
            String toolsName = request.getParameter("mname");
            String toolsBrend = request.getParameter("mbrend");
            String price = request.getParameter("price");
            String categories = request.getParameter("mcategoryes");
            String status = request.getParameter("mstatus");
            Part part = request.getPart("mimg");
            String fileName = part.getSubmittedFileName();

            ToolsDtls td = new ToolsDtls(toolsName, toolsBrend, price, categories, status, fileName, "admin");

            ToolsDaoImpl dao = new ToolsDaoImpl(DbConn.getConnection());

            boolean f = dao.addTools(td);
            HttpSession session = request.getSession();

            if (f) {
                String path = getServletContext().getRealPath("") + "musicTools";
                File file = new File(path);
                part.write(path + File.separator + fileName);

                session.setAttribute("succMsg", "Музыкальный инструмент добавлен");
                response.sendRedirect("admin/add_tools.jsp");
            } else {
                session.setAttribute("failedMsg", "Произошла ошибка на сервере");
                response.sendRedirect("admin/add_tools.jsp");
            }

        } catch (Exception e) {
            w.print(e);
        }
    }
}
