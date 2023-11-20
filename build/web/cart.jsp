<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>cart page</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>

        <c:if test="${empty userObj}">
            <c:redirect url="login.jsp" />
        </c:if>

        <div class="container">
            <div class="table-responsive">
                <table class="table table-striped mt-5">
                    <thead class="bg-dark text-white">
                        <tr>
                            <th scope="col">Зака</th>
                            <th scope="col">Имя</th>
                            <th scope="col">Название инстурмента</th>
                            <th scope="col">Бренд</th>
                            <th scope="col">Цена</th>
                            <th scope="col">Количество</th> 
                            <th scope="col">Тип оплаты</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
