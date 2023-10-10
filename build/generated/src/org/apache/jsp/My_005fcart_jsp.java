package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class My_005fcart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/components/header.html");
    _jspx_dependants.add("/components/breadcrumb.html");
  }

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
      out.write("  \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("    <script src=\"https://cdn.tailwindcss.com\"></script>\r\n");
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
      out.write("    <title>Choose ticket</title>\r\n");
      out.write("    <style>\r\n");
      out.write("      [x-cloak] {\r\n");
      out.write("        display: none;\r\n");
      out.write("      }\r\n");
      out.write("      /* Styling for the confirmation popup */\r\n");
      out.write("      .popup-container {\r\n");
      out.write("        display: none;\r\n");
      out.write("        position: fixed;\r\n");
      out.write("        top: 0;\r\n");
      out.write("        left: 0;\r\n");
      out.write("        width: 100%;\r\n");
      out.write("        height: 100%;\r\n");
      out.write("        background-color: rgba(0, 0, 0, 0.5);\r\n");
      out.write("        justify-content: center;\r\n");
      out.write("        align-items: center;\r\n");
      out.write("        z-index: 2;\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .popup-box {\r\n");
      out.write("        background-color: white;\r\n");
      out.write("        padding: 20px;\r\n");
      out.write("        border-radius: 5px;\r\n");
      out.write("        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);\r\n");
      out.write("        text-align: center;\r\n");
      out.write("      }\r\n");
      out.write("      .custom-bg {\r\n");
      out.write("        /* Đường dẫn của hình ảnh nền */\r\n");
      out.write("        background-image: url(\"img/checkoutbg.png\");\r\n");
      out.write("        background-size: cover;\r\n");
      out.write("        background-repeat: no-repeat;\r\n");
      out.write("        background-color: green;\r\n");
      out.write("      }\r\n");
      out.write("      /* CSS để tắt cuộn chuột */\r\n");
      out.write("      body {\r\n");
      out.write("        overflow: hidden;\r\n");
      out.write("      }\r\n");
      out.write("    </style>\r\n");
      out.write("    ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <!-- Gá»i tá»p head.html -->\r\n");
      out.write("    <link rel=\"import\" href=\"components/header.html\" />\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"w-[1500] block overflow-x-hidden mx-auto\">\r\n");
      out.write("    <!-- header -->\r\n");
      out.write("    <nav class=\"border-gray-200 bg-green-600\">\r\n");
      out.write("      <div class=\"flex p-1\">\r\n");
      out.write("        <!-- logo -->\r\n");
      out.write("        <a href=\"homepage.jsp\" class=\"flex items-center justify-center w-1/2\">\r\n");
      out.write("          <div class=\"\">\r\n");
      out.write("            <img src=\"img/logo2.png\" class=\"h-20 text-xl\" alt=\"Logo\" />\r\n");
      out.write("          </div>\r\n");
      out.write("          <span\r\n");
      out.write("            class=\"self-center text-4xl font-extralight whitespace-nowrap dark:text-white\"\r\n");
      out.write("            >Wild World Zoo</span\r\n");
      out.write("          >\r\n");
      out.write("        </a>\r\n");
      out.write("        <!-- end logo -->\r\n");
      out.write("        <!-- navbar -->\r\n");
      out.write("        <div\r\n");
      out.write("          class=\"items-center justify-between hidden w-full md:flex md:w-auto md:order-1 w-full\"\r\n");
      out.write("          id=\"navbar-user\"\r\n");
      out.write("        >\r\n");
      out.write("          <ul\r\n");
      out.write("            class=\"flex flex-col md:p-0 mt-4 borderrounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0\"\r\n");
      out.write("          >\r\n");
      out.write("            <li>\r\n");
      out.write("              <a\r\n");
      out.write("                href=\"homepage.jsp\"\r\n");
      out.write("                class=\"navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                aria-current=\"page\"\r\n");
      out.write("                >HOME</a\r\n");
      out.write("              >\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("              <a\r\n");
      out.write("                href=\"About.jsp\"\r\n");
      out.write("                class=\"navbar-text block py-4 pl-3 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                >ABOUT</a\r\n");
      out.write("              >\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("              <a\r\n");
      out.write("                href=\"animal.jsp\"\r\n");
      out.write("                class=\"navbar-text block py-4 pr-4 pl-2 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                >ANIMAL</a\r\n");
      out.write("              >\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("              <a\r\n");
      out.write("                href=\"news.jsp\"\r\n");
      out.write("                class=\"navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                >NEWS</a\r\n");
      out.write("              >\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("              <a\r\n");
      out.write("                href=\"Map.jsp\"\r\n");
      out.write("                class=\"navbar-text block py-4 pl-6 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                >MAP</a\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- end navbar -->\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- end header -->\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write(' ');
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <!-- Gá»i tá»p head.html -->\r\n");
      out.write("    <link rel=\"import\" href=\"components/breadcrumb.html\" />\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    <!-- Breadcrumb -->\r\n");
      out.write("    <nav\r\n");
      out.write("      class=\"flex bg-gray-50 text-gray-700 py-3 px-5 dark:bg-gray-800 dark:border-gray-700\"\r\n");
      out.write("      aria-label=\"Breadcrumb\"\r\n");
      out.write("    >\r\n");
      out.write("      <ol class=\"inline-flex items-center space-x-1 md:space-x-3\">\r\n");
      out.write("        <li class=\"inline-flex items-center\">\r\n");
      out.write("          <a\r\n");
      out.write("              href=\"../homepage.jsp\"\r\n");
      out.write("            class=\"text-sm text-gray-700 hover:text-gray-900 inline-flex items-center dark:text-gray-400 dark:hover:text-white\"\r\n");
      out.write("          >\r\n");
      out.write("            <svg\r\n");
      out.write("              class=\"w-4 h-4 mr-2\"\r\n");
      out.write("              fill=\"currentColor\"\r\n");
      out.write("              viewBox=\"0 0 20 20\"\r\n");
      out.write("              xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("            >\r\n");
      out.write("              <path\r\n");
      out.write("                d=\"M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z\"\r\n");
      out.write("              ></path>\r\n");
      out.write("            </svg>\r\n");
      out.write("            Home\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li aria-current=\"page\">\r\n");
      out.write("          <div class=\"flex items-center\">\r\n");
      out.write("            <svg\r\n");
      out.write("              class=\"w-6 h-6 text-gray-400\"\r\n");
      out.write("              fill=\"currentColor\"\r\n");
      out.write("              viewBox=\"0 0 20 20\"\r\n");
      out.write("              xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("            >\r\n");
      out.write("              <path\r\n");
      out.write("                fill-rule=\"evenodd\"\r\n");
      out.write("                d=\"M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z\"\r\n");
      out.write("                clip-rule=\"evenodd\"\r\n");
      out.write("              ></path>\r\n");
      out.write("            </svg>\r\n");
      out.write("            <span\r\n");
      out.write("              id=\"pageName\"\r\n");
      out.write("              class=\"text-gray-400 ml-1 md:ml-2 text-sm font-medium dark:text-gray-500\"\r\n");
      out.write("              >News</span\r\n");
      out.write("            >\r\n");
      out.write("            <script>\r\n");
      out.write("              // Láº¥y tÃªn trang tá»« URL\r\n");
      out.write("              var currentPage = window.location.pathname\r\n");
      out.write("                .split(\"/\")\r\n");
      out.write("                .pop()\r\n");
      out.write("                .split(\".\")\r\n");
      out.write("                .shift();\r\n");
      out.write("\r\n");
      out.write("              // GÃ¡n tÃªn trang vÃ o pháº§n tá»­ cÃ³ id \"pageName\"\r\n");
      out.write("              document.getElementById(\"pageName\").innerHTML = currentPage;\r\n");
      out.write("            </script>\r\n");
      out.write("          </div>\r\n");
      out.write("        </li>\r\n");
      out.write("      </ol>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- end breadcrumb -->\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("  <body>\r\n");
      out.write("    <div class=\"w-[1500] h-screen mx-auto bg-green-100 custom-bg\">\r\n");
      out.write("      <!-- Progress Steps -->\r\n");
      out.write("      <div class=\"w-full\">\r\n");
      out.write("        <div class=\"flex justify-center py-4 bg-gray-50 rounded-b-lg\">\r\n");
      out.write("          <!-- Bước 1 -->\r\n");
      out.write("          <div class=\"w-1/6\">\r\n");
      out.write("            <div class=\"relative mb-2\">\r\n");
      out.write("              <div\r\n");
      out.write("                class=\"w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center\"\r\n");
      out.write("              >\r\n");
      out.write("                <span class=\"text-center text-white w-full\">\r\n");
      out.write("                  <i class=\"fa-solid fa-ticket\"></i>\r\n");
      out.write("                </span>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"text-xs text-center md:text-base\">Choose ticket</div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- Bước 2 -->\r\n");
      out.write("          <div class=\"w-1/6\">\r\n");
      out.write("            <div class=\"relative mb-2\">\r\n");
      out.write("              <div\r\n");
      out.write("                class=\"absolute flex align-center items-center align-middle content-center\"\r\n");
      out.write("                style=\"\r\n");
      out.write("                  width: calc(100% - 2.5rem - 1rem);\r\n");
      out.write("                  top: 50%;\r\n");
      out.write("                  transform: translate(-50%, -50%);\r\n");
      out.write("                \"\r\n");
      out.write("              >\r\n");
      out.write("                <div\r\n");
      out.write("                  class=\"w-full bg-green-500 rounded items-center align-middle align-center flex-1\"\r\n");
      out.write("                >\r\n");
      out.write("                  <div\r\n");
      out.write("                    class=\"w-0 bg-green-500 py-1 rounded\"\r\n");
      out.write("                    style=\"width: 100%\"\r\n");
      out.write("                  ></div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div\r\n");
      out.write("                class=\"w-10 h-10 mx-auto bg-gray-300 rounded-full text-lg text-white flex items-center\"\r\n");
      out.write("              >\r\n");
      out.write("                <span class=\"text-center text-white w-full\">\r\n");
      out.write("                  <svg\r\n");
      out.write("                    class=\"w-full fill-current\"\r\n");
      out.write("                    xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                    viewBox=\"0 0 24 24\"\r\n");
      out.write("                    width=\"24\"\r\n");
      out.write("                    height=\"24\"\r\n");
      out.write("                  >\r\n");
      out.write("                    <path\r\n");
      out.write("                      class=\"heroicon-ui\"\r\n");
      out.write("                      d=\"M19 10h2a1 1 0 0 1 0 2h-2v2a1 1 0 0 1-2 0v-2h-2a1 1 0 0 1 0-2h2V8a1 1 0 0 1 2 0v2zM9 12A5 5 0 1 1 9 2a5 5 0 0 1 0 10zm0-2a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm8 11a1 1 0 0 1-2 0v-2a3 3 0 0 0-3-3H7a3 3 0 0 0-3 3v2a1 1 0 0 1-2 0v-2a5 5 0 0 1 5-5h5a5 5 0 0 1 5 5v2z\"\r\n");
      out.write("                    ></path>\r\n");
      out.write("                  </svg>\r\n");
      out.write("                </span>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"text-xs text-center md:text-base\">Payment</div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- Bước 3 -->\r\n");
      out.write("          <div class=\"w-1/6\">\r\n");
      out.write("            <div class=\"relative mb-2\">\r\n");
      out.write("              <div\r\n");
      out.write("                class=\"absolute flex align-center items-center align-middle content-center\"\r\n");
      out.write("                style=\"\r\n");
      out.write("                  width: calc(100% - 2.5rem - 1rem);\r\n");
      out.write("                  top: 50%;\r\n");
      out.write("                  transform: translate(-50%, -50%);\r\n");
      out.write("                \"\r\n");
      out.write("              >\r\n");
      out.write("                <div\r\n");
      out.write("                  class=\"w-full bg-gray-200 rounded items-center align-middle align-center flex-1\"\r\n");
      out.write("                >\r\n");
      out.write("                  <div\r\n");
      out.write("                    class=\"w-0 bg-green-300 py-1 rounded\"\r\n");
      out.write("                    style=\"width: 0%\"\r\n");
      out.write("                  ></div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div\r\n");
      out.write("                class=\"w-10 h-10 mx-auto bg-white border-2 border-gray-200 rounded-full text-lg text-white flex items-center\"\r\n");
      out.write("              >\r\n");
      out.write("                <span class=\"text-center text-gray-600 w-full\">\r\n");
      out.write("                  <svg\r\n");
      out.write("                    class=\"w-full fill-current\"\r\n");
      out.write("                    xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                    viewBox=\"0 0 24 24\"\r\n");
      out.write("                    width=\"24\"\r\n");
      out.write("                    height=\"24\"\r\n");
      out.write("                  >\r\n");
      out.write("                    <path\r\n");
      out.write("                      class=\"heroicon-ui\"\r\n");
      out.write("                      d=\"M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-2.3-8.7l1.3 1.29 3.3-3.3a1 1 0 0 1 1.4 1.42l-4 4a1 1 0 0 1-1.4 0l-2-2a1 1 0 0 1 1.4-1.42z\"\r\n");
      out.write("                    ></path>\r\n");
      out.write("                  </svg>\r\n");
      out.write("                </span>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"text-xs text-center md:text-base\">Finished</div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- end Progress Steps -->\r\n");
      out.write("\r\n");
      out.write("      <!-- manage cart -->\r\n");
      out.write("      <section class=\"w-2/3 text-gray-600 antialiased mx-auto\" x-data=\"app\">\r\n");
      out.write("        <div class=\"flex flex-col\">\r\n");
      out.write("          <!-- Table -->\r\n");
      out.write("          <div\r\n");
      out.write("            class=\"border border-gray-200 rounded-md bg-white shadow-sm mt-14\"\r\n");
      out.write("          >\r\n");
      out.write("            <header\r\n");
      out.write("              class=\"border-b border-gray-100 px-10 py-8 flex items-center\"\r\n");
      out.write("            >\r\n");
      out.write("              <!-- back button -->\r\n");
      out.write("              <div>\r\n");
      out.write("                <a\r\n");
      out.write("                  href=\"shop\"\r\n");
      out.write("                  class=\"btn group flex items-center bg-transparent text-xl font-thin tracking-widest text-white back-button\"\r\n");
      out.write("                >\r\n");
      out.write("                  <svg\r\n");
      out.write("                    viewBox=\"0 0 46 16\"\r\n");
      out.write("                    height=\"15\"\r\n");
      out.write("                    width=\"35\"\r\n");
      out.write("                    xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                    id=\"arrow-horizontal\"\r\n");
      out.write("                    class=\"-translate-x-2 fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white\"\r\n");
      out.write("                  >\r\n");
      out.write("                    <path\r\n");
      out.write("                      transform=\"scale(-1, 1) translate(-30)\"\r\n");
      out.write("                      d=\"M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z\"\r\n");
      out.write("                      data-name=\"Path 10\"\r\n");
      out.write("                      id=\"Path_10\"\r\n");
      out.write("                    ></path>\r\n");
      out.write("                  </svg>\r\n");
      out.write("                  <span\r\n");
      out.write("                    class=\"relative pb-1 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100\"\r\n");
      out.write("                    >Back</span\r\n");
      out.write("                  >\r\n");
      out.write("                </a>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- end back -->\r\n");
      out.write("              <div class=\"font-semibold text-4xl text-gray-800 mx-auto pr-20\">\r\n");
      out.write("                <h1>Manage Carts</h1>\r\n");
      out.write("              </div>\r\n");
      out.write("            </header>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"overflow-x-auto p-3\">\r\n");
      out.write("              <table class=\"w-full table-auto\">\r\n");
      out.write("                <thead\r\n");
      out.write("                  class=\"bg-gray-50 text-xl font-semibold uppercase text-gray-400\"\r\n");
      out.write("                >\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <th class=\"p-2\">\r\n");
      out.write("                      <div class=\"text-left font-semibold\">Product Name</div>\r\n");
      out.write("                    </th>\r\n");
      out.write("\r\n");
      out.write("                    <th class=\"p-2\">\r\n");
      out.write("                      <div class=\"text-left font-semibold\">Quantity</div>\r\n");
      out.write("                    </th>\r\n");
      out.write("                    <th class=\"p-2\">\r\n");
      out.write("                      <div class=\"text-left font-semibold\">Sub Total</div>\r\n");
      out.write("                    </th>\r\n");
      out.write("                    <th class=\"p-2\">\r\n");
      out.write("                      <div class=\"text-left font-semibold\">Total</div>\r\n");
      out.write("                    </th>\r\n");
      out.write("                    <th class=\"p-2\">\r\n");
      out.write("                      <div class=\"text-center font-semibold\">Action</div>\r\n");
      out.write("                    </th>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("\r\n");
      out.write("                <tbody class=\"divide-y divide-gray-100 text-3xl\">\r\n");
      out.write("                  <!-- record 1 -->\r\n");
      out.write("                  ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                  ");
      if (_jspx_meth_c_set_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                  ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                </tbody>\r\n");
      out.write("              </table>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- total amount -->\r\n");
      out.write("            <div\r\n");
      out.write("              class=\"flex justify-end space-x-4 border-t border-gray-100 px-5 pt-4 pb-2 text-2xl font-bold\"\r\n");
      out.write("            >\r\n");
      out.write("              <div>Total</div>\r\n");
      out.write("              <div class=\"text-blue-600\">$ ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.totalMoney}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- end total -->\r\n");
      out.write("\r\n");
      out.write("            <!-- Confirm -->\r\n");
      out.write("            <div\r\n");
      out.write("              class=\"flex justify-center pt-4 mb-4 mr-4 border-t border-gray-100\"\r\n");
      out.write("            >\r\n");
      out.write("              <form action=\"./checkout.jsp\" method=\"post\">\r\n");
      out.write("                <input\r\n");
      out.write("                  type=\"submit\"\r\n");
      out.write("                  value=\"Checkout\"\r\n");
      out.write("                  class=\"cursor-pointer bg-neutral-200 rounded-md px-12 py-4 text-2xl border-none text-neutral-600 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-blue-500 duration-[400ms,700ms] transition-[color,box-shadow]\"\r\n");
      out.write("                />\r\n");
      out.write("              </form>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- end confim -->\r\n");
      out.write("            <div class=\"flex justify-end\">\r\n");
      out.write("              <!-- send this data to backend (note: use class 'hidden' to hide this input) -->\r\n");
      out.write("              <input\r\n");
      out.write("                type=\"hidden\"\r\n");
      out.write("                class=\"border border-black bg-gray-50\"\r\n");
      out.write("                x-model=\"selected\"\r\n");
      out.write("              />\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </section>\r\n");
      out.write("    </div>\r\n");
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

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("o");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.cart}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_set_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent(null);
    _jspx_th_c_set_1.setVar("tt");
    _jspx_th_c_set_1.setValue(new String("0"));
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.items}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("i");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                    ");
          if (_jspx_meth_c_set_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                    <tr>\r\n");
          out.write("                      <td class=\"p-2\">\r\n");
          out.write("                        <div>\r\n");
          out.write("                          <div class=\"font-medium text-gray-800\">\r\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.product.type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          </div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                      </td>\r\n");
          out.write("                      <td class=\"p-2\">\r\n");
          out.write("                        <div class=\"text-left\">\r\n");
          out.write("                          <button>\r\n");
          out.write("                            <a href=\"process?num=-1&id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.product.tid}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">-</a>\r\n");
          out.write("                          </button>\r\n");
          out.write("                          ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                          <button>\r\n");
          out.write("                            <a href=\"process?num=1&id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.product.tid}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">+</a>\r\n");
          out.write("                          </button>\r\n");
          out.write("                        </div>\r\n");
          out.write("                      </td>\r\n");
          out.write("                      <td class=\"p-2\">\r\n");
          out.write("                        <div class=\"text-left font-medium text-green-500\">\r\n");
          out.write("                          $");
          if (_jspx_meth_fmt_formatNumber_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                        </div>\r\n");
          out.write("                      </td>\r\n");
          out.write("                      <td class=\"p-2\">\r\n");
          out.write("                        <div class=\"text-left font-medium text-green-500\">\r\n");
          out.write("                          $");
          if (_jspx_meth_fmt_formatNumber_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                        </div>\r\n");
          out.write("                      </td>\r\n");
          out.write("                      <td class=\"p-2\">\r\n");
          out.write("                        <div class=\"flex justify-center items-center\">\r\n");
          out.write("                          <form action=\"process\" method=\"post\">\r\n");
          out.write("                            <input\r\n");
          out.write("                              type=\"hidden\"\r\n");
          out.write("                              name=\"id\"\r\n");
          out.write("                              value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.product.tid}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\r\n");
          out.write("                            />\r\n");
          out.write("                            <button\r\n");
          out.write("                              class=\"flex p-3 bg-red-600 rounded-xl hover:rounded-3xl hover:bg-red-300 transition-all duration-300 text-white\"\r\n");
          out.write("                              onclick=\"return confirmDelete();\"\r\n");
          out.write("                            >\r\n");
          out.write("                              <i\r\n");
          out.write("                                fill=\"none\"\r\n");
          out.write("                                viewBox=\"0 0 24 24\"\r\n");
          out.write("                                stroke=\"currentColor\"\r\n");
          out.write("                                stroke-width=\"2\"\r\n");
          out.write("                                class=\"fas fa-trash-alt\"\r\n");
          out.write("                              ></i>\r\n");
          out.write("                            </button>\r\n");
          out.write("                          </form>\r\n");
          out.write("                        </div>\r\n");
          out.write("\r\n");
          out.write("                        <script>\r\n");
          out.write("                          function confirmDelete() {\r\n");
          out.write("                            var result = confirm(\"Do you want to delete this?\");\r\n");
          out.write("                            return result;\r\n");
          out.write("                          }\r\n");
          out.write("                        </script>\r\n");
          out.write("                      </td>\r\n");
          out.write("                    </tr>\r\n");
          out.write("                  ");
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

  private boolean _jspx_meth_c_set_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_2 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_2.setPageContext(_jspx_page_context);
    _jspx_th_c_set_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_2.setVar("tt");
    _jspx_th_c_set_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tt+1}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_2 = _jspx_th_c_set_2.doStartTag();
    if (_jspx_th_c_set_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
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
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_1.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_fmt_formatNumber_1.setPattern("##.#");
    _jspx_th_fmt_formatNumber_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${(i.price*i.quantity)}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_fmt_formatNumber_1 = _jspx_th_fmt_formatNumber_1.doStartTag();
    if (_jspx_th_fmt_formatNumber_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_1);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_1);
    return false;
  }
}
