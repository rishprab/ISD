package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import uts.isd.model.*;

public final class welcome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/layout.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/form.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/index.js\"></script>\n");
      out.write("        <title>Welcome Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"startTime()\">\n");
      out.write("        <div id=\"bar\">IOTBay\n");
      out.write("            <span id=\"links\"><a href=\"logout.jsp\">Logout</a> | <a href=\"profile.jsp\">Profile</a></span>\n");
      out.write("        </div>\n");
      out.write("        ");

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
        
      out.write("\n");
      out.write("\n");
      out.write("        <table class=\"table\">            \n");
      out.write("            <tr><td>Name:</td><td>");
      out.print( name);
      out.write("</td></tr>\n");
      out.write("            <tr><td>Email:</td><td>");
      out.print( email);
      out.write("</td></tr>\n");
      out.write("            <tr><td>Password:</td><td>");
      out.print( password);
      out.write("</td></tr>\n");
      out.write("            <tr><td>Phone:</td><td>");
      out.print( phone);
      out.write("</td></tr>\n");
      out.write("            <tr><td>Gender:</td><td>");
      out.print( gender);
      out.write("</td></tr>\n");
      out.write("            <tr><td>Date of Birth:</td><td>");
      out.print( dob);
      out.write("</td></tr>            \n");
      out.write("        </table>\n");
      out.write("        ");

            User user = new User(name,email,password,phone,gender,dob);
            session.setAttribute("user",user);
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div id=\"clock\" class=\"footer\"></div>\n");
      out.write("    </body>\n");
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
