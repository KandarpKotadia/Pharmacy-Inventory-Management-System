
import java.io.IOException;
import java.sql.Connection;
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

@WebServlet(urlPatterns = {"/EditMedicine"})
public class EditMedicine extends HttpServlet {

     @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

          try {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "");
               PreparedStatement ps = con.prepareStatement("update inventory set medicine_id = ?, medicine_name = ?, medicine_company=?, arrival_date=?, expiry_date=?, type=?, quantity=?, price=? where medicine_id = ?");

               int id = Integer.parseInt(request.getParameter("editId"));
               String medName = request.getParameter("medName");
               String medComp = request.getParameter("medComp");
               String arriDate = request.getParameter("arrDate");
               String expDate = request.getParameter("expDate");
               String type = request.getParameter("type");
               int quantity = Integer.parseInt(request.getParameter("quantity"));
               int price = Integer.parseInt(request.getParameter("price"));
               int medId = medName.hashCode();
               if (medId < 0) {
                    medId *= -1;
               }

               ps.setInt(1,medId);
               ps.setString(2, medName);
               ps.setString(3, medComp);
               ps.setString(4, arriDate);
               ps.setString(5, expDate);
               ps.setString(6, type);
               ps.setInt(7, quantity);
               ps.setInt(8, price);
               ps.setInt(9, id);
               ps.executeUpdate();

          } catch (ClassNotFoundException | SQLException ex) {
               Logger.getLogger(EditMedicine.class.getName()).log(Level.SEVERE, null, ex);
          }

          response.sendRedirect("MedData");
     }
}
