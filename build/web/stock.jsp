<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Stocks</title>

          <script src="https://kit.fontawesome.com/186f659f91.js" crossorigin="anonymous"></script>

          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

     </head>
     <body style="margin: 0px">
          <%
               response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
               if (session.getAttribute("username") == null) {
                    response.sendRedirect("login.jsp");
               }
          %>

          <div class="container-fluid" style="padding: 0">
               <div class="row navigation-bar" style="background-color: #ccffcc">
                    <div class="col-md-3">
                         <div style="padding-left: 50px">
                              <img alt="logo" src="logo.png" style="display: inline-block;padding-bottom: 20px" width="40px">
                              <p style="padding-top: 10px;font-size: 30px;font-weight: bolder;color: black;display: inline-block;margin: 0">
                                   PHARMACY
                              </p>
                         </div>

                    </div>
                    <div class="col-md-7"></div>
                    <div class="col-md-2" style="padding: 0">
                         <p style="margin-top: 11px;font-size: 15px;color: black;padding-top: 10px;padding-left: 70px">
                              <i class="fas fa-user-circle" style="padding-right: 5px"></i>
                              ${username}  
                         </p>
                    </div>
               </div>
               <div class="body" style="background-color: rgba(244, 244, 244, 0.5);height: 660px">
                    <div class="row" style="margin: 0;padding: 0">
                         <div class="col-md-2" style="padding-left: 0;padding-top: 100px">
                              <div class="list-group" style="border: 0;margin: 0">
                                   <a href="/PharmacyInventoryManagementSystem/DashBoard.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                        <i class="fas fa-tachometer-alt" style="padding-right: 5px"></i>
                                        DashBoard
                                   </a>
                                   <a href="#" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px;color: #719d00; background-color: #ececf6">
                                        <i class="fas fa-clipboard-list" style="padding-right: 5px"></i>
                                        Stock
                                   </a>
                                   <a href="/PharmacyInventoryManagementSystem/AddMed.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                        <i class="fas fa-medkit" style="padding-right: 5px"></i>
                                        Add Med
                                   </a>
                                   <a href="/PharmacyInventoryManagementSystem/editMed.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                        <i class="fas fa-pen" style="padding-right: 5px"></i>
                                        Edit Med
                                   </a>
                                   <a href="/PharmacyInventoryManagementSystem/DeleteMed.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                        <i class="fas fa-trash-alt" style="padding-right: 5px"></i>
                                        Delete Med
                                   </a>
                                   <a href="/PharmacyInventoryManagementSystem/logout.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                        <i class="fas fa-sign-out-alt" style="padding-right: 5px"></i>
                                        Logout
                                   </a>
                              </div>
                         </div>
                         <div class="col-md-10" style="padding-top: 30px">
                              <h3 style="font-size: 35px;padding-left: 20px">INVENTORY</h3><br>


                              <%
                                   try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("select * from inventory");
                              %>
                              <table cellpadding="10%" class="table">
                                   <tr>
                                        <th>ID</th>
                                        <th>Medicine Name</th>
                                        <th>Medicine Company</th>
                                        <th>Arrival Date</th>
                                        <th>Expiry Date</th>
                                        <th>Medicine Type</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                   </tr>
                                   <%
                                        while (rs.next()) {
                                   %>
                                   <tr>
                                        <td><%=rs.getInt(1)%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(3)%></td>
                                        <td><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                        <td><%=rs.getString(6)%></td>
                                        <td><%=rs.getInt(7)%></td>
                                        <td><%=rs.getInt(8)%></td>
                                   </tr>
                                   <% } %>
                                   <%
                                        } catch (Exception ex) {
                                             out.println("Unable to connect to database.");
                                        }
                                   %>
                              </table>
                         </div>
                    </div>
               </div>
          </div>
     </body>
</html>
