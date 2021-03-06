<%-- 
    Document   : index
    Created on : 23 de out. de 2021, 11:01:39
    Author     : rlarg
--%>

<%@page import="model.Data"%>
<%@page import="model.Contato"%>
<%@page import="model.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    try{
        if(request.getParameter("form-add")!=null){
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            int dia = Integer.parseInt(request.getParameter("nascimento.dia"));
            int mês = Integer.parseInt(request.getParameter("nascimento.mes"));
            int ano = Integer.parseInt(request.getParameter("nascimento.ano"));
            Contato c = new Contato(nome, telefone, new Data(dia, mês, ano));
            Base.getContatosList().add(c);
            response.sendRedirect(request.getRequestURI());
        }else if(request.getParameter("form-remove")!=null){
            int index = Integer.parseInt(request.getParameter("index"));
            Base.getContatosList().remove(index);
            response.sendRedirect(request.getRequestURI());
        }
    }catch(Exception ex){
        error = ex.getMessage();
    }
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
      <div class="d-flex justify-content-left align-items-left h-100">
        <div class="text-white">
            <div class="row">
  <div class="col">
        <h2>CONTATOS</h2>
        <%if(error != null){%><div style="color: red"><%= error %></div><%}%>
        <form>
            <fieldset>
                <legend>Novo contato</legend>
                Nome:<br/><input type="text" name="nome"/><br/>
                Telefone:<br/><input type="text" name="telefone"/><br/>
                Data de nascimento:<br/>
                <input type="number" step="1" name="nascimento.dia"/>/
                <input type="number" step="1" name="nascimento.mes"/>/
                <input type="number" step="1" name="nascimento.ano"/>
                <br/><br/>
                <input type="submit" name="form-add"/>
            </fieldset>
        </form>
        <hr/>
        <div class="d-flex justify-content-center align-items-top h-100">
        <div class="text-white">
            <div class="row">
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Nascimento</th>
                <th>Remoção</th>
            </tr>
            <%for(Contato c: Base.getContatosList()){%>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getData() %></td>
                <td>
                    <form>
                        <input type="submit" name="form-remove" value="Remover"/>
                        <input type="hidden" name="index" value="<%= Base.getContatosList().indexOf(c) %>"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
      </div>
    </div>
    </div>
  </div>
    </div>
  </div>
      </div>
    </div></div>
</body>