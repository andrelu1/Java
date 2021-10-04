<%-- 
    Document   : andre-dica-mega
    Created on : 03/10/2021, 15:29:14
    Author     : root
--%>

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
    style="background-image: url('https://wallpapercave.com/download/-roy-lichtenstein-wallpapers-wp2464036'); background-size:100% 100%; "
    >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-light">     
          <form>
              <% if(session.getAttribute("nome")==null){%>
              <h1>Voce não tem permissão pra ver</h1>
        <%}else {%>
        Saiba mais soubre o autor caro user: <%= session.getAttribute("nome")%>
        <hr/>
        <table class="table table-sm table-dark">
        <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">Nome</th>
        <th scope="col">R.A.</th>
        <th scope="col">Github</th>
        <th scope="col">Na FATEC desde</th>
        </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>André Luis Rosa Mastrocola</td>
      <td>1290482012004</td>
      <td><a href="https://github.com/andrelu1/Java"><strong>Meu Github</strong></a></td>
      <td>02/2020</td>
    </tr>
  </tbody>
</table>
        <hr/>
        <table class="table table-sm table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome da matéria</th>
      <th scope="col">Quantidade de aulas</th>
      <th scope="col">Dia da semana</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Programação Orientada a Objetos</td>
      <td>4 aulas</td>
      <td>Segunda-Feira</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Banco de Dados</td>
      <td>4 aulas</td>
      <td>Terça-Feira</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Sistemas Operacionais 2</td>
      <td>4 aulas</td>
      <td>Terça-Feira e Quarta-Feira</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td>Programação para internet</td>
      <td>4 aulas</td>
      <td>Quarta-Feira</td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td>Eng. Software 3</td>
      <td>4 aulas</td>
      <td>Quinta-Feira</td>
    </tr>
    <tr>
      <th scope="row">6</th>
      <td>Ingles V</td>
      <td>2 aulas</td>
      <td>Sexta-Feira</td>
    </tr>
    <tr>
      <th scope="row">7</th>
      <td>Ingles IV</td>
      <td>2 aulas</td>
      <td>Sexta-Feira</td>
    </tr>
  </tbody>
</table>
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
