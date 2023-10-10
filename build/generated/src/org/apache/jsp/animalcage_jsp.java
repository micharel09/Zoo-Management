package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;

public final class animalcage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_0;

static {
  _jspx_fnmap_0= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:length", org.apache.taglibs.standard.functions.Functions.class, "length", new Class[] {java.lang.Object.class});
}

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("   \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"UTF-8\" />\r\n");
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
      out.write("\r\n");
      out.write("    <title>Animal Cage List</title>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"w-[1500px] block overflow-x-hidden mx-auto bg-gray-200\">\r\n");
      out.write("    <main class=\"antialiased font-sans bg-white\">\r\n");
      out.write("      <div class=\"container mx-auto px-4 sm:px-8\">\r\n");
      out.write("        <div class=\"flex justify-center\">\r\n");
      out.write("          <h1 class=\"text-6xl mt-10 font-bold\">Animal Cage List</h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"py-8 ml-20\">\r\n");
      out.write("          <!-- Search -->\r\n");
      out.write("          <div class=\"my-2 flex sm:flex-row\">\r\n");
      out.write("            <form action=\"animalcagesearch\" method=\"get\">\r\n");
      out.write("              <div class=\"block relative\">\r\n");
      out.write("                <span\r\n");
      out.write("                  class=\"h-full absolute inset-y-0 left-0 flex items-center pl-4 cursor-pointer\"\r\n");
      out.write("                >\r\n");
      out.write("                  <svg\r\n");
      out.write("                    viewBox=\"0 0 24 24\"\r\n");
      out.write("                    class=\"h-6 w-6 fill-current text-gray-500\"\r\n");
      out.write("                  >\r\n");
      out.write("                    <path\r\n");
      out.write("                      d=\"M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z\"\r\n");
      out.write("                    ></path>\r\n");
      out.write("                  </svg>\r\n");
      out.write("                </span>\r\n");
      out.write("                <input\r\n");
      out.write("                  type=\"text\"\r\n");
      out.write("                  id=\"animalcageID\"\r\n");
      out.write("                  name=\"animalcageID\"\r\n");
      out.write("                  placeholder=\"Search\"\r\n");
      out.write("                  class=\"text-2xl pl-12 rounded-3xl border border-gray-400 bg-white placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none\"\r\n");
      out.write("                />\r\n");
      out.write("\r\n");
      out.write("                <input\r\n");
      out.write("                  class=\"text-2xl pl-2 cursor-pointer hover:text-blue-500 transition-colors duration-300\"\r\n");
      out.write("                  type=\"submit\"\r\n");
      out.write("                  value=\"Search\"\r\n");
      out.write("                />\r\n");
      out.write("              </div>\r\n");
      out.write("            </form>\r\n");
      out.write("            <!-- end Search -->\r\n");
      out.write("            <!-- Create  -->\r\n");
      out.write("            <form class=\"ml-auto\" action=\"createanimalcage\" method=\"get\">\r\n");
      out.write("              <button\r\n");
      out.write("                type=\"submit\"\r\n");
      out.write("                class=\"flex animate-bounce items-center px-12 py-3 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-green-400 focus:outline-none focus:bg-green-100hover:transform hover:scale-105\"\r\n");
      out.write("              >\r\n");
      out.write("                <svg\r\n");
      out.write("                  xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                  fill=\"none\"\r\n");
      out.write("                  viewBox=\"0 0 24 24\"\r\n");
      out.write("                  stroke-width=\"1.5\"\r\n");
      out.write("                  stroke=\"currentColor\"\r\n");
      out.write("                  class=\"w-5 h-5\"\r\n");
      out.write("                >\r\n");
      out.write("                  <path\r\n");
      out.write("                    stroke-linecap=\"round\"\r\n");
      out.write("                    stroke-linejoin=\"round\"\r\n");
      out.write("                    d=\"M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z\"\r\n");
      out.write("                  ></path>\r\n");
      out.write("                </svg>\r\n");
      out.write("                <span class=\"ml-1 text-2xl\">Add</span>\r\n");
      out.write("              </button>\r\n");
      out.write("            </form>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- end Create -->\r\n");
      out.write("\r\n");
      out.write("          <!-- Error message -->\r\n");
      out.write("          <p style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${errorMessage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("          <!-- end message -->\r\n");
      out.write("\r\n");
      out.write("          <!-- main -->\r\n");
      out.write("          <div class=\"-mx-4 sm:-mx-8 px-4 sm:px-8 py-4 overflow-x-auto\">\r\n");
      out.write("            <div\r\n");
      out.write("              class=\"inline-block min-w-full shadow-2xl border-2 rounded-lg overflow-hidden\"\r\n");
      out.write("            >\r\n");
      out.write("              <!-- table -->\r\n");
      out.write("              ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("              <!-- end -->\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </main>\r\n");
      out.write("  </body>\r\n");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("              ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:length(animalcagelist) > 2}", java.lang.Boolean.class, (PageContext)_jspx_page_context, _jspx_fnmap_0)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                  <table class=\"min-w-full\">\r\n");
        out.write("                    <thead class=\"bg-neutral-100\">\r\n");
        out.write("                      <tr>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-10 py-6 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                          style=\"width: 100px\"\r\n");
        out.write("                        >\r\n");
        out.write("                          AnimalCage_ID\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Area_ID\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Employee_ID\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Name\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-6 py-3 border-b border-r text-2xl text-center border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Action\r\n");
        out.write("                        </th>\r\n");
        out.write("                      </tr>\r\n");
        out.write("                    </thead>\r\n");
        out.write("                    ");
        if (_jspx_meth_c_forEach_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                  </table>\r\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_0);
    _jspx_th_c_forEach_0.setVar("animalcage");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcagelist}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                      <tbody\r\n");
          out.write("                        class=\"bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300\"\r\n");
          out.write("                      >\r\n");
          out.write("                        <tr>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"pl-10 py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.animalcage_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"px-6 py-4 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.area_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"px-8 py-10 text-2xl leading-5 text-gray-500 border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.employee_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200\"\r\n");
          out.write("                          >\r\n");
          out.write("                            <div class=\"flex justify-center items-center\">\r\n");
          out.write("                              <!-- edit -->\r\n");
          out.write("                              <button\r\n");
          out.write("                                class=\"flex p-2.5 bg-gray-400 rounded-xl hover:rounded-3xl hover:bg-green-500 transition-all duration-300 text-white\"\r\n");
          out.write("                              >\r\n");
          out.write("                                <a\r\n");
          out.write("                                  href=\"updateanimalcage?animalcageID=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.animalcage_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\r\n");
          out.write("                                >\r\n");
          out.write("                                  <svg\r\n");
          out.write("                                    xmlns=\"http://www.w3.org/2000/svg\"\r\n");
          out.write("                                    class=\"h-5 w-5\"\r\n");
          out.write("                                    fill=\"none\"\r\n");
          out.write("                                    viewBox=\"0 0 24 24\"\r\n");
          out.write("                                    stroke=\"currentColor\"\r\n");
          out.write("                                    stroke-width=\"2\"\r\n");
          out.write("                                  >\r\n");
          out.write("                                    <path\r\n");
          out.write("                                      stroke-linecap=\"round\"\r\n");
          out.write("                                      stroke-linejoin=\"round\"\r\n");
          out.write("                                      d=\"M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z\"\r\n");
          out.write("                                    />\r\n");
          out.write("                                  </svg>\r\n");
          out.write("                                </a>\r\n");
          out.write("                              </button>\r\n");
          out.write("                              <!-- delete -->\r\n");
          out.write("                              <div class=\"pl-2\">\r\n");
          out.write("                                <button\r\n");
          out.write("                                  class=\"flex p-2.5 bg-gray-400 rounded-xl hover:rounded-3xl hover:bg-red-500 transition-all duration-300 text-white\"\r\n");
          out.write("                                >\r\n");
          out.write("                                  <a\r\n");
          out.write("                                    href=\"deleteanimalcage?animalcageID=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.animalcage_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\r\n");
          out.write("                                    class=\"\"\r\n");
          out.write("                                    onclick=\"return confirmDelete();\"\r\n");
          out.write("                                  >\r\n");
          out.write("                                    <i\r\n");
          out.write("                                      fill=\"none\"\r\n");
          out.write("                                      viewBox=\"0 0 24 24\"\r\n");
          out.write("                                      stroke=\"currentColor\"\r\n");
          out.write("                                      stroke-width=\"2\"\r\n");
          out.write("                                      class=\"h-4 w-4 fas fa-trash-alt\"\r\n");
          out.write("                                    ></i>\r\n");
          out.write("                                  </a>\r\n");
          out.write("                                </button>\r\n");
          out.write("                              </div>\r\n");
          out.write("                            </div>\r\n");
          out.write("                          </td>\r\n");
          out.write("                          <script>\r\n");
          out.write("                            function confirmDelete() {\r\n");
          out.write("                              var result = confirm(\r\n");
          out.write("                                \"Do you want to delete this?\"\r\n");
          out.write("                              );\r\n");
          out.write("                              return result;\r\n");
          out.write("                            }\r\n");
          out.write("                          </script>\r\n");
          out.write("                        </tr>\r\n");
          out.write("                      </tbody>\r\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                  <table class=\"min-w-full\">\r\n");
        out.write("                    <thead class=\"bg-neutral-50\">\r\n");
        out.write("                      <tr>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-10 py-6 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                          style=\"width: 100px\"\r\n");
        out.write("                        >\r\n");
        out.write("                          AnimalCage_ID\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Area_ID\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-10 py-6 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                          style=\"width: 100px\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Employee_ID\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Name\r\n");
        out.write("                        </th>\r\n");
        out.write("                        <th\r\n");
        out.write("                          class=\"px-6 py-3 border-b border-r text-2xl text-center border-gray-300 text-left leading-4 text-blue-500 tracking-wider\"\r\n");
        out.write("                        >\r\n");
        out.write("                          Action\r\n");
        out.write("                        </th>\r\n");
        out.write("                      </tr>\r\n");
        out.write("                    </thead>\r\n");
        out.write("                    ");
        if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_otherwise_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                  </table>\r\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_otherwise_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_otherwise_0);
    _jspx_th_c_forEach_1.setVar("animalcage");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                      <tbody\r\n");
          out.write("                        class=\"bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300\"\r\n");
          out.write("                      >\r\n");
          out.write("                        <tr>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"pl-10 py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.animalcage_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"px-6 py-4 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.area_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"px-8 py-10 text-2xl leading-5 text-gray-500 border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.employee_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r\"\r\n");
          out.write("                          >\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </td>\r\n");
          out.write("                          <td\r\n");
          out.write("                            class=\"py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200\"\r\n");
          out.write("                          >\r\n");
          out.write("                            <div class=\"flex justify-center items-center\">\r\n");
          out.write("                              <!-- edit -->\r\n");
          out.write("                              <button\r\n");
          out.write("                                class=\"flex p-2.5 bg-gray-400 rounded-xl hover:rounded-3xl hover:bg-green-500 transition-all duration-300 text-white\"\r\n");
          out.write("                              >\r\n");
          out.write("                                <a\r\n");
          out.write("                                  href=\"updateanimalcage?animalcageID=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.animalcage_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\r\n");
          out.write("                                >\r\n");
          out.write("                                  <svg\r\n");
          out.write("                                    xmlns=\"http://www.w3.org/2000/svg\"\r\n");
          out.write("                                    class=\"h-5 w-5\"\r\n");
          out.write("                                    fill=\"none\"\r\n");
          out.write("                                    viewBox=\"0 0 24 24\"\r\n");
          out.write("                                    stroke=\"currentColor\"\r\n");
          out.write("                                    stroke-width=\"2\"\r\n");
          out.write("                                  >\r\n");
          out.write("                                    <path\r\n");
          out.write("                                      stroke-linecap=\"round\"\r\n");
          out.write("                                      stroke-linejoin=\"round\"\r\n");
          out.write("                                      d=\"M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z\"\r\n");
          out.write("                                    />\r\n");
          out.write("                                  </svg>\r\n");
          out.write("                                </a>\r\n");
          out.write("                              </button>\r\n");
          out.write("                              <!-- delete -->\r\n");
          out.write("                              <div class=\"pl-2\">\r\n");
          out.write("                                <button\r\n");
          out.write("                                  class=\"flex p-2.5 bg-gray-400 rounded-xl hover:rounded-3xl hover:bg-red-500 transition-all duration-300 text-white\"\r\n");
          out.write("                                >\r\n");
          out.write("                                  <a\r\n");
          out.write("                                    href=\"deleteanimalcage?animalcageID=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${animalcage.animalcage_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\r\n");
          out.write("                                    class=\"\"\r\n");
          out.write("                                    onclick=\"return confirmDelete();\"\r\n");
          out.write("                                  >\r\n");
          out.write("                                    <i\r\n");
          out.write("                                      fill=\"none\"\r\n");
          out.write("                                      viewBox=\"0 0 24 24\"\r\n");
          out.write("                                      stroke=\"currentColor\"\r\n");
          out.write("                                      stroke-width=\"2\"\r\n");
          out.write("                                      class=\"h-4 w-4 fas fa-trash-alt\"\r\n");
          out.write("                                    ></i>\r\n");
          out.write("                                  </a>\r\n");
          out.write("                                </button>\r\n");
          out.write("                              </div>\r\n");
          out.write("                            </div>\r\n");
          out.write("                          </td>\r\n");
          out.write("\r\n");
          out.write("                          <script>\r\n");
          out.write("                            function confirmDelete() {\r\n");
          out.write("                              var result = confirm(\r\n");
          out.write("                                \"Do you want to delete this?\"\r\n");
          out.write("                              );\r\n");
          out.write("                              return result;\r\n");
          out.write("                            }\r\n");
          out.write("                          </script>\r\n");
          out.write("                        </tr>\r\n");
          out.write("                      </tbody>\r\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}
