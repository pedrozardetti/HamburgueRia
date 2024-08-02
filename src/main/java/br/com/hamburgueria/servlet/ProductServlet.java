package br.com.hamburgueria.servlet;


import br.com.hamburgueria.model.Product;
import br.com.hamburgueria.repository.product.ProductRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");

        Product product = new ProductRepository().findProductById(id);
        
        System.out.println(product.getName());
    }
}
