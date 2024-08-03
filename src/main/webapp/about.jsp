<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 7/30/2024
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quem Somos</title>
    <link rel="stylesheet" href="css/about.css">


</head>
<body>

<div class="container">
    <div class="header-container">
        <div class="options-container">
            <a href="home?type=BURGERS">Início</a>
            <a href="home?type=BURGERS">Cardápio</a>
            <a href="about">Quem somos</a>
            <a href="">
                <button>Fazer Login</button>
            </a>
        </div>
    </div>
    <div class="header-image">
        <img src="img/fundo-interna.jpg" alt="Imagem de fundo">
        <div class="cardapio">
            <h1>HAMBURGU&RIA</h1>
        </div>
    </div>
    <div class="content-container">
        <div class="about-us">
            <img src="img/about-us.png" alt="Hambúrguer da página principal">
            <div class="about-container">
                <h3 class="titulo-principal">Hamburgu&Ria</h3>
                <h2>CONHEÇA NOSSA HISTÓRIA</h2>
                <p>Tudo começou com Pedro Zardetti, um apaixonado por gastronomia que, em suas viagens e aventuras culinárias, sempre reunia seus amigos Lucas, Gustavo e Gabriel para experimentar novas receitas de hambúrgueres aos finais de semana. Pedro, conhecido como o “Maestro” dos hambúrgueres, encantava os amigos com suas criações únicas e saborosas.</p>
                <p>Foi em um desses encontros, em uma noite especial em São Paulo, que o sonho de transformar essa paixão em um negócio começou a ganhar vida. Em 2023, após muitos testes e degustações, os amigos decidiram investir na primeira unidade da Hamburgu&Ria, localizada no coração de São Paulo.</p>
                <p>Com uma recepção calorosa e clientes encantados pela qualidade e inovação dos hambúrgueres, a Hamburgu&Ria logo se destacou no cenário gastronômico paulistano. A confiança no sucesso era tanta que, ainda no primeiro semestre de 2015, a segunda loja foi inaugurada. A partir daí, a expansão foi inevitável.</p>
                <p>Hoje, a Hamburgu&Ria é um nome consagrado, com 17 unidades espalhadas por seis estados brasileiros, sempre mantendo o compromisso com a excelência e a qualidade que conquistaram nossos clientes desde o início. Cada hambúrguer é uma celebração de sabor, fruto da dedicação de Pedro, Lucas, Gustavo e Gabriel, que continuam a inovar e surpreender a cada mordida.</p>
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

</body>
</html>
