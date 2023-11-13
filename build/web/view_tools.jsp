<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.DAO.ToolsDaoImpl" %>
<%@ page import="com.DB.DbConn" %>
<%@ page import="com.entity.ToolsDtls" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            ToolsDaoImpl dao = new ToolsDaoImpl(DbConn.getConnection());
            ToolsDtls td = dao.getToolsById(id);
        %>

        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-5  text-center border p-5 bg-white">
                    <img src="musicTools/<%=td.getPhotoName() %>" style="width: 150px; height: 400px"/>
                    <h4>Название интрумента: <span class="text-success text-capitalize"><%= td.getToolsName() %></span> </h4>
                    <h4>Бренд: <span class="text-success text-capitalize"><%= td.getBrend() %></span></h4>
                    <h4>Категория: 
                        <% if("New".equals(td.getToolsCategory())){%>
                            <span class="text-success text-capitalize"><%= td.getToolsCategory()%></span>
                        <%} else {%>
                            <span class="text-danger text-capitalize"><%= td.getToolsCategory()%></span>
                        <%}%>
                    </h4>
                </div>
                <div class="col-md-7  text-center border p-5 bg-white">
                    <h1 class="text-capitalize"><%= td.getToolsName() %></h1>
                    <div class="row">
                        <div class="col-md-4 text-center p-2">
                            <i class="fas fa-sack-dollar fa-2x"></i>
                            <p>Низкая цена</p>
                        </div>
                        <div class="col-md-4 text-center p-2">
                            <i class="fas fa-face-smile fa-2x"></i>
                            <p>Возрату не подлежит</p>
                        </div>
                        <div class="col-md-4 text-center p-2">
                            <i class="fas fa-truck-fast fa-2x"></i>
                            <p>Бесплатная доставка</p>
                        </div>
                    </div>
                    <div class="text-end p-4">
                        <a href="" class="btn btn-success">Добавить</a>
                    </div>
                </div>
            </div>
        </div>






        <div class="mt-5"></div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
