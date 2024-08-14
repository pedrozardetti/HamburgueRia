package br.com.hamburgueria.servlet;

import br.com.hamburgueria.model.Address;
import br.com.hamburgueria.model.Customer;
import br.com.hamburgueria.model.OrderProduct;
import br.com.hamburgueria.model.Product;
import br.com.hamburgueria.repository.address.AddressRepository;
import br.com.hamburgueria.repository.product.ProductRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Customer user = (Customer) session.getAttribute("user");
        List<Address> addresses = new AddressRepository().findAllAddressByCustomerId(user.getId());

        req.setAttribute("addresses", addresses);
        List<OrderProduct> cart = (List<OrderProduct>) session.getAttribute("cart");
        List<Product> products = new ArrayList<>();
        ProductRepository productRepository = new ProductRepository();
        for (OrderProduct item : cart) {
            Product product = productRepository.findProductById(item.getProductId());
            products.add(product);
        }
        req.setAttribute("productsCart", products);

        req.getRequestDispatcher("/cart.jsp").forward(req, resp);

    }
}
