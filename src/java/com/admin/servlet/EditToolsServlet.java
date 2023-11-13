package com.admin.servlet;

import com.DAO.ToolsDaoImpl;
import com.DB.DbConn;
import com.entity.ToolsDtls;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author днс
 */
public class EditToolsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String toolsName = request.getParameter("mname");
            String toolsBrend = request.getParameter("mbrend");
            String price = request.getParameter("price");
            String categories = request.getParameter("mcategoryes");
            String status = request.getParameter("mstatus");

            ToolsDtls td = new ToolsDtls();
            td.setToolsId(id);
            td.setToolsName(toolsName);
            td.setBrend(toolsBrend);
            td.setPrice(price);
            td.setToolsCategory(categories);
            td.setStatus(status);

            ToolsDaoImpl dao = new ToolsDaoImpl(DbConn.getConnection());
            boolean f = dao.updateEditTools(td);
            
            HttpSession session = request.getSession();
            if (f) {
                session.setAttribute("editMsg", "Данные были отредактированы");
                response.sendRedirect("admin/all_tools.jsp");
            } else {
                session.setAttribute("failedMsg", "Что-то на сервере не так");
                response.sendRedirect("admin/all_tools.jsp");
            }
        } catch (Exception e) {
        }
    }
}
