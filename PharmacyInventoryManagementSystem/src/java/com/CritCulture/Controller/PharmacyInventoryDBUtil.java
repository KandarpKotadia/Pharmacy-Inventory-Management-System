package com.CritCulture.Controller;

import com.CritCulture.Model.Med;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PharmacyInventoryDBUtil {

     public static List<Med> getMedList() throws ClassNotFoundException, SQLException {
          ArrayList<Med> meds = new ArrayList<>();

          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select * from inventory");

          while (rs.next()) {
               int id = rs.getInt("medicine_id");
               String name = rs.getString("medicine_name");
               String company = rs.getString("medicine_company");
               String type = rs.getString("type");
               int price = rs.getInt("price");

               Med med = new Med(id, name, company, type, price);
               meds.add(med);
          }

          return meds;
     }

}
