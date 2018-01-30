<%-- 
    Document   : logout
    Created on : 23 Dec, 2017, 5:45:40 PM
    Author     : suren
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate(); %>

        <p>You have been successfully logout</p>
    </body>
</html>
