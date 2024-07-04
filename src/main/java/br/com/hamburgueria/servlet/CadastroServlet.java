package br.com.hamburgueria.servlet;


import br.com.hamburgueria.model.Customer;
import br.com.hamburgueria.model.enums.TypeCustomer;
import br.com.hamburgueria.repository.customer.CustomerRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("cadastro.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nome = req.getParameter("nome");

        String email = req.getParameter("email");

        String senha = req.getParameter("senha");

        String confirmar_senha = req.getParameter("confirmar-senha");

        boolean confirmPassword = senha.equalsIgnoreCase(confirmar_senha);

        if (confirmPassword) {
            try {
                Customer customer = new Customer(nome, email, senha, TypeCustomer.CLIENTE);
                new CustomerRepository().createCustomer(customer);
                req.setAttribute("success", "O usuário foi cadastrado com sucesso!");
                resp.sendRedirect("/login");
                return;


            } catch (Exception e) {
                req.setAttribute("fail", "Não foi possível realizar o cadastro!");
                req.getRequestDispatcher("cadastro.jsp").forward(req, resp);
                return;
            }

        }
        req.setAttribute("failpassword", "As senhas não são iguais!");
        req.getRequestDispatcher("cadastro.jsp").forward(req, resp);
    }
}
