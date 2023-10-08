package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/components/header.html");
    _jspx_dependants.add("/components/breadcrumb.html");
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
      out.write("    <style>\r\n");
      out.write("        .form-bg {\r\n");
      out.write("          background-image: url('img/checkoutbg.png'); /* Thay đổi đường dẫn hình ảnh của bạn */\r\n");
      out.write("          background-size: cover;\r\n");
      out.write("          background-position: center center;\r\n");
      out.write("          background-attachment: fixed; /* Để giữ ảnh nền tĩnh khi cuộn trang */\r\n");
      out.write("        }\r\n");
      out.write("      </style>\r\n");
      out.write("      \r\n");
      out.write("    <title>Checkout</title>\r\n");
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
      out.write("                href=\"#\"\r\n");
      out.write("                class=\"navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-full overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700\"\r\n");
      out.write("                aria-current=\"page\"\r\n");
      out.write("                >ZOO MANAGER\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- end navbar -->\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- end header -->\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write(" \r\n");
      out.write("    ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <!-- Gá»i tá»p head.html -->\r\n");
      out.write("    <link rel=\"import\" href=\"breadcrumb.html\" />\r\n");
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
      out.write("            href=\"Homepage.html\"\r\n");
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
      out.write("  <body>\r\n");
      out.write("    <form action=\"checkout\" method=\"post\" class=\"w-[1500] mx-auto bg-green-100 form-bg rounded-b-3xlf\">\r\n");
      out.write("      <!-- Progress Steps -->\r\n");
      out.write("      <div class=\"w-full\">\r\n");
      out.write("        <div class=\"flex justify-center py-4 bg-gray-50 border-b-1 border-black\">\r\n");
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
      out.write("                class=\"w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center\"\r\n");
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
      out.write("                  class=\"w-full bg-green-500 rounded items-center align-middle align-center flex-1\"\r\n");
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
      out.write("      <!-- Main -->\r\n");
      out.write("      <div class=\"mt-10 bg-gray-50 px-4 pt-8 lg:mt-0 w-1/2 mx-auto rounded-b-3xl border-2 border-black shadow-2xl\">\r\n");
      out.write("        <div class=\"text-center\">\r\n");
      out.write("        <p class=\"text-xl font-medium\">Checkout Details</p>\r\n");
      out.write("        <p class=\"text-gray-400\">\r\n");
      out.write("          Complete your order by providing your payment details.\r\n");
      out.write("        </p>\r\n");
      out.write("    </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"\">\r\n");
      out.write("          <label for=\"email\" class=\"mt-4 mb-2 block text-sm font-medium\"\r\n");
      out.write("            >Email</label\r\n");
      out.write("          >\r\n");
      out.write("          <div class=\"relative\">\r\n");
      out.write("            <input\r\n");
      out.write("              type=\"text\"\r\n");
      out.write("              id=\"email\"\r\n");
      out.write("              name=\"email\"\r\n");
      out.write("              class=\"w-full rounded-md border border-gray-200 px-4 py-3 pl-11 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500\"\r\n");
      out.write("              placeholder=\"your.email@gmail.com\"\r\n");
      out.write("              required\r\n");
      out.write("            />\r\n");
      out.write("            <div\r\n");
      out.write("              class=\"pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3\"\r\n");
      out.write("            >\r\n");
      out.write("              <svg\r\n");
      out.write("                xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                class=\"h-4 w-4 text-gray-400\"\r\n");
      out.write("                fill=\"none\"\r\n");
      out.write("                viewBox=\"0 0 24 24\"\r\n");
      out.write("                stroke=\"currentColor\"\r\n");
      out.write("                stroke-width=\"2\"\r\n");
      out.write("              >\r\n");
      out.write("                <path\r\n");
      out.write("                  stroke-linecap=\"round\"\r\n");
      out.write("                  stroke-linejoin=\"round\"\r\n");
      out.write("                  d=\"M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207\"\r\n");
      out.write("                />\r\n");
      out.write("              </svg>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <label for=\"card-holder\" class=\"mt-4 mb-2 block text-sm font-medium\"\r\n");
      out.write("            >Full Name:\r\n");
      out.write("          </label>\r\n");
      out.write("          <div class=\"relative\">\r\n");
      out.write("            <input\r\n");
      out.write("              type=\"text\"\r\n");
      out.write("              id=\"card-holder\"\r\n");
      out.write("              name=\"fullname\"\r\n");
      out.write("              class=\"w-full rounded-md border border-gray-200 px-4 py-3 pl-11 text-sm uppercase shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500\"\r\n");
      out.write("              placeholder=\"Your full name here\"\r\n");
      out.write("              required\r\n");
      out.write("            />\r\n");
      out.write("            <div\r\n");
      out.write("              class=\"pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3\"\r\n");
      out.write("            >\r\n");
      out.write("              <svg\r\n");
      out.write("                xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                class=\"h-4 w-4 text-gray-400\"\r\n");
      out.write("                fill=\"none\"\r\n");
      out.write("                viewBox=\"0 0 24 24\"\r\n");
      out.write("                stroke=\"currentColor\"\r\n");
      out.write("                stroke-width=\"2\"\r\n");
      out.write("              >\r\n");
      out.write("                <path\r\n");
      out.write("                  stroke-linecap=\"round\"\r\n");
      out.write("                  stroke-linejoin=\"round\"\r\n");
      out.write("                  d=\"M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z\"\r\n");
      out.write("                />\r\n");
      out.write("              </svg>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <label for=\"phone\" class=\"mt-4 mb-2 block text-sm font-medium\"\r\n");
      out.write("            >Phone:\r\n");
      out.write("          </label>\r\n");
      out.write("          <div class=\"flex\">\r\n");
      out.write("            <div class=\"relative w-7/12 flex-shrink-0\">\r\n");
      out.write("              <input\r\n");
      out.write("                type=\"phone\"\r\n");
      out.write("                id=\"phone\"\r\n");
      out.write("                name=\"phone\"\r\n");
      out.write("                class=\"w-full rounded-md border border-gray-200 px-2 py-3 pl-11 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500\"\r\n");
      out.write("                placeholder=\"Your Phone Number\"\r\n");
      out.write("              />\r\n");
      out.write("              <div\r\n");
      out.write("              class=\"pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3\"\r\n");
      out.write("            >\r\n");
      out.write("              <!-- Thay thế mã SVG ở đây -->\r\n");
      out.write("              <svg\r\n");
      out.write("                xmlns=\"http://www.w3.org/2000/svg\"\r\n");
      out.write("                class=\"h-4 w-4 text-gray-400\"\r\n");
      out.write("                fill=\"none\"\r\n");
      out.write("                viewBox=\"0 0 24 24\"\r\n");
      out.write("                stroke=\"currentColor\"\r\n");
      out.write("              >\r\n");
      out.write("                <path\r\n");
      out.write("                  stroke-linecap=\"round\"\r\n");
      out.write("                  stroke-linejoin=\"round\"\r\n");
      out.write("                  stroke-width=\"2\"\r\n");
      out.write("                  d=\"M12 1c-1.95 0-3.61.78-4.89 2.05C6.78 3.39 6 5.05 6 7h.01M6 7c0 2.21.9 4.21 2.36 5.65L10 14l2.65-2.65A7.96 7.96 0 0014 7h-.01M6 7v13a2 2 0 002 2h8a2 2 0 002-2V7m0-6h8a4 4 0 014 4v13a4 4 0 01-4 4H6a4 4 0 01-4-4V5a4 4 0 014-4z\"\r\n");
      out.write("                />\r\n");
      out.write("              </svg>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            </div>\r\n");
      out.write("            <input\r\n");
      out.write("            type=\"date\"\r\n");
      out.write("            name=\"date1\"\r\n");
      out.write("            id=\"date-input\"\r\n");
      out.write("            class=\"w-full rounded-md border border-gray-200 px-2 py-3 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500\"\r\n");
      out.write("            placeholder=\"MM/YY\"\r\n");
      out.write("          />\r\n");
      out.write("          <script>\r\n");
      out.write("            // Lấy ngày hiện tại\r\n");
      out.write("                var currentDate = new Date();\r\n");
      out.write("\r\n");
      out.write("                // Format ngày hiện tại thành chuỗi \"YYYY-MM-DD\" để sử dụng trong thuộc tính min\r\n");
      out.write("                var formattedDate = currentDate.toISOString().split('T')[0];\r\n");
      out.write("\r\n");
      out.write("                // Gán giá trị thuộc tính min cho trường nhập ngày\r\n");
      out.write("                document.getElementById(\"date-input\").setAttribute(\"min\", formattedDate);\r\n");
      out.write("          </script>\r\n");
      out.write("            <input\r\n");
      out.write("              type=\"text\"\r\n");
      out.write("              name=\"promotion\"\r\n");
      out.write("              class=\"w-1/6 flex-shrink-0 rounded-md border border-gray-200 px-2 py-3 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500\"\r\n");
      out.write("              placeholder=\"Promotion\"\r\n");
      out.write("            />\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- Total -->\r\n");
      out.write("          <div class=\"mt-6 border-t border-b py-2\">\r\n");
      out.write("            <div>\r\n");
      out.write("                <p class=\"text-sm font-medium text-gray-900\">Total Amount</p>\r\n");
      out.write("                <p id=\"total-amount\" class=\"text-2xl font-semibold text-gray-900\">$0.00</p>\r\n");
      out.write("              </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <button class=\"mt-4 mb-8 w-1/3 mx-auto px-6 py-3 flex items-center justify-center relative h-12 w-40 overflow-hidden bg-black text-white rounded-md\r\n");
      out.write("        shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 \r\n");
      out.write("        before:rounded-sm before:bg-green-500 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 \r\n");
      out.write("        hover:before:opacity-80\">\r\n");
      out.write("            <input type=\"submit\" value=\"FINISH\" class=\"relative z-10 font-extralight\" />\r\n");
      out.write("          </button>                    \r\n");
      out.write("      </div>\r\n");
      out.write("      </form>\r\n");
      out.write("  \r\n");
      out.write("      <!-- end Main -->\r\n");
      out.write("      <!-- cart -->\r\n");
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
}