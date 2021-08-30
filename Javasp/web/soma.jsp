<%--  
    Document   : soma
    Created on : 30/08/2021, 17:26:41
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
   String MensagemERRO = null; 
   double nu1=0,nu2 =0,resultado=0; 
   try {
          nu1 = Double.parseDouble(request.getParameter("n1"));
   }catch(Exception e) {
       MensagemERRO = "Erro ao ler parametro N1.";
   }
    try {
          nu2 = Double.parseDouble(request.getParameter("n2")); 
   }catch(Exception e) {
       MensagemERRO = "Erro ao ler parametro N2.";
   }
     try {
          resultado = nu1+nu2;
   }catch(Exception e) {
       MensagemERRO = "Erro ao calcular soma!"+e.getMessage();
   }

%>

<html>
    <head>
        <title>Java EE JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JAVA EE JSP</h1>
        <h2>Java Server pages</h2>
        <h3><a href="datahora.jsp">Data e Hora</a></h3>
        <h3><a href="index.html">Voltar</a></h3>
        <h2>Soma</h2>
        <% if(MensagemERRO == null){ %>
        <h4><%= nu1%>+<%= nu2%>=<%= resultado%></h4>    
        <%}else{%>
        <div style="color:red"><%= MensagemERRO  %></div>
        <% } %>
    </body>
</html>
