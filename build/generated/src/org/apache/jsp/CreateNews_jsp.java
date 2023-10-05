package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreateNews_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link\n");
      out.write("        href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap\"\n");
      out.write("        rel=\"stylesheet\"\n");
      out.write("      />\n");
      out.write("  \n");
      out.write("      <!-- AlpineJS -->\n");
      out.write("      <script\n");
      out.write("        defer\n");
      out.write("        src=\"https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js\"\n");
      out.write("      ></script>\n");
      out.write("  \n");
      out.write("      <!-- Tailwind -->\n");
      out.write("      <script src=\"https://cdn-tailwindcss.vercel.app/\"></script>\n");
      out.write("      <link\n");
      out.write("        rel=\"stylesheet\"\n");
      out.write("        href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\"\n");
      out.write("      />\n");
      out.write("      <link\n");
      out.write("        href=\"https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css\"\n");
      out.write("        rel=\"stylesheet\"\n");
      out.write("      />\n");
      out.write("      <link href=\"./css/tailwind.css\" rel=\"stylesheet\" />\n");
      out.write("      <link\n");
      out.write("        rel=\"stylesheet\"\n");
      out.write("        href=\"https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css\"\n");
      out.write("      />\n");
      out.write("      <script\n");
      out.write("        src=\"https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js\"\n");
      out.write("        defer\n");
      out.write("      ></script>\n");
      out.write("      <script\n");
      out.write("        src=\"https://kit.fontawesome.com/5b0b34b925.js\"\n");
      out.write("        crossorigin=\"anonymous\"\n");
      out.write("      ></script>\n");
      out.write("      <title>Update Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-gray-500\">\n");
      out.write("      <!-- MAIN CONTENT -->\n");
      out.write("        <section\n");
      out.write("          class=\"max-w-4xl p-6 mx-auto bg-white rounded-md shadow-md mt-12 \"\n");
      out.write("        >\n");
      out.write("        <h3 class=\"font-bold text-3xl\">Create Content</h3>\n");
      out.write("          <form\n");
      out.write("            action=\"\"\n");
      out.write("            method=\"POST\"\n");
      out.write("          >\n");
      out.write("            <div class=\"grid grid-cols-1 gap-6 mt-4 sm:grid-cols-2\">\n");
      out.write("              <!-- ID Input -->\n");
      out.write("              <div>\n");
      out.write("                <label\n");
      out.write("                  for=\"newsid\"\n");
      out.write("                  class=\"block text-sm\"\n");
      out.write("                  >News_ID</label\n");
      out.write("                >\n");
      out.write("                <div class=\"relative flex items-center mt-2\">\n");
      out.write("                  <i id=\"my-icon\" class=\"fa-solid fa-heading absolute w-6 h-6 m-3 flex items-center justify-center\"></i>\n");
      out.write("                  <input\n");
      out.write("                    name=\"newsid\"\n");
      out.write("                    type=\"text\"\n");
      out.write("                    value=\"\"\n");
      out.write("                    placeholder=\"Enter ID\"\n");
      out.write("                    class=\"block w-full py-2.5 text-gray-700 border border-gray-200 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5\"\n");
      out.write("                  />\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <!-- Title -->\n");
      out.write("              <div>\n");
      out.write("                <label\n");
      out.write("                  for=\"movie-url\"\n");
      out.write("                  class=\"block text-sm text-gray-500 \"\n");
      out.write("                  >Titile</label\n");
      out.write("                >\n");
      out.write("  \n");
      out.write("                <div class=\"flex items-center mt-2\">\n");
      out.write("                  <i class=\"fas fa-font absolute w-6 h-6 m-3 flex items-center justify-center\"></i>\n");
      out.write("  \n");
      out.write("                  <input\n");
      out.write("                    name=\"title\"\n");
      out.write("                    type=\"text\"\n");
      out.write("                    value=\"\"\n");
      out.write("                    placeholder=\"enter tittle\"\n");
      out.write("                    class=\"block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5\"\n");
      out.write("                  />\n");
      out.write("                </div>\n");
      out.write("  \n");
      out.write("                <p class=\"mt-3 text-xs text-red-400\">\n");
      out.write("                </p>\n");
      out.write("              </div>\n");
      out.write("              <!-- Content Input -->\n");
      out.write("              <div>\n");
      out.write("                <label\n");
      out.write("                  for=\"content\"\n");
      out.write("                  class=\"block text-sm text-gray-500 \"\n");
      out.write("                  >Content</label\n");
      out.write("                >\n");
      out.write("  \n");
      out.write("                <textarea\n");
      out.write("                  name=\"description\"\n");
      out.write("                  placeholder=\"Lorem ipsum...\"\n");
      out.write("                  class=\"block mt-2 w-full rounded-lg border bg-white px-4 h-36 py-2.5\"\n");
      out.write("                ></textarea\n");
      out.write("                >\n");
      out.write("              </div>\n");
      out.write("              <!-- Thumbnail URL Input -->\n");
      out.write("              <div>\n");
      out.write("                <label\n");
      out.write("                  for=\"thubmnail-url\"\n");
      out.write("                  class=\"block text-sm text-gray-500\"\n");
      out.write("                  >Thumbnail URL</label\n");
      out.write("                >\n");
      out.write("  \n");
      out.write("                <div class=\"flex items-center mt-2\">\n");
      out.write("                  <i\n");
      out.write("                    class=\"fa-regular fa-image absolute w-6 h-6 m-3 text-gray-400 dark:text-gray-500 flex items-center justify-center\"\n");
      out.write("                  ></i>\n");
      out.write("  \n");
      out.write("                  <input\n");
      out.write("                    name=\"thumbnail-url\"\n");
      out.write("                    type=\"text\"\n");
      out.write("                    value=\"\"\n");
      out.write("                    required\n");
      out.write("                    placeholder=\"enter url here\"\n");
      out.write("                    class=\"block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5\"\n");
      out.write("                  />\n");
      out.write("                </div>\n");
      out.write("  \n");
      out.write("                <p class=\"mt-3 text-xs text-red-400\">\n");
      out.write("                </p>\n");
      out.write("              </div>\n");
      out.write("  \n");
      out.write("              <!-- RELEASE DATE Input -->\n");
      out.write("              <div>\n");
      out.write("                <label\n");
      out.write("                  for=\"release\"\n");
      out.write("                  class=\"block text-sm text-gray-500\"\n");
      out.write("                  >Release Date</label\n");
      out.write("                >\n");
      out.write("  \n");
      out.write("                <input\n");
      out.write("                  name=\"release\"\n");
      out.write("                  type=\"date\"\n");
      out.write("                  required\n");
      out.write("                  value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${release}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                  max=\"");
      out.print( java.time.LocalDate.now() );
      out.write("\"\n");
      out.write("                  class=\"block mt-2 w-full rounded-lg border bg-white px-5 py-2.5\"\n");
      out.write("                />\n");
      out.write("  \n");
      out.write("                <p class=\"mt-3 text-xs text-red-400\">\n");
      out.write("                </p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          <!-- Button: Cancel and Save -->  \n");
      out.write("          <div class=\"flex justify-end mt-6\">\n");
      out.write("            <div class=\"pr-2\">\n");
      out.write("              <button class=\"px-6 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600\">\n");
      out.write("                <a href=\"news.jsp\" onclick=\"return cancelRedirect();\">Cancel</a>\n");
      out.write("              </button>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <script>\n");
      out.write("              function cancelRedirect() {\n");
      out.write("                window.location.href = \"news.jsp\";\n");
      out.write("                return false;\n");
      out.write("              }\n");
      out.write("            </script>\n");
      out.write("            <button class=\"px-8 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600\">\n");
      out.write("              Save\n");
      out.write("            </button>\n");
      out.write("          </div>\n");
      out.write("          <!-- end button -->\n");
      out.write("          </form>\n");
      out.write("        </section>\n");
      out.write("      </main>\n");
      out.write("    </body>\n");
      out.write("  </html>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
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
