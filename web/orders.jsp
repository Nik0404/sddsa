<%@page import="on.musichouse.connection.DbConn" %>
<%@page import="on.musichouse.model.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null) {
        request.setAttribute("auth", auth);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>orders page</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
