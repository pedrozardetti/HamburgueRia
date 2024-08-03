<%@ page import="br.com.hamburgueria.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 8/2/2024
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
    <link rel="stylesheet" href="css/home.css">


</head>
<body>

<div class="container">
    <div class="header-container">
        <div class="options-container">
            <a href="home.jsp">Início</a>
            <a href="home?type=BURGERS">Cardápio</a>
            <a href="about.jsp">Quem somos</a>
            <a href="">
                <button>Fazer Login</button>
            </a>
        </div>
    </div>
    <div class="header-image">
        <img src="img/fundo-interna.jpg" alt="Imagem de fundo">
        <div class="cardapio">
            <h1><%= ((Product) request.getAttribute("product")).getName() %></h1>
        </div>
    </div>
    <div class="content-container">
        <div class="prod-description">
            <img src="" alt="">
            
        </div>

    </div>

</body>
</html>
