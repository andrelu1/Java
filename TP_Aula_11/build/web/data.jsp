<%-- 
    Document   : index
    Created on : 23 de out. de 2021, 11:01:39
    Author     : rlarg
--%>
<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrão = new Data();

    Data hoje = new Data();
    hoje.setDia(25);
    hoje.setMês(10);
    hoje.setAno(2021);

    Data andreNiver = new Data(05, 06, 1982);
%>

<html>
    <head>
         <%@include file="WEB-INF/jspf/header.jspf" %>
         <%@include file="WEB-INF/jspf/boots.jspf" %>
        <title>Java OO</title>
    </head>
<body>
  <div
          class="p-5 text-center bg-image"
          style="
          background-image: url('https://wallpaperaccess.com/download/minimalist-design-2767162');
          height: 100vh;
        "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.1);">
      <div class="d-flex justify-content-center align-items-top h-100">
        <div class="text-white">
        <h2>CLASSE DATA</h2>
        <h3>Data padrão da classe</h3>
        <div><%= padrão.getDia() %>/<%= padrão.getMês() %>/<%= padrão.getAno() %></div>
        <h3>Data de hoje:</h3>
        <div><%= hoje.getData() %></div>
        <h3>Aniversário do André Luis:</h3>
        <div><%= andreNiver.getData() %></div>
        </div>
      </div>
    </div>
  </div>
</body>