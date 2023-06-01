package com.CritCulture.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
     
     public boolean check(String username ,String password) throws ClassNotFoundException, SQLException{
          String url = "jdbc:mysql://localhost:3306/inventory";
          
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, "root", "");
          
          PreparedStatement stmt = con.prepareStatement("select * from admin_login where username=? and password=?");
          stmt.setString(1, username);
          stmt.setString(2, password);
          
          ResultSet rs = stmt.executeQuery();
          
          if(rs.next())return true;
          else return false;
     }

}
