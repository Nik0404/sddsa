<%@page import="on.musichouse.connection.DbConn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <title>welcome to shopping cart</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>

        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner text-center">
                <div class="carousel-item active">
                    <img src="https://bogatyr.club/uploads/posts/2023-03/1678108395_bogatyr-club-p-muzikalnaya-studiya-foni-krasivo-61.jpg" class="d-block w-100 z-0" alt="...">
                    <div class="d-flex h-100 align-items-center justify-content-center">
                        <h1 class="fw-light">Если вы давно мечтали купить гитару, то тогда, мы с радостью представим множество классных гитар</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://bogatyr.club/uploads/posts/2023-03/1678108298_bogatyr-club-p-muzikalnaya-studiya-foni-krasivo-60.jpg" class="d-block w-100" alt="...">
                    <div class="d-flex h-100 align-items-center justify-content-center">
                        <h1 class="fw-light">Фортепмано ценятся людьми, как инструмент позволяющий создовать произведение искусства.</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://phonoteka.org/uploads/posts/2021-04/1618539624_12-p-fon-studiya-zvukozapisi-13.jpg" class="d-block w-100" alt="...">
                    <div class="d-flex h-100 align-items-center justify-content-center">
                        <h1 class="fw-light">Барабаны - это музыкальный инструмент, который имеет множество различных видов и форм. Они используются в различных музыкальных жанрах, включая рок, поп, джаз и многие другие. Барабаны также являются важным элементом в маршевой музыке и военных оркестрах.</h1>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
