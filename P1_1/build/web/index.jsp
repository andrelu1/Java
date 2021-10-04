<%-- 
    Document   : index
    Created on : 03/10/2021, 14:37:26
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P1 - André Luis</title>
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
    style="background-image: url('https://wallpapercave.com/download/-roy-lichtenstein-wallpapers-wp2211607'); background-size:100% 100%; "
    >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-light">       
          <form>
              <% if(session.getAttribute("nome")==null){%>
              <h1>Você não tem permissão de ver</h1>
        <%}else {%>
        Você é: <%= session.getAttribute("nome")%>
        <br>
        <div>
        <H1>Contador de usuários</H1>               
        Você é o número: <%= application.getAttribute("counter")%>
        </div>
        <hr/>   
        <br>   
        <%}%>
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

