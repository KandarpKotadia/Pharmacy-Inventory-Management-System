
import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/DeleteMed"})
public class DeleteMed extends HttpServlet {

     protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
          String name = request.getParameter("deleteMed");

          try {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/inventory", "root", "");

               PreparedStatement ps = con.prepareStatement("delete from inventory where medicine_name = ?");
               ps.setString(1, name);
               ps.executeUpdate();
               
          } catch (ClassNotFoundException |SQLException ex) {
               Logger.getLogger(DeleteMed.class.getName()).log(Level.SEVERE, null, ex);
          }
          response.sendRedirect("MedData");
     }
}
