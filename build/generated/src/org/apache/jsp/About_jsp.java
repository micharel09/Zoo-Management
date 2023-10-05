package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            <link\n");
      out.write("      href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("\n");
      out.write("    <!-- Tailwind -->\n");
      out.write("    <script src=\"https://cdn-tailwindcss.vercel.app/\"></script>\n");
      out.write("    <script\n");
      out.write("      src=\"https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js\"\n");
      out.write("      defer\n");
      out.write("    ></script>\n");
      out.write("    <script\n");
      out.write("      src=\"https://kit.fontawesome.com/5b0b34b925.js\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("    ></script>\n");
      out.write("        <title>About us</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- component -->\n");
      out.write("<div class=\"bg-gray-500 h-screen w-screen sm:px-8 md:px-16 sm:py-8\">\n");
      out.write("  <main class=\"container mx-auto max-w-screen-lg h-full\">\n");
      out.write("    <!-- file upload modal -->\n");
      out.write("    <article aria-label=\"File Upload Modal\" class=\"relative h-full flex flex-col bg-white shadow-xl rounded-md hidden\" ondrop=\"dropHandler(event);\" ondragover=\"dragOverHandler(event);\" ondragleave=\"dragLeaveHandler(event);\" ondragenter=\"dragEnterHandler(event);\">\n");
      out.write("      <!-- overlay -->\n");
      out.write("      <div id=\"overlay\" class=\"w-full h-full absolute top-0 left-0 pointer-events-none z-50 flex flex-col items-center justify-center rounded-md\">\n");
      out.write("        <i>\n");
      out.write("          <svg class=\"fill-current w-12 h-12 mb-3 text-blue-700\" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\">\n");
      out.write("            <path d=\"M19.479 10.092c-.212-3.951-3.473-7.092-7.479-7.092-4.005 0-7.267 3.141-7.479 7.092-2.57.463-4.521 2.706-4.521 5.408 0 3.037 2.463 5.5 5.5 5.5h13c3.037 0 5.5-2.463 5.5-5.5 0-2.702-1.951-4.945-4.521-5.408zm-7.479-1.092l4 4h-3v4h-2v-4h-3l4-4z\" />\n");
      out.write("          </svg>\n");
      out.write("        </i>\n");
      out.write("        <p class=\"text-lg text-blue-700\">Drop files to upload</p>\n");
      out.write("      </div>\n");
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
