package br.com.hamburgueria.servlet;

import br.com.hamburgueria.model.Customer;
import br.com.hamburgueria.model.Order;
import br.com.hamburgueria.model.OrderProduct;
import br.com.hamburgueria.model.Product;
import br.com.hamburgueria.repository.order.OrderRepository;
import br.com.hamburgueria.repository.orderproduct.OrderProductRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

@WebServlet("/customer-filter/order")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lógica da servlet
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();
        List<OrderProduct> cart = (List<OrderProduct>) httpSession.getAttribute("cart");
        UUID addressId = UUID.fromString(req.getParameter("selectedAddress").toString());


        UUID orderId = UUID.randomUUID();
        double maxPrice = 0;
        for (OrderProduct item : cart) {
            maxPrice += item.getPrice() * item.getQuantity();
        }
        Customer user = (Customer) httpSession.getAttribute("user");
        Order order = new Order(orderId, maxPrice, new Date(System.currentTimeMillis()), user.getId(), addressId);

        new OrderRepository().create(order);

        for (OrderProduct item : cart) {
            item.setOrderId(orderId);
            new OrderProductRepository().create(item);

        }

        httpSession.removeAttribute("cart");
        resp.sendRedirect("/home");
    }
}

