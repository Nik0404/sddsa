<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.DAO.ToolsDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.DB.DbConn" %>
<%@ page import="com.entity.ToolsDtls" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All Tools</title>
        <%@include file="head.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
         <c:if test="${empty userObj}">
            <c:redirect url="../login.jsp" />
        </c:if>

        <h3 class="text-center">Список инструментов</h3>
        <c:if test="${not empty editMsg}">
            <p class="text-center text-success">${editMsg}</p>
            <c:remove var="editMsg" scope="session"/>
        </c:if>

        <c:if test="${not empty failedMsg}">
            <p class="text-center text-danger">${failedMsg}</p>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>
        <table class="table">
            <thead class="bg-black text-white">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Фотография</th>
                    <th scope="col">Музыкальные инстурменты</th>
                    <th scope="col">Бренд</th>
                    <th scope="col">Цена</th>
                    <th scope="col">Категория</th>
                    <th scope="col">Статус</th>
                    <th scope="col">Действие</th>
                </tr>
            </thead>
            <tbody>

                <%
                    ToolsDaoImpl dao = new ToolsDaoImpl(DbConn.getConnection());
                    List<ToolsDtls> list = dao.getAllTools();
                    
                    for(ToolsDtls td : list) {%>
                <tr>
                    <th><%= td.getToolsId() %></th>
                    <td><img src="../musicTools/<%= td.getPhotoName()%>" style="width: 40px; height: 70px;"></td>
                    <td><%= td.getToolsName() %></td>
                    <td><%= td.getBrend() %></td>
                    <td><%= td.getPrice() %></td>
                    <td><%= td.getToolsCategory() %></td>
                    <td><%= td.getStatus() %></td>
                    <td>
                        <a href="edit_tools.jsp?id=<%=td.getToolsId() %>" class="btn btn-sm btn-sm btn-primary">Редактировать</a>
                        <a href="../delete?id=<%=td.getToolsId() %>" class="btn btn-sm btn-sm btn-danger">Удалить</a>
                    </td>

                </tr>
                <%    
                }
                %>

            </tbody>
        </table>
        <%@include file="footer.jsp" %>
    </body>
</html>
