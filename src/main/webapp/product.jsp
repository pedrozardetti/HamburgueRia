<%@ page import="br.com.hamburgueria.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 8/2/2024
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product</title>
    <link rel="stylesheet" href="css/product.css">


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
                        <a href="cart.jsp">
                            <img src="img/shopping-cart%20(2).png" alt="Imagem do carrinho de compras">
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a class="login-button" href="/login">
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
            <h1><%= ((Product) request.getAttribute("product")).getName() %>
            </h1>
        </div>
    </div>

    <div class="content-container">
        <c:set var="product" value="${requestScope.product}" />
        <div class="prod-img">
            <img src="${product.url}" alt="">
            <div class="about-container">
                <h3 class="type-product">${product.type}
                </h3>
                <h2 class="name-product">${product.name}
                </h2>
                <h3 class="price-product">R$ ${product.price}
                </h3>
                <p>${product.description}</p>
                <form action="/customer-filter/order-product" method="post" >
                <input class="quantity-form" name="quantity" type="text" placeholder="Qtd." required/>
                <input name="product_id" type="hidden" value="${product.id}"/>
                    <input name="price" type="hidden" value="${product.price}"/>

                <button class="add-cart" type="submit">
                    Adicionar ao Carrinho
                </button>
                </form>
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
