<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 8/6/2024
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Carrinho</title>
    <link rel="stylesheet" href="css/cart.css">
</head>
<body>
<div class="container">
    <div class="header-container">
        <div class="options-container">
            <a href="home?type=BURGERS">Início</a>
            <a href="home?type=BURGERS">Cardápio</a>
            <a href="about.jsp">Quem somos</a>
            <c:set var="user" value="${sessionScope.user}"/>
            <c:choose>
                <c:when test="${user != null}">
                    <a href="/cart">
                        <img src="img/shopping-cart%20(2).png" alt="Imagem do carrinho de compras">
                    </a>
                </c:when>
                <c:otherwise>
                    <a href="/login">
                        <button>
                            Fazer Login
                        </button>
                    </a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <div class="content-container">
        <div>
            <h1>Meu Carrinho</h1>
            <div class="draw-line"></div>
        </div>
        <div class="cart-container">
            <div class="prod-row">
                <div class="prod-column">
                    <span class="prod-type">Burgers</span>
                    <span class="prod-name">BBQ Burger</span>
                    <span class="prod-description">Pão Australiano, Maionese de Alho, Hambúrguer de Costela, Queijo Coalho, Molho Barbecue, Picles.</span>
                    <span class="prod-price">Preço unitário: R$11.49</span>
                </div>
                <img src="img/trash-2.png" alt="Botão de deletar">
            </div>
            <div class="prod-row">
                <div class="prod-column">
                    <span class="prod-type">Porções</span>
                    <span class="prod-name">Onion Rings</span>
                    <span class="prod-description">Anéis de Cebola Empanados, Molho Barbecue.</span>
                    <span class="prod-price">Preço unitário: R$4.29</span>
                </div>
                <img src="img/trash-2.png" alt="Botão de deletar">
            </div>
            <div class="prod-row">
                <div class="prod-column">
                    <span class="prod-type">Sobremesas</span>
                    <span class="prod-name">Brownie com sorvete</span>
                    <span class="prod-description">Combinação de brownie de Doce de Leite ou Nutella, com sorvete de creme e calda de chocolate.</span>
                    <span class="prod-price">Preço unitário: R$19.45</span>
                </div>
                <img src="img/trash-2.png" alt="Botão de deletar">
            </div>
        </div>
        <div class="address-container">
            <h1 class="address-title">Endereço</h1>
            <div class="address-list">
                <div class="address-content">
                    <img src="img/task.png" alt="Selected">
                    <span>Estrada do Campo Limpo, 560 - 05777-000 <br> Bloco D2 Apto 33</span>
                </div>
            </div>
            <div class="newaddress-container">
                <h1 class="add-address">Adicionar Endereço <img src="img/add%20(4).png" alt="Adicionar"></h1>
            </div>
        </div>
        <div class="price-container">
            <span>Subtotal</span>
            <span class="subtotal-content">R$35.23</span>

        </div>
    </div> <!-- Fecha content-container -->

    <div class="footer-container">
        <div class="footer-rights">
            <span>Hamburgu&Ria 2024 - Todos os direitos reservados</span>
        </div>
        <div class="footer-about">
            <span>Todas as imagens são meramente ilustrativas. A Hamburgu&Ria é uma rede de franquias especializada em
                Hambúrgueres com sabores especias como o de <br> Costela, Salmão, Duplo Bacon e entre outros. Devore na
                unidade mais próxima de você! </span>
        </div>
    </div> <!-- Fecha footer-container -->
</div> <!-- Fecha container -->
</body>
</html>
