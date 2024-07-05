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
        <h5>${requestScope.failpassword}</h5>
        <form id="form" action="/cadastro" method="post">
            <div class="input-group">
                <label for="nome">Nome</label>
                <input type="text" id="nome" name="nome" placeholder="Insira o nome" class="inputs required" oninput="nameValidate()"/>
                <span class="span-required">O nome deve ter no mínimo 3 caracteres</span>
            </div>
            <div class="input-group">
                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" placeholder="Insira o e-mail" class="inputs required" oninput="emailValidate()"/>
                <span class="span-required">Digite um e-mail válido</span>
            </div>
            <div class="input-group">
                <label for="senha">Senha</label>
                <input type="password" id="senha" name="senha" placeholder="Insira a senha" class="inputs required" oninput="mainPasswordValidate()"/>
                <span class="span-required">Digite uma senha com no mínimo 8 caracteres</span>
            </div>
            <div class="input-group">
                <label for="confirmar-senha">Confirme a senha</label>
                <input type="password" id="confirmar-senha" name="confirmar-senha" placeholder="Confirme a senha" class="inputs required" oninput="comparePassword()"/>
                <span class="span-required">As senhas devem ser compatíveis</span>
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
<script>
    const form = document.getElementById('form');
    const campos = document.querySelectorAll('.required');
    const spans = document.querySelectorAll('.span-required');
    const emailRegex = /^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,})$/;

    form.addEventListener("submit", (event) => {
        event.preventDefault();
        nameValidate();
        emailValidate();
        mainPasswordValidate();
        comparePassword();
    });

    function setError(index) {
        campos[index].style.border = '2px solid #e63636';
        spans[index].style.display = 'block';
    }

    function removeError(index) {
        campos[index].style.border = '';
        spans[index].style.display = 'none';
    }


    function nameValidate() {
        if (campos[0].value.length < 3) {
            setError(0);
        } else {
            removeError(0);
        }
    }

    function emailValidate() {
        if (!emailRegex.test(campos[1].value)) {
            setError(1);
        } else {
            removeError(1);
        }
    }

    function mainPasswordValidate() {
        if (campos[2].value.length < 8) {
            setError(2);
        } else {
            removeError(2);
            comparePassword();
        }
    }

    function comparePassword() {
        if (campos[2].value == campos[3].value && campos[3].value.length >= 8) {
            removeError(3);
        } else {
            setError(3);
        }
    }

</script>
</html>

