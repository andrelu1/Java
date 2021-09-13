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
    ca.set(Calendar.DAY_OF_MONTH , 1);
    ca.set(Calendar.MONTH, mes+1);
    ca.set(Calendar.YEAR,ano);
    int d1;
    d1 = ca.getActualMinimum(Calendar.DAY_OF_WEEK);%>
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
    <%for(int i=0; i<d1;i++){%>
    <tr>&nbsp</tr>
    <%for(int j=1; j<ca.getActualMaximum(Calendar.DAY_OF_MONTH);j++){%>
    <%String dia =Integer.toString(j);%> 
        <tr><%=dia%></tr>
        <tr>&nbsp</tr>
    <%if (dia.length()==1) { %>
        <tr>&nbsp</tr>
    <%} %>       
    <%if ((d1+j)%7==0){%>
    <br>
 </body>
</html>