<%-- 
    Document   : about
    Created on : 20/09/2021, 18:36:21
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/bootstrap-head.jspf" %>
<%@include file="WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>
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
          <ul class="list-unstyled">
              <li><p class="text-light bg-dark"><strong>Nome: </strong>André Luis Rosa Mastrocola</p></li>
              <li><p class="text-light bg-dark"><strong>RA:</strong>1290482012004</p></li>
              <li><p class="text-light bg-dark"><a href="https://github.com/andrelu1/Java"><strong>Meu Github</strong></a></p></li>
          </ul>
          
    </div>
  </div>
</div>   
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</header>
</html>
