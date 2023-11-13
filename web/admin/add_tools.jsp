<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Add music tools</title>
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
                            <h4 class="text-center">Добавить инструмент</h4>
                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>

                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger">${failedMsg}</p>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>


                            <form action="../add_tools" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label>Название музыкального инстумента</label>
                                    <input name="mname" type="text" class="form-control">
                                </div>
                                <div class="form-group mt-2">
                                    <label>Бренд музыкального инстумента</label>
                                    <input name="mbrend" type="text" class="form-control">
                                </div>
                                <div class="form-group mt-2">
                                    <label>Цена</label>
                                    <input name="price" type="number" class="form-control">
                                </div>
                                <div class="form-group mt-2">
                                    <label>Категория музыкального инструмента</label>
                                    <select id="inputState" name="mcategoryes" class="form-control">
                                        <option selected>---выбрать---</option>
                                        <option value="New">Новый инструмент</option>
                                        <option value="Old">Старый инструмент</option>
                                    </select>
                                </div>
                                <div class="form-group mt-2">
                                    <label>Статус</label>
                                    <select id="inputState" name="mstatus" class="form-control">
                                        <option selected>---выбрать---</option>
                                        <option value="Active">Активный инструмент</option>
                                        <option value="Inactive">Неактивный инструмент</option>
                                    </select>
                                </div>
                                <div class="form-group mt-2">
                                    <label>Фото</label>
                                    <input name="mimg" type="file" class="form-control-file" id="exampleFormControlFile1">
                                </div>
                                <button type="submit" class="btn btn-primary mt-4">Добавить</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
