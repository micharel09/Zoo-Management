<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap"
      rel="stylesheet"
    />
    <!-- Tailwind -->
    <script src="https://cdn-tailwindcss.vercel.app/"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
      rel="stylesheet"
    />
    <link href="./css/tailwind.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
    />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js"
      defer
    ></script>
    <script
      src="https://kit.fontawesome.com/5b0b34b925.js"
      crossorigin="anonymous"
    ></script>
    <title>Update News</title>
  </head>
  <body class="bg-gray-500">
    <!-- MAIN CONTENT -->
      <section
        class="max-w-4xl p-6 mx-auto bg-white rounded-md shadow-md mt-12 "
      >
      <h3 class="font-bold text-3xl">Edit</h3>

  <form action="updatenews" method="POST" enctype="multipart/form-data">
        <div class="grid grid-cols-1 gap-6 mt-4 sm:grid-cols-2">
           
    <!-- ID Input -->
        <input name="newsid" type="hidden" value="${updatenews.news_id}" placeholder="Enter ID" class=""/>
                      
    <!-- Title -->
            <div>
              <label for="movie-url" class="block text-sm text-gray-500 ">Title</label>

              <div class="flex items-center mt-2">
                <i class="fas fa-font absolute w-6 h-6 m-3 flex items-center justify-center"></i>

                <input name="title" type="text" value="${updatenews.title}" placeholder="enter tittle"
                       class="block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5"
                       />
              </div>
              <p class="mt-3 text-xs text-red-400"></p>
            </div>
            
    <!-- Content Input -->
            
            <div>
              <label for="content" class="block text-sm text-gray-500 ">Content</label>
              <textarea name="content" 
                placeholder="${updatenews.content}"
                class="block mt-2 w-full rounded-lg border bg-white px-4 h-36 py-2.5"></textarea>
            </div>
           
    <!-- Thumbnail URL Input -->
            
            <div>          
               Photo
            <c:if test="${updatenews.photo != null}">
                <img src="./news_picture/${updatenews.photo}" width="80" height="70"/>
            </c:if>
                <input type="file" class="form-control" name="photo" id="photoInput" placeholder="Enter photo">
            </div>

    <!-- RELEASE DATE Input -->
            
            <div>
                <label for="release" class="block text-sm text-gray-500">Release Date</label>
                <input name="day" type="date"
                       
                       value="day"
                       max="<%= java.time.LocalDate.now() %>"
                       class="block mt-2 w-full rounded-lg border bg-white px-5 py-2.5"/>
                <p class="mt-3 text-xs text-red-400"></p>
            </div>
        </div>
          
    <!-- Button: Cancel and Save -->  
        <div class="flex justify-end mt-6">
            <div class="pr-2">
              <button class="px-6 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600">
                <a href="news.jsp" onclick="return cancelRedirect();">Cancel</a>
              </button>
            </div>
            
            <script>
              function cancelRedirect() {
                window.location.href = "news.jsp";
                return false;
              }
            </script>
            
            <input type="submit" value="Submit"/>
        </div>
          <!-- end button -->
    </form>
      </section>
  </body>
</html>
