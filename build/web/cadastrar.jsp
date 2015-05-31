<jsp:useBean id="usuarios" class="app.Usuarios" />
<%-- 
    Document   : cadastrar
    Created on : 30/05/2015, 19:25:59
    Author     : Marcelo Beltrame
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="head.html"%>
        <title>Cadastro - Gerenciamento de Usuário</title>
    </head>
    <body class="content text-center">
        <h1>Cadastro!</h1>
        
        
        <%
           String[] usuario = new String[6];
           usuario[0] = null;
           usuario[1] = request.getParameter("nome").toString();
           usuario[2] = request.getParameter("login").toString();
           usuario[3] = request.getParameter("senha").toString();
           usuario[4] = request.getParameter("admissao").toString();
           usuario[5] = request.getParameter("status").toString();

           
           Boolean result = usuarios.cadastrar(usuario);
           
           if(result){               
               out.println("Usuário cadastrado com sucesso!");
        %>
        </br></br><a class="btn btn-success" href="lista.jsp"> Voltar a lista </a>
        <%

           }else{
               out.println("Houve um erro ao cadastrar o usuário Tente novamente!");
        %>
        </br></br><a class="btn a classbtn-success" href="javascript:window.history.back()"> Voltar e tentar novamente </a>
        <%
           }
        %>
        
    </body>
</html>
