<%-- 
    Document   : my-history
    Created on : 13 de dez. de 2021, 15:33:31
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/boots.jspf" %>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>My History</title>
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
Aaa
       
</div>
    </body>
</html>
