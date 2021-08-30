<%--  
    Document   : soma
    Created on : 30/08/2021, 17:26:41
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
   String MensagemERRO = null; 
   int n=0; 
   try {
          n = Integer.parseInt(request.getParameter("n"));
   }catch(Exception e) {
       MensagemERRO = "Erro ao ler parametro N."+request.getParameter("n")+"Não é um valor inteiro";
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
        <h2>Números Aleatórios</h2>
        <% if(MensagemERRO == null){ %>
        <table border="1">
            <tr>
            <th>Indice</th>
            <th>Número</th>
            </tr>
            <%for(int i=1;i<=n;i++){%>
            <tr>
                <td><%=i%></td>
                <td><%= ((int)(100*Math.random())) %></td>
            </tr>
            <%}%>
        </table>   
        <%}else{%>
        <div style="color:red"><%= MensagemERRO  %></div>
        <% } %>
    </body>
</html>
