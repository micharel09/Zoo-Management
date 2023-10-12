<%-- Document : update_anime Created on : Oct 6, 2023, 9:57:04 AM Author : ADMIN
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- loading -->
    <iframe
      id="loading-iframe"
      src="components/loading.html"
      frameborder="0"
      style="
        border: none;
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        z-index: 999;
        background: transparent; /* Make the iframe background transparent */
        pointer-events: none; /* Allow interaction with elements behind the iframe */
        transition: opacity 1s;
      "
    ></iframe>

    <script>
      window.addEventListener("load", function () {
        // Code xử lý sau khi trang đã nạp hoàn toàn ở đây
        var iframe = document.getElementById("loading-iframe");
        if (iframe) {
          iframe.style.zIndex = 0;
          iframe.classList.add("hidden-iframe");
        }
      });
    </script>
    <style>
      .hidden-iframe {
        opacity: 0;
      }
    </style>
    <!-- end loading -->
    <title>JSP Page</title>
  </head>
  <body>
    <form action="update" method="post">
      id
      <input value="${feedback.feedback_id}" type="hidden" name="id" />

      processnote
      <input value="${feedback.processnote}" type="text" name="processnote" />
      <br />

      <select name="status">
        <option>${feedback.status}</option>
        <option>APPROVED</option>
        <option>REJECTED</option>
      </select>

      <input type="submit" value="Submit" />
    </form>
  </body>
</html>
