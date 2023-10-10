package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class updateanimalcage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("    <link\r\n");
      out.write("      href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap\"\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("    />\r\n");
      out.write("    <!-- Tailwind -->\r\n");
      out.write("    <script src=\"https://cdn-tailwindcss.vercel.app/\"></script>\r\n");
      out.write("    <link\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\"\r\n");
      out.write("    />\r\n");
      out.write("    <link\r\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css\"\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("    />\r\n");
      out.write("    <link href=\"./css/tailwind.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <link\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("      href=\"https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css\"\r\n");
      out.write("    />\r\n");
      out.write("    <script\r\n");
      out.write("      src=\"https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js\"\r\n");
      out.write("      defer\r\n");
      out.write("    ></script>\r\n");
      out.write("    <script\r\n");
      out.write("      src=\"https://kit.fontawesome.com/5b0b34b925.js\"\r\n");
      out.write("      crossorigin=\"anonymous\"\r\n");
      out.write("    ></script>\r\n");
      out.write("    <title>Update Animal Cages</title>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"bg-gray-500\">\r\n");
      out.write("    <!-- MAIN CONTENT -->\r\n");
      out.write("      <section\r\n");
      out.write("        class=\"max-w-4xl p-6 mx-auto bg-white rounded-md shadow-md mt-12 \"\r\n");
      out.write("      >\r\n");
      out.write("      <h3 class=\"font-bold text-3xl\">Edit</h3>\r\n");
      out.write("        <form\r\n");
      out.write("          action=\"\"\r\n");
      out.write("          method=\"POST\"\r\n");
      out.write("        >\r\n");
      out.write("          <div class=\"grid grid-cols-1 gap-6 mt-4 sm:grid-cols-2\">\r\n");
      out.write("            <!-- ID Input -->\r\n");
      out.write("            <div>\r\n");
      out.write("              <label\r\n");
      out.write("                for=\"newsid\"\r\n");
      out.write("                class=\"block text-sm\"\r\n");
      out.write("                >AnimalCage_ID</label\r\n");
      out.write("              >\r\n");
      out.write("              <div class=\"relative flex items-center mt-2\">\r\n");
      out.write("                <i id=\"my-icon\" class=\"fa-solid fa-heading absolute w-6 h-6 m-3 flex items-center justify-center\"></i>\r\n");
      out.write("                <input\r\n");
      out.write("                  name=\"animalcage_id\"\r\n");
      out.write("                  type=\"text\"\r\n");
      out.write("                  value=\"\"\r\n");
      out.write("                  placeholder=\"Enter id\"\r\n");
      out.write("                  class=\"block w-full py-2.5 text-gray-700 border border-gray-200 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5\"\r\n");
      out.write("                />\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Title -->\r\n");
      out.write("            <div>\r\n");
      out.write("              <label\r\n");
      out.write("                for=\"name\"\r\n");
      out.write("                class=\"block text-sm text-gray-500 \"\r\n");
      out.write("                >Name</label\r\n");
      out.write("              >\r\n");
      out.write("\r\n");
      out.write("              <div class=\"flex items-center mt-2\">\r\n");
      out.write("                <i class=\"fas fa-font absolute w-6 h-6 m-3 flex items-center justify-center\"></i>\r\n");
      out.write("\r\n");
      out.write("                <input\r\n");
      out.write("                  name=\"name\"\r\n");
      out.write("                  type=\"text\"\r\n");
      out.write("                  value=\"\"\r\n");
      out.write("                  placeholder=\"Enter name\"\r\n");
      out.write("                  class=\"block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5\"\r\n");
      out.write("                  required\r\n");
      out.write("                />\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <p class=\"mt-3 text-xs text-red-400\">\r\n");
      out.write("              </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Thumbnail URL Input -->\r\n");
      out.write("            <div>\r\n");
      out.write("              <label\r\n");
      out.write("                for=\"area_id\"\r\n");
      out.write("                class=\"block text-sm text-gray-500\"\r\n");
      out.write("                >Area_ID</label\r\n");
      out.write("              >\r\n");
      out.write("\r\n");
      out.write("              <div class=\"flex items-center mt-2\">\r\n");
      out.write("                <i class=\"fas fa-font absolute w-6 h-6 m-3 flex items-center justify-center\"></i>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <input\r\n");
      out.write("                  name=\"area_id\"\r\n");
      out.write("                  type=\"text\"\r\n");
      out.write("                  value=\"\"\r\n");
      out.write("                  required\r\n");
      out.write("                  placeholder=\"Enter id here\"\r\n");
      out.write("                  class=\"block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5\"\r\n");
      out.write("                />\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <p class=\"mt-3 text-xs text-red-400\">\r\n");
      out.write("              </p>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- RELEASE DATE Input -->\r\n");
      out.write("            <div>\r\n");
      out.write("              <label\r\n");
      out.write("                for=\"employee_id\"\r\n");
      out.write("                class=\"block text-sm text-gray-500\"\r\n");
      out.write("                >Employee_ID</label\r\n");
      out.write("              >\r\n");
      out.write("              <i class=\"fas fa-font absolute w-6 h-6 m-3 flex items-center justify-center\"></i>\r\n");
      out.write("              <input\r\n");
      out.write("                name=\"employee_id\"\r\n");
      out.write("                type=\"text\"\r\n");
      out.write("                required\r\n");
      out.write("                value=\"\"\r\n");
      out.write("\r\n");
      out.write("                placeholder=\"Enter id\"\r\n");
      out.write("                max=\"");
      out.print( java.time.LocalDate.now() );
      out.write("\"\r\n");
      out.write("                class=\"block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5\"\r\n");
      out.write("                />\r\n");
      out.write("\r\n");
      out.write("              <p class=\"mt-3 text-xs text-red-400\">\r\n");
      out.write("              </p>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- Button: Cancel and Save -->  \r\n");
      out.write("          <div class=\"flex justify-end mt-6\">\r\n");
      out.write("            <div class=\"pr-2\">\r\n");
      out.write("              <button class=\"px-6 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600\">\r\n");
      out.write("                <a onclick=\"return cancelRedirect();\">Cancel</a>\r\n");
      out.write("              </button>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <script>\r\n");
      out.write("              function cancelRedirect() {\r\n");
      out.write("                window.location.href = \"animalcages.jsp\";\r\n");
      out.write("                return false;\r\n");
      out.write("              }\r\n");
      out.write("            </script>\r\n");
      out.write("            <button class=\"px-8 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600\">\r\n");
      out.write("              Save\r\n");
      out.write("            </button>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- end button -->\r\n");
      out.write("        </form>\r\n");
      out.write("      </section>\r\n");
      out.write("    </main>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
