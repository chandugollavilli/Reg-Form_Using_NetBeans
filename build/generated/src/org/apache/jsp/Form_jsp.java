package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Form_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Form Page</title>\n");
      out.write("    </head>\n");
      out.write("        <style>\n");
      out.write("        body{\n");
      out.write("            font-family: arial;\n");
      out.write("            background-color: yellow;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            height: 100vh;\n");
      out.write("        }\n");
      out.write("        form{\n");
      out.write("            background-color: white;\n");
      out.write("            padding: 50px;\n");
      out.write("            border-radius: 5px; \n");
      out.write("        }\n");
      out.write("        input[type=\"file\"],\n");
      out.write("        input[type=\"text\"],\n");
      out.write("        input[type=\"email\"],\n");
      out.write("        input[type=\"address\"],\n");
      out.write("        input[type=\"mobile no\"],\n");
      out.write("        input[type=\"password\"]{\n");
      out.write("        width: 100%;\n");
      out.write("        padding: 10px;\n");
      out.write("        margin-bottom: 10px;\n");
      out.write("        border: none;\n");
      out.write("        border-radius: 3px;\n");
      out.write("        box-sizing: border-box;\n");
      out.write("        font-size: 16px;\n");
      out.write("        background-color: gainsboro;\n");
      out.write("        }\n");
      out.write("        input[type=\"submit\"]{\n");
      out.write("            border: none;\n");
      out.write("            padding: 10px 10px;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            background-color: greenyellow;\n");
      out.write("        }\n");
      out.write("        select[name=\"dept\"],\n");
      out.write("        select[name=\"gender\"]{\n");
      out.write("        width: 100%;\n");
      out.write("        padding: 10px;\n");
      out.write("        margin-bottom: 10px;\n");
      out.write("        border: none;\n");
      out.write("        border-radius: 3px;\n");
      out.write("        box-sizing: border-box;\n");
      out.write("        font-size: 16px;\n");
      out.write("        background-color: gainsboro;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Formdata.jsp\">\n");
      out.write("            <table>\n");
      out.write("                <h1>Please Enter your details</h1>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Id:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"id\" placeholder=\"Id\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"name\" placeholder=\"Enter name\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender:</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"gender\">\n");
      out.write("                            <option value=\"Select\">Select</option>\n");
      out.write("                            <option value=\"male\">Male</option>\n");
      out.write("                            <option value=\"female\">Female</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email:</td>\n");
      out.write("                    <td><input type=\"email\" name=\"email\" placeholder=\"Email\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address:</td>\n");
      out.write("                    <td><input type=\"Address\" name=\"address\" placeholder=\"Address\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Dept:</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"dept\">\n");
      out.write("                            <option value=\"Select\">Select</option>\n");
      out.write("                            <option value=\"ECE\">ECE</option>\n");
      out.write("                            <option value=\"CSE\">CSE</option>\n");
      out.write("                            <option value=\"EEE\">EEE</option>\n");
      out.write("                            <option value=\"MECH\">MECH</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Mobile no:</td>\n");
      out.write("                    <td><input type=\"mobile no\" name=\"mobile\" placeholder=\"Mobile no\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                 <td>Image:</td>\n");
      out.write("                 <td><input type=\"file\" name=\"image\" accept=\"image/*\"/></td>\n");
      out.write("                 </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><input type=\"Submit\" value=\"Submit\"/></td>\n");
      out.write("                    <td><a href=\"view.jsp\" target=\"_self\">View</a></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>  \n");
      out.write("        </form>\n");
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
