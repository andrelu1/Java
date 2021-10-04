<%-- 
    Document   : andre-dica-mega
    Created on : 03/10/2021, 15:29:14
    Author     : root
--%>
<%@page import="java.util.Random"%>
<%@page import = "java.util.*" session="true"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/bootstrap-head.jspf" %>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
      <style>
    /* Default height for small devices */
    #intro-example {
      height: 400px;
    }

    /* Height for devices larger than 992px */
    @media (min-width: 992px) {
      #intro-example {
        height: 450px;
      }
    }
  </style>
<div
    id="intro-example"
    class="p-5 text-center bg-image"
    style="background-image: url('https://wallpapercave.com/download/andy-warhol-wallpapers-wp1868968'); background-size:100% 100%; "
    >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-light">      
          <form>
              <% if(session.getAttribute("nome")==null){%>
              <h1>Voce não tem permissão pra ver</h1>
        <%}else {%>
        <h1 class="mb-3">Numeros da Mega</h1>  
        Bem Vindo!, <%= session.getAttribute("nome")%>
        <hr/>
        <%ArrayList<Integer> megaa = (ArrayList) session.getAttribute("mega");%>
        <% for(int numeros:megaa){%>
        <%=numeros%>
        <br>   
        <%}}%>
          </form>
        </div>
          <div>
         </div>
      </div>
    </div>
  </div>
</div>  
 <%@include file="WEB-INF/jspf/footer.jspf" %>
</header>
</html>
