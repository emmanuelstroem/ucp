<%-- 
    Document   : logout
    Created on : Jun 15, 2015, 1:18:52 PM
    Author     : AUMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
          <link rel="stylesheet" type="text/css" href="scripts/style.css" >
    </head>
    <body>
        <%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
    </body>
</html>
