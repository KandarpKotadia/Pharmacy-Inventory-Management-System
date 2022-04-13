<%@page import="com.CritCulture.Model.MedData" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Dashboard</title>
          <script src="https://kit.fontawesome.com/186f659f91.js" crossorigin="anonymous"></script>

          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

     </head>
     <body style="margin: 0px" >
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
                         <p style="margin-top: 11px;font-size: 15px;color: #999999;padding-top: 10px;display: inline-block">
                              Welcome,
                         </p>
                         <p style="margin-top: 11px;font-size: 15px;color: black;padding-top: 10px;display: inline-block">
                              <i class="fas fa-user-circle" style="padding-right: 5px"></i>
                              ${username}  
                         </p>
                    </div>
               </div>
               <div class="body" style="background-color: rgba(244, 244, 244, 0.5); height: 900px;">
                    <div class="row" style="margin: 0;padding: 0">
                         <div class="col-md-2" style="padding-left: 0;padding-top: 100px">
                              <div class="list-group" style="border: 0;margin: 0">
                                   
                                   <a href="#" class="list-group-item list-group-item-action list-group-item-light" style="padding-left: 30px;padding-top: 20px;padding-bottom: 20px; color: #719d00; background-color: #ececf6" >
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
                         <div class="col-md-10" style="padding-top: 20px">
                              <h3 style="padding: 10px;font-size: 35px">DASHBOARD</h3>

                              <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Meds.." style="width: 1100px;padding: 10px 20px;margin-left: 10px;border: 1px solid lightgray; border-radius: 5px">
                              <br>
                              <br>
                              <table cellpadding="10%" id="myTable" class="table">

                                   <tr class="header">
                                        <th>ID</th>
                                        <th>Medicine Name</th>
                                        <th>Medicine Company</th>
                                        <th>Medicine Type</th>
                                        <th>Price</th>
                                   </tr>

                                   <c:forEach var="meds" items="${Meds}">
                                        <tr>
                                             <td>${meds.id}</td>
                                             <td>${meds.name}</td>
                                             <td>${meds.company}</td>
                                             <td>${meds.type}</td>
                                             <td>${meds.price}</td>
                                        </tr>
                                   </c:forEach>
                              </table>
                         </div>
                    </div>
               </div>
          </div>

          <!-- Scripts -->
          <script>
               function myFunction() {
                    // Declare variables
                    var input, filter, table, tr, td, i, txtValue;
                    input = document.getElementById("myInput");
                    filter = input.value.toUpperCase();
                    table = document.getElementById("myTable");
                    tr = table.getElementsByTagName("tr");

                    // Loop through all table rows, and hide those who don't match the search query
                    for (i = 0; i < tr.length; i++) {
                         td = tr[i].getElementsByTagName("td")[1];
                         if (td) {
                              txtValue = td.innerText;
                              if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                   tr[i].style.display = "";
                              } else {
                                   tr[i].style.display = "none";
                              }
                         }
                    }
               }
          </script>

     </body>
</html>
