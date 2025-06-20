package modelServlet;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class FiltreServlet implements Filter {

    public void init(FilterConfig fConfig) throws ServletException {
        // Initialisation si nécessaire
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
            throws IOException, ServletException {
        String path = ((javax.servlet.http.HttpServletRequest) request).getRequestURI();
        System.out.println("Requête interceptée : " + path);
        
        chain.doFilter(request, response);
    }

    public void destroy() {
        // Nettoyage si nécessaire
    }
}