package modelServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<User> users = new ArrayList<>();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String email = request.getParameter("email");
        
        // Validation des paramètres du champ côté serveur
        if (nom == null || nom.trim().isEmpty() || email == null || email.trim().isEmpty()) {
            response.sendRedirect("error.jsp");
            return;
        }
        // creation d'un objet puis ajout à la liste
        User user = new User(nom, email);
        users.add(user);
        // récuperer la session de l’utilisateur actuel (dans le navigateur) si elle existe sinon en crée une nouvelle
        HttpSession session = request.getSession();
        // stocker l’objet user dans la session sous le nom "user"
        session.setAttribute("user", user);
        // stocker toute la liste des utilisateurs (List<User>) dans la session, sous le nom "usersList".
        session.setAttribute("usersList", users);
        // redirection vers la page UserDetails
        response.sendRedirect("UserDetails.jsp");
    }
}