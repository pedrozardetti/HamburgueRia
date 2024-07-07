package br.com.hamburgueria.servlet;


import br.com.hamburgueria.model.Customer;
import br.com.hamburgueria.repository.customer.CustomerRepository;
import br.com.hamburgueria.security.Criptografia;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Esse método recebe os parâmetros do e-mail e senha;
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");

        // Instancia o objeto da classe CustomerRepository
        CustomerRepository customerRepository = new CustomerRepository();

        // Chama o método findCustomerByEmail para buscar o e-mail fornecido no cadastro em nosso BD.
        Customer customer = customerRepository.findCustomerByEmail(email);


        if (customer != null) {
            String senhaCriptografada = null;
            try {
                senhaCriptografada = Criptografia.converterParaMD5(senha);
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }

            // Se o cliente for encontrado, ele criptografa a senha fornecida pelo usuário para comparar com a senha do BD.
            if (customer.getPassword().equals(senhaCriptografada)) {

                // Se a senha for correta, ele é redirecionado para a home.
                req.getSession().setAttribute("user", customer);
                req.getSession().setAttribute("successMessage", "Login realizado com sucesso!");
                resp.sendRedirect("/home");
            } else {
                // Se a senha for incorreta, ele permanece no login!
                req.getSession().setAttribute("errorMessage", "Email ou senha incorretos!");
                resp.sendRedirect("/login");
            }
        } else {
            // Usuário não encontrado
            req.getSession().setAttribute("errorMessage", "Email ou senha incorretos!");
            resp.sendRedirect("/login");
        }
    }
}
