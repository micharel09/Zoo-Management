<%-- Document : animal Created on : Oct 4, 2023, 9:45:11 AM Author : dinhg --%>
<%@page import="java.util.List"%> <%@page import="sample.feedback.FeedbackDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
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
    <title>Feedback List</title>
  </head>
  <body>
    <h1>Feedback List</h1>
    <table border="1">
      <tr>
        <th>Feedback ID</th>
        <th>Title</th>
        <th>Purpose</th>
        <th>Date</th>
        <th>Process Note</th>
        <th>Employee ID</th>
        <th>Status</th>
        <!-- Add more columns for other animal attributes -->
      </tr>
      <c:forEach var="feedback" items="${feedback}">
        <tr>
          <td>${feedback.feedback_id}</td>
          <td>${feedback.title}</td>
          <td>${feedback.purpose}</td>
          <td>${feedback.date}</td>
          <td>${feedback.processnote}</td>
          <td>${feedback.employee_id}</td>
          <td>${feedback.status}</td>

          <td>
            <a
              href="DeleteFeedbackController?feedback_id=${feedback.feedback_id}"
              >Delete</a
            >
          </td>
          <td>
            <a
              href="UpdateFeedbackController?feedback_id=${feedback.feedback_id}"
              >Update</a
            >
          </td>
          <!-- Add more columns for other animal attributes -->
        </tr>
      </c:forEach>
    </table>
    <form action="SearchFeedbackController" method="get">
      <label for="feedback_id">Search Feedback by ID:</label>
      <input type="text" id="feedback_id" name="feedback_id" />
      <input type="submit" value="Search" />
    </form>
  </body>
</html>
