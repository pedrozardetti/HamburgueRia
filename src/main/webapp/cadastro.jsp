<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 7/1/2024
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cadastro</title>
    <link rel="stylesheet" href="css/cadastro.css">
</head>
<body>

<div class="container">
    <div class="form-container">
        <div class="logo">
            <h1>Cadastre-se!</h1>
        </div>
        <form action="/cadastro" method="post">
            <div class="input-group">
                <label for="nome">Nome</label>
                <input type="text" id="nome" name="nome" placeholder="Insira o nome" required/>
            </div>
            <div class="input-group">
                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" placeholder="Insira o e-mail" required/>
            </div>
            <div class="input-group">
                <label for="senha">Senha</label>
                <input type="password" id="senha" name="senha" placeholder="Insira a senha" required/>
            </div>
            <div class="input-group">
                <label for="confirmar-senha">Confirme a senha</label>
                <input type="password" id="confirmar-senha" name="confirmar-senha" placeholder="Confirme a senha" required/>
            </div>
            <div class="input-group">
                <button type="submit">Cadastrar</button>
            </div>
        </form>
    </div>
    <div class="image">
    </div>
</div>

</body>
</html>

