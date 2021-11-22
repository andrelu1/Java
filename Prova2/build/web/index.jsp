<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 15:36:01
    Author     : rlarg
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page import="web.Andre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try{
        if(request.getParameter("add")!=null){
            String taskName = request.getParameter("taskName");
            String taskID = request.getParameter("taskID");
            String taskTitle = request.getParameter("taskTitle");            
            Tasks.addTask(taskName);
            Tasks.addTask(taskID);
            Tasks.addTask(taskTitle);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove")!=null){
            String taskName = request.getParameter("taskName");
            String taskID = request.getParameter("taskID");
            String taskTitle = request.getParameter("taskTitle"); 
            Tasks.removeTask(taskName);
            Tasks.removeTask(taskID);
            Tasks.removeTask(taskTitle);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = Tasks.getTasks();
    }catch(Exception ex){
        requestException = ex;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P2 - André Luis</title>     
    </head>
    
    <body>
        <%@include file="WEB-INF/jspf/boots.jspf" %>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Bem Vindo ao meu DB</h2>
        <%if(authUserName==null ){%>
        <p style="color: red">Você não tem permissão para ver este conteúdo</p>
         <%}else{%>
        <h3>Tarefas</h3>
        <form>
            <input type="text" name="taskName"/>
             <input type="text" name="taskID"/>
              <input type="text" name="taskTitle"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        <table>
            <%for(String taskName: taskList){%>
            <%for(String taskID: taskList){%>
            <%for(String taskTitle: taskList){%>
            <tr>
                <td><%= taskName %></td>
                <td><%= taskID %></td>
                 <td><%= taskTitle %></td>
                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName %>"/>
                        <input type="hidden" name="taskID" value="<%= taskID %>"/>
                        <input type="hidden" name="taskTitle" value="<%= taskTitle %>"/>
                        <input type="submit" name="remove" value="-"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
     <%}%>
    </body>
</html>
