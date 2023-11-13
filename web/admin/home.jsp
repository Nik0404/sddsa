<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <%@include file="head.jsp"  %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userObj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        
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
                    <a data-bs-toggle="modal" data-bs-target="#exampleModal">
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

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Выйти</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4>Вы действительно хотите выйти?</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Нет</button>
                        <a class="btn btn-primary" href="../log-out">Выйти</a>
                    </div>
                </div>
            </div>

            <%@include file="footer.jsp" %>
    </body>
</html>
