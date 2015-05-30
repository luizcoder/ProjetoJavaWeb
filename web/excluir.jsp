<jsp:useBean id="usuarios" class="app.Usuarios" />
<%-- 
    Document   : excluir
    Created on : 30/05/2015, 19:25:59
    Author     : Marcelo Beltrame
--%>
<%
    Boolean result = usuarios.excluir(request.getParameter("nome").toString());
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="head.html"%>
        <title>Exclusão - Gerenciamento de Usuário</title>
    </head>
    <body class="content text-center">
        <h1>Exclusão!</h1>
        
        
        <%
           if(!result){               
        %>
        Erro ao tentar excluir o usuário!</br></br><a class="btn btn-success" href="lista.jsp"> Voltar a lista e tentar novamente </a>
        <%
           }else{   
        %>
        Usuário excluido com sucesso!</br></br><a class="btn btn-success" href="lista.jsp"> Voltar a lista e tentar novamente </a>
        <%
            }
        %>
  
    </body>
</html>
