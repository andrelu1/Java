<%-- 
    Document   : index
    Created on : 20/09/2021, 15:32:23
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% if(request.getParameter("autenticar")!=null){
          String nome = request.getParameter("nome");
          session.setAttribute("nome", nome);
          String senha = request.getParameter("senha");
          session.setAttribute("senha", senha);
} else if (request.getParameter("desl")!=null){
    session.removeAttribute("nome");
    session.removeAttribute("senha");
}%> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login e Senha</title>
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
    style="background-image: url('https://mocah.org/thumbs/4562144-simple-simple-background-primary-colors-minimalism-geometry-abstract.png'); background-size:100% 100%; "
    >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-light">
          <h1 class="mb-3">Iniciar uma Sessão</h1>        
          <form>
              <% if((session.getAttribute("nome")==null) && (session.getAttribute("senha")==null)){%>
          <div class="input-group mb-3">
          <i class="fas fa-user fa-2x"></i>
          <input type="text" class="form-control" placeholder="Login " name="nome" aria-label="Login" aria-describedby="basic-addon1">
          </div>  
        <div class="input-group mb-3">
          <i class="fas fa-lock fa-2x"></i>
          <input type="password" class="form-control" placeholder="Digite uma senha" name= "senha" aria-label="Senha" aria-describedby="basic-addon1">
          </div>  
        <input 
            class="btn btn-outline-light btn-lg m-2"
            type='submit'
            name="autenticar"
            value="Login"
            role="button"
            />
        </hr> 
        <%}else {%>
        Bem Vindo!, <%= session.getAttribute("nome")%>
        <hr/>
        Seus números da sorte de hoje:<br>
        <%for(int i=1;i<=6;i++){%>
            <tr>
                <td><%= ((int)(100*Math.random())) %></td>
            </tr>
            <%}%>
        </table>   
        <br>
        <input 
            class="btn btn-outline-light btn-lg m-2"
            type='submit'
            name="desl"
            value="Deslogar"
            role="button"/>    
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

