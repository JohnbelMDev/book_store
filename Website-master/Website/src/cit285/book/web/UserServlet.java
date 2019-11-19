package cit285.book.web;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cit285.book.dao.Userdao;
import cit285.book.domain.User;


/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Userdao userDao;

    public void init() {
        userDao = new Userdao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");

        User user = new User();
        user.setFirstname(firstName);
        user.setLastname(lastName);
        user.setUsername(username);
        user.setPassword(password);

        try {
            userDao.registerEmployee(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("userDetails.jsp");
    }
}