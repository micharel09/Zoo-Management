package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <script src=\"https://cdn.tailwindcss.com\"></script>\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\"\r\n");
      out.write("            />\r\n");
      out.write("        <link\r\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css\"\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            />\r\n");
      out.write("        <link href=\"./css/tailwind.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <link\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            href=\"https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css\"\r\n");
      out.write("            />\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js\"\r\n");
      out.write("            defer\r\n");
      out.write("        ></script>\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://kit.fontawesome.com/5b0b34b925.js\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        ></script>\r\n");
      out.write("        <title>Choose ticket</title>\r\n");
      out.write("        <style>\r\n");
      out.write("            [x-cloak] {\r\n");
      out.write("                display: none;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"w-[1500px] block overflow-x-hidden mx-auto\">\r\n");
      out.write("        <!-- header -->\r\n");
      out.write("        <nav class=\"border-gray-200 bg-green-600\">\r\n");
      out.write("            <div class=\"flex p-1\">\r\n");
      out.write("                <!-- logo -->\r\n");
      out.write("                <a href=\"homepage.jsp\" class=\"flex items-center justify-center w-1/2\">\r\n");
      out.write("                    <div class=\"\">\r\n");
      out.write("                        <img src=\"img/logo2.png\" class=\"h-20 text-xl\" alt=\"Logo\" />\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <span\r\n");
      out.write("                        class=\"self-center text-4xl font-extralight whitespace-nowrap dark:text-white\"\r\n");
      out.write("                        >Wild World Zoo</span\r\n");
      out.write("                    >\r\n");
      out.write("                </a>\r\n");
      out.write("                <!-- end logo -->\r\n");
      out.write("                <!-- navbar -->\r\n");
      out.write("                <div\r\n");
      out.write("                    class=\"items-center justify-between hidden w-full md:flex md:w-auto md:order-1 w-full\"\r\n");
      out.write("                    id=\"navbar-user\"\r\n");
      out.write("                    >\r\n");
      out.write("                    <ul\r\n");
      out.write("                        class=\"flex flex-col font-extralight md:p-0 mt-4 borderrounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0\"\r\n");
      out.write("                        >\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a\r\n");
      out.write("                                href=\"homepage.jsp\"\r\n");
      out.write("                                class=\"navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                                aria-current=\"page\"\r\n");
      out.write("                                >HOME</a\r\n");
      out.write("                            >\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a\r\n");
      out.write("                                href=\"#\"\r\n");
      out.write("                                class=\"navbar-text block py-4 pl-3 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                                >ABOUT</a\r\n");
      out.write("                            >\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a\r\n");
      out.write("                                href=\"Animals.jsp\"\r\n");
      out.write("                                class=\"navbar-text block py-4 pr-4 pl-2 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                                >ANIMAL</a\r\n");
      out.write("                            >\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a\r\n");
      out.write("                                href=\"#\"\r\n");
      out.write("                                class=\"navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                                >NEWS</a\r\n");
      out.write("                            >\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a\r\n");
      out.write("                                href=\"Map.jsp\"\r\n");
      out.write("                                class=\"navbar-text block py-4 pl-6 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                                >MAP</a\r\n");
      out.write("                            >\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- end navbar -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- end header -->\r\n");
      out.write("        <!-- Breadcrumb -->\r\n");
      out.write("        <nav\r\n");
      out.write("            class=\"flex bg-gray-50 text-gray-700 py-3 px-5 dark:bg-gray-800 dark:border-gray-700\"\r\n");
      out.write("            aria-label=\"Breadcrumb\"\r\n");
      out.write("            >\r\n");
      out.write("            <ol class=\"inline-flex items-center space-x-1 md:space-x-3\">\r\n");
      out.write("                <li class=\"inline-flex items-center\">\r\n");
      out.write("                    <a\r\n");
      out.write("                        href=\"Homepage.html\"\r\n");
      out.write("                        class=\"text-sm text-gray-700 hover:text-gray-900 inline-flex items-center dark:text-gray-400 dark:hover:text-white\"\r\n");
      out.write("                        >\r\n");
      out.write("                        <svg\r\n");
      out.write("                            class=\"w-4 h-4 mr-2\"\r\n");
      out.write("                            fill=\"currentColor\"\r\n");
      out.write("                            viewBox=\"0 0 20 20\"\r\n");
      out.write("                            xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                            >\r\n");
      out.write("                        <path\r\n");
      out.write("                            d=\"M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z\"\r\n");
      out.write("                            ></path>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                        Home\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li aria-current=\"page\">\r\n");
      out.write("                    <div class=\"flex items-center\">\r\n");
      out.write("                        <svg\r\n");
      out.write("                            class=\"w-6 h-6 text-gray-400\"\r\n");
      out.write("                            fill=\"currentColor\"\r\n");
      out.write("                            viewBox=\"0 0 20 20\"\r\n");
      out.write("                            xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                            >\r\n");
      out.write("                        <path\r\n");
      out.write("                            fill-rule=\"evenodd\"\r\n");
      out.write("                            d=\"M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z\"\r\n");
      out.write("                            clip-rule=\"evenodd\"\r\n");
      out.write("                            ></path>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                        <span\r\n");
      out.write("                            class=\"text-gray-400 ml-1 md:ml-2 text-sm font-medium dark:text-gray-500\"\r\n");
      out.write("                            >Cart</span\r\n");
      out.write("                        >\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ol>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- end breadcrumb -->\r\n");
      out.write("        <div class=\"w-[1500] mx-auto bg-green-100\">\r\n");
      out.write("            <!-- Progress Steps -->\r\n");
      out.write("            <div class=\"w-full\">\r\n");
      out.write("                <div class=\"flex justify-center py-4 bg-gray-50 rounded-b-lg\">\r\n");
      out.write("                    <!-- Bước 1 -->\r\n");
      out.write("                    <div class=\"w-1/6\">\r\n");
      out.write("                        <div class=\"relative mb-2\">\r\n");
      out.write("                            <div\r\n");
      out.write("                                class=\"w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center\"\r\n");
      out.write("                                >\r\n");
      out.write("                                <span class=\"text-center text-white w-full\">\r\n");
      out.write("                                    <i class=\"fa-solid fa-ticket\"></i>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"text-xs text-center md:text-base\">Choose ticket</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- Bước 2 -->\r\n");
      out.write("                    <div class=\"w-1/6\">\r\n");
      out.write("                        <div class=\"relative mb-2\">\r\n");
      out.write("                            <div\r\n");
      out.write("                                class=\"absolute flex align-center items-center align-middle content-center\"\r\n");
      out.write("                                style=\"\r\n");
      out.write("                                width: calc(100% - 2.5rem - 1rem);\r\n");
      out.write("                                top: 50%;\r\n");
      out.write("                                transform: translate(-50%, -50%);\r\n");
      out.write("                                \"\r\n");
      out.write("                                >\r\n");
      out.write("                                <div\r\n");
      out.write("                                    class=\"w-full bg-gray-200 rounded items-center align-middle align-center flex-1\"\r\n");
      out.write("                                    >\r\n");
      out.write("                                    <div\r\n");
      out.write("                                        class=\"w-0 bg-gray-200 py-1 rounded\"\r\n");
      out.write("                                        style=\"width: 100%\"\r\n");
      out.write("                                        ></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div\r\n");
      out.write("                                class=\"w-10 h-10 mx-auto bg-gray-300 rounded-full text-lg text-white flex items-center\"\r\n");
      out.write("                                >\r\n");
      out.write("                                <span class=\"text-center text-white w-full\">\r\n");
      out.write("                                    <svg\r\n");
      out.write("                                        class=\"w-full fill-current\"\r\n");
      out.write("                                        xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                                        viewBox=\"0 0 24 24\"\r\n");
      out.write("                                        width=\"24\"\r\n");
      out.write("                                        height=\"24\"\r\n");
      out.write("                                        >\r\n");
      out.write("                                    <path\r\n");
      out.write("                                        class=\"heroicon-ui\"\r\n");
      out.write("                                        d=\"M19 10h2a1 1 0 0 1 0 2h-2v2a1 1 0 0 1-2 0v-2h-2a1 1 0 0 1 0-2h2V8a1 1 0 0 1 2 0v2zM9 12A5 5 0 1 1 9 2a5 5 0 0 1 0 10zm0-2a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm8 11a1 1 0 0 1-2 0v-2a3 3 0 0 0-3-3H7a3 3 0 0 0-3 3v2a1 1 0 0 1-2 0v-2a5 5 0 0 1 5-5h5a5 5 0 0 1 5 5v2z\"\r\n");
      out.write("                                        ></path>\r\n");
      out.write("                                    </svg>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"text-xs text-center md:text-base\">Payment</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- Bước 3 -->\r\n");
      out.write("                    <div class=\"w-1/6\">\r\n");
      out.write("                        <div class=\"relative mb-2\">\r\n");
      out.write("                            <div\r\n");
      out.write("                                class=\"absolute flex align-center items-center align-middle content-center\"\r\n");
      out.write("                                style=\"\r\n");
      out.write("                                width: calc(100% - 2.5rem - 1rem);\r\n");
      out.write("                                top: 50%;\r\n");
      out.write("                                transform: translate(-50%, -50%);\r\n");
      out.write("                                \"\r\n");
      out.write("                                >\r\n");
      out.write("                                <div\r\n");
      out.write("                                    class=\"w-full bg-gray-200 rounded items-center align-middle align-center flex-1\"\r\n");
      out.write("                                    >\r\n");
      out.write("                                    <div\r\n");
      out.write("                                        class=\"w-0 bg-green-300 py-1 rounded\"\r\n");
      out.write("                                        style=\"width: 0%\"\r\n");
      out.write("                                        ></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div\r\n");
      out.write("                                class=\"w-10 h-10 mx-auto bg-white border-2 border-gray-200 rounded-full text-lg text-white flex items-center\"\r\n");
      out.write("                                >\r\n");
      out.write("                                <span class=\"text-center text-gray-600 w-full\">\r\n");
      out.write("                                    <svg\r\n");
      out.write("                                        class=\"w-full fill-current\"\r\n");
      out.write("                                        xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                                        viewBox=\"0 0 24 24\"\r\n");
      out.write("                                        width=\"24\"\r\n");
      out.write("                                        height=\"24\"\r\n");
      out.write("                                        >\r\n");
      out.write("                                    <path\r\n");
      out.write("                                        class=\"heroicon-ui\"\r\n");
      out.write("                                        d=\"M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-2.3-8.7l1.3 1.29 3.3-3.3a1 1 0 0 1 1.4 1.42l-4 4a1 1 0 0 1-1.4 0l-2-2a1 1 0 0 1 1.4-1.42z\"\r\n");
      out.write("                                        ></path>\r\n");
      out.write("                                    </svg>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"text-xs text-center md:text-base\">Finished</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- end Progress Steps -->\r\n");
      out.write("            <!-- tickets select-->\r\n");
      out.write("            <div class=\"flex flex-col justify-center space-x-8\">\r\n");
      out.write("                <div class=\"relative m-3 flex flex-wrap mx-auto justify-center\">\r\n");
      out.write("                    <form name=\"f\" action=\"\" method=\"post\">\r\n");
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                        <hr/>\r\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </form>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- end ticket select -->\r\n");
      out.write("            <a href=\"show\">View(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.size}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(") items</a>\r\n");
      out.write("\r\n");
      out.write("            <!-- images preview -->\r\n");
      out.write("            <div class=\"mx-auto container px-6 xl:px-0 py-12\">\r\n");
      out.write("                <div class=\"flex flex-col\">\r\n");
      out.write("                    <div class=\"flex flex-col justify-center\">\r\n");
      out.write("                        <div class=\"relative\">\r\n");
      out.write("                            <img\r\n");
      out.write("                                class=\"hidden sm:block w-full rounded-t-full\"\r\n");
      out.write("                                src=\"img/ppenal3.jpg\"\r\n");
      out.write("                                alt=\"sofa\"\r\n");
      out.write("                                />\r\n");
      out.write("                            <img\r\n");
      out.write("                                class=\"sm:hidden w-full\"\r\n");
      out.write("                                src=\"https://i.ibb.co/B6qwqPT/jason-wang-Nx-Awry-Abt-Iw-unsplash-1.png\"\r\n");
      out.write("                                alt=\"sofa\"\r\n");
      out.write("                                />\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- penal left -->\r\n");
      out.write("                    <div class=\"mt-10 grid lg:grid-cols-2 gap-x-8 gap-y-8 items-center\">\r\n");
      out.write("                        <div\r\n");
      out.write("                            class=\"group group-hover:bg-opacity-60 transition duration-500 relative bg-gray-50 dark:bg-gray-800 dark:hover:bg-gray-700 flex justify-center items-center\"\r\n");
      out.write("                            >\r\n");
      out.write("                            <img\r\n");
      out.write("                                class=\"group-hover:opacity-60 transition duration-500 w-full h-80 object-cover\"\r\n");
      out.write("                                src=\"img/penal.png\"\r\n");
      out.write("                                alt=\"sofa-2\"\r\n");
      out.write("                                />\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- penal right -->\r\n");
      out.write("                        <div\r\n");
      out.write("                            class=\"group group-hover:bg-opacity-60 transition duration-500 relative bg-gray-50 dark:bg-gray-800 dark:hover:bg-gray-700 flex justify-center items-center\"\r\n");
      out.write("                            >\r\n");
      out.write("                            <img\r\n");
      out.write("                                class=\"group-hover:opacity-60 transition duration-500 w-full h-80 object-cover\"\r\n");
      out.write("                                src=\"img/97.jpg\"\r\n");
      out.write("                                alt=\"sofa-2\"\r\n");
      out.write("                                />\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- end preview -->\r\n");
      out.write("            <!-- cart -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <!-- total amount -->\r\n");
      out.write("           \r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function buy(id) {\r\n");
      out.write("    var inputNum = document.querySelector('input[data-id=\"' + id + '\"]');\r\n");
      out.write("    var m = inputNum.value;\r\n");
      out.write("    document.f.action = \"buy?id=\" + id + \"&num=\" + m;\r\n");
      out.write("    document.f.submit();\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.data}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("p");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                            ");
          if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                            <div\r\n");
          out.write("                                class=\"relative max-w-sm min-w-[340px] bg-white shadow-md rounded-3xl p-2 mx-1 my-3 cursor-pointer bg-green-300\"\r\n");
          out.write("                                >\r\n");
          out.write("                                <div class=\"overflow-x-hidden rounded-2xl relative\">\r\n");
          out.write("                                    <img\r\n");
          out.write("                                        class=\"h-40 rounded-2xl w-full object-cover\"\r\n");
          out.write("                                        src=\"img/adultticket.jpg\"\r\n");
          out.write("                                        />\r\n");
          out.write("                                </div>\r\n");
          out.write("                                <div class=\"mt-4 pl-2 mb-2 flex justify-between\">\r\n");
          out.write("                                    <div>\r\n");
          out.write("                                        <p class=\"text-lg font-semibold text-gray-900 mb-0\">\r\n");
          out.write("                                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                                        </p>\r\n");
          out.write("                                        <p class=\"text-md text-gray-800 mt-0\">");
          if (_jspx_meth_fmt_formatNumber_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</p>\r\n");
          out.write("                                    </div>\r\n");
          out.write("                                    <!-- button select-->\r\n");
          out.write("                                    <div class=\"pt-2\">\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                        <div class=\"flex items-center gap-1\">\r\n");
          out.write("                                        <input style=\"text-align: center\" type=\"number\" name=\"num\" data-id=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" value=\"1\"/>\r\n");
          out.write("\r\n");
          out.write("                                            <input\r\n");
          out.write("                                                type=\"button\"\r\n");
          out.write("                                                class=\"inline-block px-6 py-2 pt-2 border-2 border-blue-600 text-blue-600 font-medium text-xs leading-tight uppercase rounded-full hover:bg-black hover:bg-opacity-5 focus:outline-none focus:ring-0 transition duration-150 ease-in-out\"\r\n");
          out.write("                                                onclick=\"buy('");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("')\" value=\"Buy item\"/>\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                        </div>\r\n");
          out.write("                                    </div>\r\n");
          out.write("                                    <!-- end button -->\r\n");
          out.write("                                </div>\r\n");
          out.write("                            </div>\r\n");
          out.write("                        ");
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

  private boolean _jspx_meth_c_set_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_0.setVar("id");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.tid}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_fmt_formatNumber_0.setPattern("##.#");
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${(p.price)}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }
}
