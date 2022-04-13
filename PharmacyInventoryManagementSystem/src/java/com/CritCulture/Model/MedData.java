package com.CritCulture.Model;

import com.CritCulture.Controller.PharmacyInventoryDBUtil;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MedData")
public class MedData extends HttpServlet {

     @Override
     protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

          // fetching data from DataBase
          try {
               List<Med> meds = PharmacyInventoryDBUtil.getMedList();
               request.setAttribute("Meds", meds);
          } catch (Exception e) {
               e.printStackTrace();
          }

          // Sending data to JSP
          RequestDispatcher rd = request.getRequestDispatcher("Dashboard.jsp");
          rd.forward(request, response);

     }

}
