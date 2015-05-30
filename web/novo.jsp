<jsp:useBean id="usuarios" class="app.Usuarios" />
<%-- 
    Document   : novo
    Created on : 30/05/2015, 19:10:16
    Author     : Marcelo Beltrame
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="head.html"%>
        <title>Página Principal - Gerenciamento de Usuário</title>
    </head>
    <body class="content formulario-cadastro">
        <h3>Cadastrar usuário</h3>
        <form method="post" action="cadastrar.jsp">
            <div class="form-group">
              <label>Nome</label>
              <input name="nome" type="text" class="form-control" placeholder="Digite o nome completo">
            </div>
            <div class="form-group">
              <label>Login</label>
              <input name="login" type="text" class="form-control" placeholder="Digite o login">
            </div>   
            <div class="form-group">
              <label>Senha</label>
              <input name="senha" type="pasword" class="form-control">
            </div>  
            <div class="form-group">
              <label>Data de admissão</label>
              <input name="admissao" type="date" class="form-control">
            </div>  
            <div class="form-group">
              <label>Status</label>
              <select name="status" class="form-control">
                  <option value="1">Ativo</option>
                  <option value="0"> Inativo </option>
                  
              </select>            
            </div>              
           
            <button type="submit" class="btn btn-success">Salvar</button>
            <a href="index.jsp" class="btn btn-danger">Cancelar e voltar ao inicio</button>

        </form>
    </body>
</html>
