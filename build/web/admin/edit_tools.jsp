<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.DAO.ToolsDaoImpl" %>
<%@ page import="com.DB.DbConn" %>
<%@ page import="com.entity.ToolsDtls" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Edit music tools</title>
        <%@include file="head.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userObj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4 mt-4 mb-5">
                    <div class="card text-white bg-dark">
                        <div class="card-body">
                            <h4 class="text-center">Редактироватьм музыкальный инструмент</h4>
                            <c:if test="${not empty editMsg}">
                                <p class="text-center text-success">${editMsg}</p>
                                <c:remove var="editMsg" scope="session"/>
                            </c:if>

                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger">${failedMsg}</p>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>


                            <%
                                int id = Integer.parseInt(request.getParameter("id"));
                                ToolsDaoImpl dao = new ToolsDaoImpl(DbConn.getConnection());
                                ToolsDtls td = dao.getToolsById(id);
                                    
                                    
                            %>

                            <form action="../eddit_tools" method="post">
                                <input type="hidden" name="id" value="<%=td.getToolsId() %>">
                                <div class="form-group">
                                    <label>Название музыкального инстумента</label>
                                    <input name="mname" type="text" class="form-control" value="<%=td.getToolsName()%>">
                                </div>
                                <div class="form-group mt-2">
                                    <label>Бренд музыкального инстумента</label>
                                    <input name="mbrend" type="text" class="form-control" value="<%=td.getBrend()%>">
                                </div>
                                <div class="form-group mt-2">
                                    <label>Цена</label>
                                    <input name="price" type="number" class="form-control" value="<%=td.getPrice()%>" >
                                </div>

                                <div class="form-group mt-2">
                                    <label>Категория музыкального инструмента</label>
                                    <select id="inputState" name="mcategoryes" class="form-control">

                                        <%
                                            if("New".equals(td.getToolsCategory())){
                                        %>
                                        <option value="New">Новый инструмент</option>
                                        <option value="Old">Старый инструмент</option>
                                        <%
                                        } else {%>
                                        <option value="Old">Старый инструмент</option>
                                        <option value="New">Новый инструмент</option>
                                        <%
                                        }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group mt-2">
                                    <label>Статус</label>
                                    <select id="inputState" name="mstatus" class="form-control">

                                        <%
                                            if("Active".equals(td.getStatus())){
                                        %>
                                        <option value="Active">Активный инструмент</option>
                                        <option value="Inactive">Неактивный инструмент</option>
                                        <%
                                        } else {%>
                                        <option value="Inactive">Неактивный инструмент</option>
                                        <option value="Active">Активный инструмент</option>
                                        <%
                                        }
                                        %>
                                    </select>
                                </div>
                                <!--                                <div class="form-group mt-2">
                                                                    <label>Фото</label>
                                                                    <input name="mimg" type="file" class="form-control-file" id="exampleFormControlFile1">
                                                                </div>-->
                                <button type="submit" class="btn btn-primary mt-4">Сохранить</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
