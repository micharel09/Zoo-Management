<%-- Document : edit Created on : Sep 29, 2023, 11:57:29 AM Author : ACER --%>
<!-- prettier-ignore -->
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Create Page</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <title>Update</title>
  </head>
  <body>
    <!-- MAIN CONTENT -->

    <div class="bg-green-500 min-h-screen flex items-center">
      <div class="bg-white p-10 md:w-2/3 lg:w-1/2 mx-auto rounded">
        <div class="max-w-2xl mx-auto">
          <form action="MainController" method="POST">
            <!--        <label for="userID">Employee ID:</label>
                        <input type="text" name="userID" id="userID" required><br>-->
            <% UserDTO user =(UserDTO) session.getAttribute("EMPLOYEE_UPDATE");
            %>
            <h1>EDIT ACCOUNT <%=user.getEmployee_id()%></h1>

            <div class="relative z-0 mb-6 w-full group">
              <input
                class="block py-2.5 px-0 w-full text-sm bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                type="hidden"
                name="userID"
                id="userID"
                value="<%=user.getEmployee_id()%>"
                required=""
              />
              <label
                class="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                for="fullName"
                >Full Name:</label
              >
            </div>
            <!-- div 1 -->
            <div class="grid xl:grid-cols-2 xl:gap-6">
              <div class="relative z-0 mb-6 w-full group">
                <input
                  class="block py-2.5 px-0 w-full text-sm bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                  type="tel"
                  name="Phone"
                  id="Phone"
                  placeholder=" "
                  required
                  pattern="[0-9]{10}"
                  title="Số điện thoại phải có 10 chữ số"
                />

                <label
                  class="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                  for="Phone"
                  >Phone :</label
                >
              </div>
              <div class="relative z-0 mb-6 w-full group">
                <input
                  type="email"
                  name="Email"
                  value="<%=user.getEmail()%>"
                  id="Email"
                  required
                  class="block py-2.5 px-0 w-full text-sm bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                  placeholder=" "
                />
                <label
                  class="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                  for="Email"
                  >Email :</label
                >
              </div>
            </div>
            <!-- div 1 end -->
            <!-- div 2-->
            <div class="grid xl:grid-cols-2 xl:gap-6">
              <div class="relative z-0 mb-6 w-full group">
                <label for="Gender">Gender :</label>
                <select name="Gender" id="Gender">
                    <option value="Male" <%= user.getGender().equals("Male") ? "selected" : "" %>>Male</option>
                    <option value="FeMale" <%= user.getGender().equals("FeMale") ? "selected" : "" %>>Female</option>
                </select>
              </div>
              <div class="relative z-0 mb-6 w-full group">
                <label for="roleID">Role ID : </label>
                <select name="roleID" id="roleID">
                    <option value="ADMIN" <%= user.getRoleID().equals("ADMIN") ? "selected" : "" %>>ADMIN</option>
                    <option value="MANAGER" <%= user.getRoleID().equals("MANAGER") ? "selected" : "" %>>MANAGER</option>
                    <option value="TRAINER" <%= user.getRoleID().equals("TRAINER") ? "selected" : "" %>>TRAINER</option>
                </select>
              </div>
            </div>
            <!-- end div 2 -->
            <!-- div 3 -->
            <!-- <div class="grid xl:grid-cols-2 xl:gap-6">
              <div class="relative z-0 mb-6 w-full group">
                <input
                  class="block py-2.5 px-0 w-full text-sm bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                  placeholder=" "
                  type="password"
                  name="password"
                  id="password"
                  required
                />
                <label
                  class="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                  for="password"
                  >Password:</label
                >
              </div>
              <div class="relative z-0 mb-6 w-full group">
                <input
                  class="block py-2.5 px-0 w-full text-sm bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                  placeholder=" "
                  type="password"
                  name="confirm"
                  id="confirm"
                  required
                />
                <label
                  class="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                  for="confirm"
                  >Confirm:</label
                >
              </div>
            </div> -->
            <!-- end div 3  -->
            <script>
              // Lấy các phần tử DOM cần sử dụng
              const passwordInput = document.getElementById("password");
              const confirmInput = document.getElementById("confirm");
              const showPasswordCheckbox =
                document.getElementById("showPassword");

              // Xử lý sự kiện khi checkbox "Show Password" thay đổi
              showPasswordCheckbox.addEventListener("change", function () {
                if (this.checked) {
                  // Nếu checkbox được chọn, hiện mật khẩu
                  passwordInput.type = "text";
                  confirmInput.type = "text";
                } else {
                  // Nếu checkbox không được chọn, ẩn mật khẩu
                  passwordInput.type = "password";
                  confirmInput.type = "password";
                }
              });
            </script>
            <div class="flex justify-center">
              <button
                class="middle none center mr-4 rounded-lg bg-blue-500 py-3 px-6 font-sans text-xs font-bold uppercase text-white shadow-md shadow-blue-500/20 transition-all hover:shadow-lg hover:shadow-blue-500/40 focus:opacity-[0.85] focus:shadow-none active:opacity-[0.85] active:shadow-none disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none"
                data-ripple-light="true"
                type="submit"
                name="action"
                value="Create"
              >
                Create
              </button>

              <button
                type="reset"
                value="Reset"
                class="middle none center mr-4 rounded-lg bg-red-500 py-3 px-6 font-sans text-xs font-bold uppercase text-white shadow-md shadow-red-500/20 transition-all hover:shadow-lg hover:shadow-red-500/40 focus:opacity-[0.85] focus:shadow-none active:opacity-[0.85] active:shadow-none disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none"
                data-ripple-light="true"
              >
                Reset
              </button>
            </div>
            <a href="MainController?action=BackAdminPage">Back</a>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
