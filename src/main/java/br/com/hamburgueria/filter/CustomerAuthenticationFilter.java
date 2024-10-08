package br.com.hamburgueria.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// Filtro é aplicado em todas as requisições que o caminho começa com /admin/
@WebFilter("/customer-filter/*")
public class CustomerAuthenticationFilter implements Filter {

    // Inicializa o filtro. É chamado uma vez quando o filtro é criado e permite a config inicial
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    // Executa a lógica principal do filtro. É chamado para cada requisição que passa pelo filtro.
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        // Se o usuário estiver logado, irá repassar a requisição
        if (isUserLoggedOn(httpServletRequest)) {

            // Continua o fluxo de processamento da requisição
            chain.doFilter(servletRequest, response);

            // Se não estiver logado, ele irá para a página de login
        } else  {

            servletRequest.setAttribute("message", "User not authenticated!");

            httpServletResponse.sendRedirect("/login");
        }
    }

    // Limpa os recursos. É chamada uma vez quando o filtro está sendo removido.
    @Override
    public void destroy() {
    }

    private boolean isUserLoggedOn(HttpServletRequest httpServletRequest) {

        return httpServletRequest.getSession().getAttribute("user") != null;

    }

}
