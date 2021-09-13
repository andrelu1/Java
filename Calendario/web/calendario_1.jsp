<%-- 
    Document   : datahora
    Created on : 30/08/2021, 17:11:54
    Author     : root
--%>


<%@page import="java.text.SimpleDateFormat"%>
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
    ca.set(Calendar.MONTH, mes-1);
    ca.set(Calendar.YEAR,ano);
    int diasemana = ca.getActualMinimum(Calendar.DAY_OF_WEEK);
    int diasmes = ca.getActualMaximum(Calendar.DAY_OF_MONTH);%>
    <p><%out.println(new SimpleDateFormat("MMMM YYYY").format(ca.getTime()));%></p>   
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
    <% String inicio = "";
    for (int i = 0; i < diasemana - 1; i++) {
    inicio += "   ";
}%>
<p><%out.println(inicio);%></p>
<%for (int i = 0, diames = 1; diames <= diames; i++) {
    for (int j = ((i == 0) ? diasemana - 1 : 0); j < 7 && (diames <= diames); j++) {
        diames++;
    }%>
    <p><%out.println(diames);%></p>
    <br>
 </body>
</html>