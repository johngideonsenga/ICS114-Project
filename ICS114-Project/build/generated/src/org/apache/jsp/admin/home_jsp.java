package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/admin/templates/header.html");
    _jspx_dependants.add("/admin/templates/editForm.html");
    _jspx_dependants.add("/admin/templates/deletePrompt.html");
    _jspx_dependants.add("/admin/templates/addForm.html");
  }

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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>IICS Borrowing System | Home</title>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"../jquery/jquery.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../DataTables/datatables.min.css\"/>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"../DataTables/datatables.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap/css/bootstrap.min.css\"/>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"../bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            $(document).ready( function (){\r\n");
      out.write("                $('#table').DataTable({\r\n");
      out.write("                    \"columnDefs\": [\r\n");
      out.write("                        {\"className\": \"dt-center\", \"targets\": \"_all\"}\r\n");
      out.write("                    ]\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!--Header -->\r\n");
      out.write("        ");
      out.write("<div>\r\n");
      out.write("    <center>\r\n");
      out.write("        <h1>IICS Borrowing System</h1>\r\n");
      out.write("    </center>\r\n");
      out.write("    <div>\r\n");
      out.write("        <a href=\"home.jsp\">Home</a> | \r\n");
      out.write("        <a href=\"borrowers.jsp\">Borrowers List</a> | \r\n");
      out.write("        <a href=\"changePw.jsp\">Change Password</a> |\r\n");
      out.write("        <a href=\"login.jsp\">Logout</a>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("        <br/>\r\n");
      out.write("        <div>\r\n");
      out.write("            <center>\r\n");
      out.write("                <button type=\"button\" data-toggle=\"modal\" data-target=\"#addForm\">Add New Item</button>\r\n");
      out.write("            </center>\r\n");
      out.write("            <table id=\"table\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Item</th>\r\n");
      out.write("                        <th>Stock</th>\r\n");
      out.write("                        <th></th>\r\n");
      out.write("                        <th></th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>Item 1</td>\r\n");
      out.write("                        <td>10</td>\r\n");
      out.write("                        <td><button type=\"button\" data-toggle=\"modal\" data-target=\"#editForm\">Edit Stock</button></td>\r\n");
      out.write("                        <td><button type=\"button\" data-toggle=\"modal\" data-target=\"#deletePrompt\">Delete Item</button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>Item 2</td>\r\n");
      out.write("                        <td>10</td>\r\n");
      out.write("                        <td><button type=\"button\" data-toggle=\"modal\" data-target=\"#editForm\">Edit Stock</button></td>\r\n");
      out.write("                        <td><button type=\"button\" data-toggle=\"modal\" data-target=\"#deletePrompt\">Delete Item</button></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--Modals-->\r\n");
      out.write("        ");
      out.write("<!--Modal-->\r\n");
      out.write("<div class=\"modal fade\" id=\"editForm\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog\" role=\"document\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <div class=\"modal-header\">\r\n");
      out.write("                <h5 class=\"modal-title\" >Edit Item Stock</h5>\r\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                        <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                    </button>\r\n");
      out.write("            </div>\r\n");
      out.write("            <form method=\"POST\" action=\"\">\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <br/>Item: <input type=\"text\" disabled required>\r\n");
      out.write("                    <br/>Quantity: <input type=\"Number\" min='1' required>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-footer\">\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("        ");
      out.write("<!--Modal-->\r\n");
      out.write("<div class=\"modal fade\" id=\"deletePrompt\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog\" role=\"document\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <div class=\"modal-header\">\r\n");
      out.write("                <h5 class=\"modal-title\" >Delete Item</h5>\r\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                        <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                    </button>\r\n");
      out.write("            </div>\r\n");
      out.write("            <form method=\"POST\" action=\"\">\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    Are you sure you want to delete '{item name}'?\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-footer\">\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">No</button>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Yes</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("        ");
      out.write("<!--Modal-->\r\n");
      out.write("<div class=\"modal fade\" id=\"addForm\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog\" role=\"document\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <div class=\"modal-header\">\r\n");
      out.write("                <h5 class=\"modal-title\" >Add New Item</h5>\r\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                        <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                    </button>\r\n");
      out.write("            </div>\r\n");
      out.write("            <form method=\"POST\" action=\"\">\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <br/>Item: <input type=\"text\" required>\r\n");
      out.write("                    <br/>Quantity: <input type=\"Number\" min='1' required>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-footer\">\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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