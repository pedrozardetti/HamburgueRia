package br.com.hamburgueria.servlet;

import br.com.hamburgueria.model.OrderProduct;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@WebServlet("/customer-filter/order-product")
public class OrderProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/cart.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<OrderProduct> cart = (List<OrderProduct>) session.getAttribute("cart");

        int quantity = Integer.parseInt(req.getParameter("quantity"));
        UUID productId = UUID.fromString(req.getParameter("product_id"));
        double price = Double.parseDouble(req.getParameter("price"));

        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }

        OrderProduct orderProduct = new OrderProduct();
        orderProduct.setQuantity(quantity);
        orderProduct.setProductId(productId);
        orderProduct.setId(UUID.randomUUID());
        orderProduct.setPrice(price);

        cart.add(orderProduct);

        System.out.println(cart.toString());

        resp.sendRedirect("/home");
    }


}
