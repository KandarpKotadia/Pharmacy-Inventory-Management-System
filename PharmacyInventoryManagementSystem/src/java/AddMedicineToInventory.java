
import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Add")
public class AddMedicineToInventory extends HttpServlet {

     @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
          
          String medName = request.getParameter("medName");
          int medId = medName.hashCode();
          if (medId < 0) {
               medId *= -1;
          }
          String medComp = request.getParameter("medComp");
          String arriDate = request.getParameter("arrDate");
          String expDate = request.getParameter("expDate");
          String type = request.getParameter("type");
          int quantity = Integer.parseInt(request.getParameter("quantity"));
          int price = Integer.parseInt(request.getParameter("price"));
          
          try {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/inventory", "root", "");
               
               PreparedStatement ps = con.prepareStatement("insert into inventory (medicine_id, medicine_name, medicine_company, arrival_date, expiry_date, type, quantity, price) values(?, ?, ?, ?, ?, ?, ?, ?)");
               
               ps.setInt(1, medId);
               ps.setString(2, medName);
               ps.setString(3, medComp);
               ps.setString(4, arriDate);
               ps.setString(5, expDate);
               ps.setString(6, type);
               ps.setInt(7, quantity);
               ps.setInt(8, price);
               ps.executeUpdate();
               
          } catch (ClassNotFoundException | SQLException ex) {
               Logger.getLogger(AddMedicineToInventory.class.getName()).log(Level.SEVERE, null, ex);
          }
          
          response.sendRedirect("MedData");
     }
}
