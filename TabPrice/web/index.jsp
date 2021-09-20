<%-- 
    Document   : index
    Created on : 13/09/2021, 17:58:48
    Author     : root
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
    String errorMessage = null;
    double vp=0, juros=0, np=0, tpm = 0;
    try{
        vp = Double.parseDouble(request.getParameter("vp"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o montante: "+request.getParameter("vp");
    }
    
    try{
        juros = Double.parseDouble(request.getParameter("juros"));
    }catch(Exception e){
        errorMessage = "Erro ao ler os juros: "+request.getParameter("juros");
    }
    try{
        np = Double.parseDouble(request.getParameter("np"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o numero de prestações: "+request.getParameter("np");
    }
    try{
        tpm = (vp*Math.pow((1 + juros),np)-1*juros*Math.pow((1 + juros),np));
    }catch(Exception e){
        errorMessage = "Erro ao calcular- " + e.getMessage();
    }
%>       
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diretivas JSP - Tabela Price</title>
        <%@include file="WEB-INF/jspf/bootstrap-header.jspf" %>
    </head>
    <header>
  <!-- Intro settings -->
  <style>
    /* Default height for small devices */
    #intro-example {
      height: 400px;
    }

    /* Height for devices larger than 992px */
    @media (min-width: 992px) {
      #intro-example {
        height: 700px;
      }
    }
  </style>
  <%@include file="WEB-INF/jspf/header.jspf" %>
<div
    id="intro-example"
    class="p-5 text-center bg-image"
    style="background-image: url('https://wallpapercave.com/download/dollar-symbol-wallpaper-wp2717992'); background-size:100% 100%; "
    >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-light">
          <h1 class="mb-3">Tabela Price</h1>
          <h5 class="mb-4">Digite os valores</h5>          
          <form>
          <div class="input-group mb-3">
          <span class="input-group-text" id="basic-addon1">Valor Presente</span>
          <input type="number" class="form-control" placeholder="Ex: 5000" name="vp" aria-label="ValorPresente" aria-describedby="basic-addon1">
          </div>  
        <div class="input-group mb-3">
          <span class="input-group-text" id="basic-addon1">Juros</span>
          <input type="number" class="form-control" placeholder="Ex: 0.7" name= "juros" aria-label="juros" aria-describedby="basic-addon1">
          </div>  
          <div class="input-group mb-3">
          <span class="input-group-text" id="basic-addon1">Numero de prestações</span>
          <input type="number" class="form-control" placeholder="Ex: 7" name= "np" aria-label="prestacoes" aria-describedby="basic-addon1">
          </div>  
        <input 
            class="btn btn-outline-light btn-lg m-2"
            type='submit'
            value="Calcular"
            role="button"
            />
         </form>
            <%if(errorMessage==null){%>
          <h4><%= tpm %></h4>
          <table border="1">
          <tr>
                <th>Numero Prestacoes</th>
                <th>Saldo Montante</th>
                <th>Juros</th>
                <th>Valor Prestação</th>
            </tr>
            <%for(int i=1; i<=np; i++){%>
            <tr>
                <td><%= np %></td>
                <td><%= (vp=vp-(tpm-juros)) %></td> 
                <td><%= (vp-juros)%></td>
                <td><%= tpm%></td>
            </tr>
            <%}%>
        </table>
        <%}else{%>
            <div style="color: red"><%= errorMessage %></div>
        <%}%>

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
