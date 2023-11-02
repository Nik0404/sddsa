<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getSession().getAttribute("userObj") == null){
         response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: home</title>
        <%@include file="head.jsp"  %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container">
            <div class="row pt-5">
                <div class="col-md-3">
                    <a href="add_tools.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-plus-square fa-3x"></i> <br>
                                <h4>Добавить</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="all_tools.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-cart-shopping fa-3x"></i><br>
                                <h4>Посмотреть товар</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="orders.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-box-open fa-3x"></i> <br>
                                <h4>Заказы</h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="../log-out">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-sign-out-alt fa-3x"></i> <br>
                                <h4>Выйти</h4>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
