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
            <a href="home?type=BURGERS">Início</a>
            <a href="home?type=BURGERS">Cardápio</a>
            <a href="about.jsp">Quem somos</a>
            <a href="">
                <c:set var="user" value="${sessionScope.user}" />
                <c:choose>
                    <c:when test="${user != null}">
                        <span>Logado</span>
                    </c:when>
                    <c:otherwise>
                        <a href="/login">
                            <button>
                                Fazer Login
                            </button>
                        </a>
                    </c:otherwise>
                </c:choose>
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
            <a href="/home?type=BURGERS" class="${typeSelected == 'BURGERS' ? 'active' : ''}">
                <img src="${typeSelected == 'BURGERS' ? 'img/icone-burgers-hover.png' : 'img/icone-burgers.png'}"
                     class="icon-burger"/>
                BURGERS
            </a>
            <a href="/home?type=BEBIDAS" class="${typeSelected == 'BEBIDAS' ? 'active' : ''}">
                <img src="${typeSelected == 'BEBIDAS' ? 'img/icone-bebidas-hover.png' : 'img/icone-bebidas.png'}"
                     class="icon-bebidas"/>
                BEBIDAS
            </a>
            <a href="/home?type=SOBREMESAS" class="${typeSelected == 'SOBREMESAS' ? 'active' : ''}">
                <img src="${typeSelected == 'SOBREMESAS' ? 'img/icone-sobremesas-hover.png' : 'img/icone-sobremesas.png'}"
                     class="icon-sobremesas"/>
                SOBREMESAS
            </a>
            <a href="/home?type=PORCOES" class="${typeSelected == 'PORCOES' ? 'active' : ''}">
                <img src="${typeSelected == 'PORCOES' ? 'img/icone-porcoes-hover.png' : 'img/icone-porcoes.png'}"
                     class="icon-porcoes"/>
                PORÇÕES
            </a>

        </div>
        <div class="burger-container">
            <!-- Exibir produtos dinamicamente -->
            <c:forEach var="product" items="${products}">
                <form action="/product" method="get" class="burger-form">
                    <input name="id" type="hidden" value="${product.id}">
                    <div class="burger-item" onclick="this.parentNode.submit();">
                        <img src="${product.url}" alt="${product.name}">
                    </div>
                </form>
            </c:forEach>
        </div>

    </div>

    <footer class="footer-container">
        <div class="inst-col">
            <span class="inst-title">INSTITUCIONAL</span>
            <ul>
                <li><a href="about.jsp">Quem Somos</a></li>
                <li><a href="home?type=BURGERS">Cardápio</a></li>
                <li>Fazer Login</li>
            </ul>
        </div>
        <div class="inst-col">
            <span class="card-title">CARDÁPIO</span>
            <ul>
                <li><a href="home?type=BURGERS">Burgers</a></li>
                <li><a href="home?type=BEBIDAS">Bebidas</a></li>
                <li><a href="home?type=SOBREMESAS">Sobremesas</a></li>
                <li><a href="home?type=PORCOES">Porções</a></li>
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
