package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("     <head>\n");
      out.write("          <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("          <title>Login</title>\n");
      out.write("\n");
      out.write("          <script src=\"https://kit.fontawesome.com/186f659f91.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("          <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("          <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("     </head>\n");
      out.write("     <body style=\"margin: 0px; text-align: center; background-color: #ccffcc;\">\n");
      out.write("          <div style=\"background-color: #ccffcc;height: 750px;display: inline-block;text-align: center\">\n");
      out.write("               <img alt=\"logo\" src=\"logo.png\" style=\"margin-right: auto;width: 5%;margin-left: auto\">\n");
      out.write("               <p style=\"padding-top: 10px;font-size: 80px;font-weight: bolder;color: black;margin: 0; display: inline;\">\n");
      out.write("                    PHARMACY\n");
      out.write("               </p><br><br><br><br><br><br><br>\n");
      out.write("\n");
      out.write("               <div style=\"margin: 0;padding: 0px;border: 0;background-color: #ccffcc;\">\n");
      out.write("               <div style=\"border: 1px solid lightgray;border-radius: 8px;background-color: rgba(244, 244, 244, 0.5);margin: auto;padding: 10px;width: 30%;text-align: center\">\n");
      out.write("                    <h3 style=\"font-size: 35px;text-align: center\">LOGIN</h3><br>\n");
      out.write("                    <form action=\"Login\" method=\"post\">\n");
      out.write("                         Enter username: <input type=\"text\" name=\"username\"><br><br>\n");
      out.write("                         Enter password: <input type=\"password\" name=\"password\"><br><br>\n");
      out.write("                         <input type=\"submit\" value=\"Login\">\n");
      out.write("                    </form>\n");
      out.write("               </div>\n");
      out.write("          </div>\n");
      out.write("     </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
