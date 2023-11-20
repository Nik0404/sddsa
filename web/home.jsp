<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/head.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="includes/navbar.jsp"%>

        <c:if test="${empty userObj}">
            <c:redirect url="login.jsp" />
        </c:if>
        
        <div class="container">
            <div class="row p-5 justify-content-center">
                <div class="col-md-5 mt-2">
                    <a href="profile-user.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-address-card fa-4x"></i>
                                <h2>Профиль</h2>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-5 mt-2">
                    <a href="cart.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-rectangle-list fa-4x"></i>
                                <h2>Заказы</h2>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>


        <%@include file="includes/footer.jsp" %>
    </body>
</html>
