
import com.CritCulture.Dao.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

     @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

          String username = request.getParameter("username");
          String password = request.getParameter("password");

          LoginDao dao = new LoginDao();
          try {
               if (dao.check(username, password)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    session.setAttribute("password", password);
                    RequestDispatcher rd = request.getRequestDispatcher("MedData");
                    rd.forward(request, response);
               } else {
                    PrintWriter out = response.getWriter();
                    out.println("Invalid Credentials");
                    response.sendRedirect("login.jsp");
               }
          } catch (ClassNotFoundException | SQLException ex) {
               Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
          }
     }
}
