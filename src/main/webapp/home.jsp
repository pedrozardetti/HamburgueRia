<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 7/18/2024
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="css/home.css">


</head>
<body>

<div class="container">
    <div class="header-container">
        <div class="options-container">
            <a href="">Início</a>
            <a href="">Cardápio</a>
            <a href="">Quem somos</a>
            <a href="">
                <button>Fazer Login</button>
            </a>
        </div>
    </div>
    <div class="header-image">
        <img src="img/fundo-interna.jpg" alt="Imagem de fundo">
        <div class="cardapio">
            <h1>CARDÁPIO</h1>
        </div>
    </div>
    <div class="content-container">

        <div class="types-container">
            <a href="/home?type=BURGERS" class="${typeSelected == 'BURGUERS' ? 'active' : ''}">
                BURGERS
            </a>
            <a href="/home?type=BEBIDAS" class="${typeSelected == 'BEBIDAS' ? 'active' : ''}">
                BEBIDAS
            </a>
            <a href="/home?type=SOBREMESAS" class="${typeSelected == 'SOBREMESAS' ? 'active' : ''}">
                SOBREMESAS
            </a>
            <a href="/home?type=PORCOES" class="${typeSelected == 'PORCOES' ? 'active' : ''}">
                PORÇÕES
            </a>

        </div>
        <div class="burger-container">
            <!-- Exibir produtos dinamicamente -->
            <c:forEach var="product" items="${products}">
                <div class="burger-item">

                    <img src="${product.url}" alt="${product.name}">
                </div>
            </c:forEach>
        </div>
    </div>

    <footer class="footer-container">
        <div class="inst-col">
            <span class="inst-title">INSTITUCIONAL</span>
            <ul>
                <li>Quem Somos</li>
                <li>Cardápio</li>
                <li>Fazer Login</li>
            </ul>
        </div>
        <div class="inst-col">
            <span class="card-title">CARDÁPIO</span>
            <ul>
                <li>Burgers</li>
                <li>Bebidas</li>
                <li>Sobremesas</li>
                <li>Porções</li>
            </ul>
        </div>
    </footer>
    <div class="footer-rights">
        <span>Hamburgu&Ria 2024 - Todos os direitos reservados</span>
    </div>
    <div class="footer-about">
        <span>Todas as imagens são meramente ilustrativas. A Hamburgu&Ria é uma rede de franquias especializada em
            Hambúrgueres com sabores especias como o de <br> Costela, Salmão, Duplo Bacon e entre outros. Devore na
            unidade mais próxima de você! </span>
    </div>
</div>


</body>
</html>
