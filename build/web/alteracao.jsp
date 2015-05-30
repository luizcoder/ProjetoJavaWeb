<jsp:useBean id="usuarios" class="app.Usuarios" />
<%-- 
    Document   : alteracar
    Created on : 30/05/2015, 19:10:16
    Author     : Marcelo Beltrame
--%>
<%
    
String[][] usuario = usuarios.obterUsuario(Integer.parseInt(request.getParameter("id").toString()));


    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="head.html"%>
        <title>Alterar usuário - Gerenciamento de Usuário</title>
    </head>
    <body class="content formulario-cadastro">
        <h3>Alterar usuário</h3>
        <form method="post" action="alterar.jsp">
            <input value="<%=usuario[0][0]%>" type="hidden" name="id"/>
            <div class="form-group">
              <label>Nome</label>
              <input value="<%=usuario[0][1]%>" name="nome" type="text" class="form-control" placeholder="Digite o nome completo">
            </div>
            <div class="form-group">
              <label>Login</label>
              <input value="<%=usuario[0][2]%>" name="login" type="text" class="form-control" placeholder="Digite o login">
            </div>   
            <div class="form-group">
              <label>Senha</label>
              <input value="<%=usuario[0][3]%>" name="senha" type="pasword" class="form-control">
            </div>  
            <div class="form-group">
              <label>Data de admissão</label>
              <input value="<%=usuario[0][4]%>" name="admissao" type="date" class="form-control">
            </div>  
            <div class="form-group">
              <label>Status</label>
              <select name="status" class="form-control">
                  <option value="1" <%if(usuario[0][5] == "1"){out.println("selected");}%>>Ativo</option>
                  <option value="0" <%if(usuario[0][5] == "0"){out.println("selected");}%>> Inativo </option>
                  
              </select>            
            </div>              
           
            <button type="submit" class="btn btn-success">Salvar alterações</button>
            <a href="lista.jsp" class="btn btn-danger">Cancelar e voltar a lista</a>

        </form>
    </body>
</html>
