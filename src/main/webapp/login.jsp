<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 6/29/2024
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <div class="image">
        <img src="img/LoginImage.png" alt="Hamburguer Gigante"/>
    </div>
    <div class="form-container">
        <div class="logo">
            <img src="img/Logo.png" alt="Logo da Hamburgueria"/>
        </div>
        <form action="/login" method="post">
            <div class="input-group">
                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" placeholder="Insira o e-mail" required/>
            </div>
            <div class="input-group">
                <label for="senha">Senha</label>
                <input type="Senha" id="senha" name="senha" placeholder="Insira a senha" required/>
                <span>ou cadastre-se</span>
            </div>
            <div class="input-group">
                <button type="submit">Sign in</button>
            </div>
        </form>
    </div>

</div>


</body>
</html>
