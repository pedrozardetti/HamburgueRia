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
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="container">
    <div class="image">
        <img src="img/BurgerLogin.png" alt="Hamburguer Gigante"/>
    </div>
    <div class="form-container">
        <div class="logo">
           <h1>Boas-vindas!</h1>
        </div>
        <form action="/login" method="post">
            <div class="input-group">
                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" placeholder="Insira o e-mail" required/>
            </div>
            <div class="input-group">
                <label for="senha">Senha</label>
                <input type="password" id="senha" name="senha" placeholder="Insira a senha" required/>
                <span class="inline-text">
                    <span class="gray-text">ou </span>
                    <span class="highlight-text">cadastre-se</span>
                </span>
            </div>
            <div class="input-group">
                <button type="submit">Sign in</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>

