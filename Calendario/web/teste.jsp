<%-- 
    Document   : datahora
    Created on : 30/08/2021, 17:11:54
    Author     : root
--%>


<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
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
        <h3>Calendario</h3>
        <% 
                        GregorianCalendar ca = new GregorianCalendar();
                        int ano = Integer.parseInt(request.getParameter("ano"));
                        int mes = Integer.parseInt(request.getParameter("mes"));
                        ca.clear();
                        ca.set(ano, mes - 1, 1);
                        int primeiro = ca.get(Calendar.DAY_OF_WEEK);
                        int dias = ca.getActualMaximum(Calendar.DAY_OF_MONTH);%>
                        <%int index = 0;%>
                        <table border="1">
                        <tr>
                        <th>Dom</th>
                        <th>Seg</th>
                        <th>Ter</th>
                        <th>Qua</th>
                        <th>Qui</th>
                        <th>Sex</th>
                        <th>Sab</th>
                        </tr>
                        <%for (int day = 1; day < primeiro; day++) {%>
                        <p>&nbsp&nbsp&nbsp&nbsp</p>
                        <%index++;%>
                        <%}%>
                        <%for (int dia = 1; dia <= dias; dia++) {%>
                        <%if (dia<10){%> 
                        <td><%=dia%><p>&nbsp&nbsp&nbsp&nbsp</p></td>
                        <%}else {%>
                        <td><%=dia%></td>
                        <%index++;%>
                       <%}%>
                       <%if (index == 7) {%>
                       <%index = 0;%>
                       <br>
                       <%} else {%> 
                       <p>&nbsp&nbsp&nbsp&nbsp</p>
                       <%}%>

    <br>
 </body>
</html>