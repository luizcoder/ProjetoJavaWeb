<jsp:useBean id="usuarios" class="app.Usuarios" />

<%-- 
    Document   : index.jsp
    Created on : 30/05/2015, 16:02:27
    Author     : Marcelo Beltrame
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="head.html"%>
        <title>Lista - Gerenciamento de Usuário</title>
    </head>
    <body class="content lista">
        <h1>Lista de usuários</h1>
        <a class="btn btn-success" href="novo.jsp">Novo</a> <a href="index.jsp" class=" btn btn-danger"> Voltar ao inicio</a>

        </br>
        </br>
        <table class="table table-bordered"> 
            <thead>
                <tr> 
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Login</th>
                    <th>Data de Admissão</th>
                    <th>Status</th>
                    <th></th>
                    
                </tr>
            </thead>
            <tbody>
        <%

            String[][] lista = usuarios.listarUsuarios();
 
            for(int i = 0; i < lista.length; i++){
                out.println("<tr>");
                out.println("<td> " + lista[i][0] + "</td>");
                out.println("<td> " + lista[i][1] + "</td>");  
                out.println("<td> " + lista[i][2] + "</td>");                               
                out.println("<td> " + lista[i][4] + "</td>");
                String status = "Ativo";
                if(Integer.parseInt(lista[i][5]) == 0 )
                    status = "Inativo";
                
                out.println("<td> " + status + "</td>");                

                out.println("<td> <a href='alteracao.jsp?id=" + lista[i][0] + "'> Alterar </a>/<a href='excluir.jsp?id=" + lista[i][0] + "'> Excluir </a></td>");
                out.println("</tr>");

            }
                
        %>
            </tbody>
        </table>
    </body>
</html>
