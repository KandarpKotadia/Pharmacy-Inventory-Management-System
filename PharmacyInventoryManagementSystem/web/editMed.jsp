<%@page import="com.CritCulture.Model.MedData" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Edit Medicine Data</title>

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
               <div class="row body" style="background-color: rgba(244, 244, 244, 0.5);height: 900px">

                    <div class="col-md-2" style="padding-left: 0;padding-top: 100px">
                         <div class="list-group" style="border: 0;margin: 0;padding-left: 10px">
                              <a href="/PharmacyInventoryManagementSystem/DashBoard.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                   <i class="fas fa-tachometer-alt" style="padding-right: 5px"></i>
                                   DashBoard
                              </a>
                              <a href="/PharmacyInventoryManagementSystem/stock.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                   <i class="fas fa-clipboard-list" style="padding-right: 5px"></i>
                                   Stock
                              </a>
                              <a href="/PharmacyInventoryManagementSystem/AddMed.jsp" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px">
                                   <i class="fas fa-medkit" style="padding-right: 5px"></i>
                                   Add Med
                              </a>
                              <a href="#" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px;color: #719d00; background-color: #ececf6">
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
                         <h3 style="font-size: 35px;padding-left: 20px">EDIT MEDICINE DATA</h3><br>
                         <form action="EditMedicine" method="post" style="padding-left: 30px">
                              Enter the id of the Medicine you want to Edit:<br><br>
                              <input type="number" name="editId" style="width: 1100px"><br><br>
                              
                              <p>Enter the Updated Details of the Medicine:</p>
                              
                                   Enter Medicine Name: <br>
                                   <input type="text" name="medName" required style="width: 1100px"><br><br>
                                   Enter Medicine Company: <br>
                                   <input type="text" name="medComp" style="width: 1100px" required><br><br>
                                   Enter Arrival Date: <br>
                                   <input type="date" name="arrDate" style="width: 1100px" required><br><br>
                                   Enter Expiry Date: <br>
                                   <input type="date" name="expDate" style="width: 1100px" required><br><br>
                                   
                                   Enter Type of Medicine: <br>
                                   <select name="type" style="width: 1100px;padding: 2px" required>
                                        <option value="Capsules">Capsules</option>
                                        <option value="Liquid">Liquid</option>
                                        <option value="Inhalers">Inhalers</option>
                                        <option value="Drops">Drops</option>
                                        <option value="Injection">Injections</option>
                                        <option value="Cream_ointment">Creams & Ointments</option>
                                   </select><br><br>
                                   
                                   Enter Quantity: <br>
                                   <input type="number" name="quantity" style="width: 1100px" required><br><br>
                                   Enter Price: <br>
                                   <input type="number" name="price"style="width: 1100px" required><br><br>
                                   <br>
                              <input type="submit" value="Edit Medicine Data">
                         </form>   
                    </div>
               </div>
          </div>

     </body>
</html>
