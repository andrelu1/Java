<%-- 
    Document   : datahora
    Created on : 30/08/2021, 17:11:54
    Author     : root
--%>

<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Java EE JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JAVA EE JSP</h1>
        <h2>Java Server pages</h2>
        <h3><a href="index.html">Voltar</a></h3>
        <h3>Data e Hora do servidor</h3>
        <% 
           Date nov = new Date();
           out.print(nov);
        %>
    </body>
</html>
