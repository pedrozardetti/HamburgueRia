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
            <h1><%= ((Product) request.getAttribute("product")).getName() %>
            </h1>
        </div>
    </div>
    <div class="content-container">
        <div class="prod-img">
            <img src="<%= ((Product) request.getAttribute("product")).getUrl() %>" alt="">
            <div class="about-container">
                <h3 class="type-product"><%= ((Product) request.getAttribute("product")).getType() %>
                </h3>
                <h2 class="name-product"><%= ((Product) request.getAttribute("product")).getName() %>
                </h2>
                <p>Pão da Casa, Maionese Verde, Hambúrguer, Queijo Muçarela, Queijo Brie, Geleia de Pimenta e
                    Rúcula.</p>
            </div>

        </div>
    </div>

    <footer class="footer-container">
        <div class="inst-col">
            <span class="inst-title">INSTITUCIONAL</span>
            <ul>
                <li><a href="about">Quem Somos</a></li>
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
</div>
</div>

</body>
</html>
