<%-- 
    Document   : andre
    Created on : 05/10/2021, 07:10:02
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/boots.jspf" %>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>Sobre</title>
    </head>
    <style>
html {
  height: 100%;
}

body {
  margin: 0;
}

.bg {
  animation: slide 3s ease-in-out infinite alternate;
  background-image: linear-gradient(-60deg, #6c3 50%, #09f 50%);
  bottom: 0;
  left: -50%;
  opacity: 0.5;
  position: fixed;
  right: -50%;
  top: 0;
  z-index: -1;
}

.bg2 {
  animation-direction: alternate-reverse;
  animation-duration: 4s;
}

.bg3 {
  animation-duration: 5s;
}

.content {
  background-color: rgba(255, 255, 255, 0.8);
  border-radius: 0.25em;
  box-shadow: 0 0 0.25em rgba(0, 0, 0, 0.25);
  box-sizing: border-box;
  left: 50%;
  padding: 10vmin;
  position: fixed;
  text-align: center;
  top: 50%;
  transform: translate(-50%, -50%);
}

h1 {
  font-family: monospace;
}

@keyframes slide {
  0% {
    transform: translateX(-25%);
  }
  100% {
    transform: translateX(25%);
  }
}
     
    </style>
    <body>
   <div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>
<div class="content">
   <%if(session.getAttribute("username")==null){%>
    <h1>Você não pode acessar!</h1>
    <%} else{ %>
    <h5>André Luis Rosa Mastrocola - R.A. 1290482012004 - FATEC desde 02/2020</h5>
    <h5><a href="https://github.com/andrelu1/Java">Meu Github</a></h5>
    <table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Dia Da Semana</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>POO</td>
      <td>Segunda</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Banco de Dados</td>
      <td>Terça</td>
    </tr>
   <tr>
      <th scope="row">3</th>
      <td>Sistemas Operacionais 2</td>
      <td>Terça e Quarta</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td>Prog. Para Internet</td>
      <td>Quarta</td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td>Engenharia de Software III</td>
      <td>Quinta</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Ingles IV e V</td>
      <td>Sexta</td>
    </tr>
  </tbody>
</table>
    <%}%>
</div>
    </body>
</html>
