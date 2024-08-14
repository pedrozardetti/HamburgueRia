package br.com.hamburgueria.servlet;


import br.com.hamburgueria.model.Product;
import br.com.hamburgueria.repository.product.ProductRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UUID id = UUID.fromString(req.getParameter("id"));

        // Buscar o produto no repositório
        Product product = new ProductRepository().findProductById(id);

        // Adicionar o produto ao request
        req.setAttribute("product", product);

        // Encaminhar para a página JSP
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }
}

