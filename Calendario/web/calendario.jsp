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
<%  
   String MensagemERRO = null; 
   int ano=0, mes =0, dia=0; 
   try {
          ano = Integer.parseInt(request.getParameter("ano"));
   }catch(Exception e) {
       MensagemERRO = "Erro ao ler o ano.";
   }
    try {
          mes = Integer.parseInt(request.getParameter("mes")); 
   }catch(Exception e) {
       MensagemERRO = "Erro ao ler o mes.";
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
        <h3><a href="index.html">Voltar</a></h3>
        <h3>Calendario</h3>
        <% int espaco = mes;
        String[] meses = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
                "Julho", "Agosto", "Setembro",
                "Outubro", "Novembro", "Dezembro"};

         int[] dias = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
            for (int ms = 1; ms <= 12; ms++) {
            if  ((((ano % 4 == 0) & (ano % 100 != 0)) ||  (ano % 400 == 0)) & ms == 2)   
             dias[ms] = 29;%>
        <table border="1">
            <<h4><p>&nbsp;&nbsp;&nbsp;</p><%= meses%>+<%= nu2%>=<%= resultado%></h4>
            <tr>
            <th>Dom</th>
            <th>Seg</th>
            <th>Ter</th>
            <th>Qua</th>
            <th>Qui</th>
            <th>Sex</th>
            <th>Sab</th>
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
            System.out.println("          "+ months[M] + " " + Y);

            // Display the lines
            System.out.println("_____________________________________");
            System.out.println("   Sun  Mon Tue   Wed Thu   Fri  Sat");

            // spaces required
               spaces = (days[M-1] + spaces)%7;
            
            // print the calendar
            for (int i = 0; i < spaces; i++)
                System.out.print("     ");
            for (int i = 1; i <= days[M]; i++) {
                System.out.printf(" %3d ", i);
                if (((i + spaces) % 7 == 0) || (i == days[M])) System.out.println();
            }
            
            System.out.println();
        }
    }
}

    </body>
</html>