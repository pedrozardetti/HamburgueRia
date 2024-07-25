package br.com.hamburgueria.servlet;

import br.com.hamburgueria.model.Product;
import br.com.hamburgueria.repository.product.ProductRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = req.getParameter("type");
        if (type == null) {
            type = "BURGERS";
        }
        List<Product> products = new ProductRepository().findProductByType(type);

        req.setAttribute("products", products);
        req.setAttribute("typeSelected", type);



        req.getRequestDispatcher("home.jsp").forward(req, resp);
    }


}
