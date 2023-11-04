<%@page import="java.util.List"%> <%@page import="sample.user.UserDTO"%> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title>Responsive Registration Form | CodingLab</title>
    <link rel="stylesheet" href="style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }
    body {
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 10px;
      background: linear-gradient(135deg, #52d789, #307964);
    }
    .container {
      max-width: 700px;
      width: 100%;
      background-color: #fff;
      padding: 25px 30px;
      border-radius: 5px;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
    }
    .container .title {
      font-size: 25px;
      font-weight: 500;
      position: relative;
    }
    .container .title::before {
      content: "";
      position: absolute;
      left: 0;
      bottom: 0;
      height: 3px;
      width: 30px;
      border-radius: 5px;
      background: linear-gradient(135deg, #52d789, #307964);
    }
    .content form .user-details {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin: 20px 0 12px 0;
    }
    form .user-details .input-box {
      margin-bottom: 15px;
      width: calc(100% / 2 - 20px);
    }
    form .input-box span.details {
      display: block;
      font-weight: 500;
      margin-bottom: 5px;
    }
    .user-details .input-box input {
      height: 45px;
      width: 100%;
      outline: none;
      font-size: 16px;
      border-radius: 5px;
      padding-left: 15px;
      border: 1px solid #ccc;
      border-bottom-width: 2px;
      transition: all 0.3s ease;
    }
    .user-details .input-box input:focus,
    .user-details .input-box input:valid {
      border-color: #52d789;
    }
    form .gender-details .gender-title {
      font-size: 20px;
      font-weight: 500;
    }
    form .category {
      display: flex;
      width: 80%;
      margin: 14px 0;
      justify-content: space-between;
    }
    form .category label {
      display: flex;
      align-items: center;
      cursor: pointer;
    }
    form .category label .dot {
      height: 18px;
      width: 18px;
      border-radius: 50%;
      margin-right: 10px;
      background: #d9d9d9;
      border: 5px solid transparent;
      transition: all 0.3s ease;
    }
    #dot-1:checked ~ .category label .one,
    #dot-2:checked ~ .category label .two,
    #dot-3:checked ~ .category label .three {
      background: #52d789;
      border-color: #d9d9d9;
    }
    form input[type="radio"] {
      display: none;
    }
    form .button {
      height: 45px;
      margin: 35px 0;
    }
    form .button input {
      height: 100%;
      width: 100%;
      border-radius: 5px;
      border: none;
      color: #fff;
      font-size: 18px;
      font-weight: 500;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.3s ease;
      background: linear-gradient(135deg, #52d789, #376d50);
    }
    form .button input:hover {
      /* transform: scale(0.99); */
      background: linear-gradient(-135deg, #52d789, #376d50);
    }
    @media (max-width: 584px) {
      .container {
        max-width: 100%;
      }
      form .user-details .input-box {
        margin-bottom: 15px;
        width: 100%;
      }
      form .category {
        width: 100%;
      }
      .content form .user-details {
        max-height: 300px;
        overflow-y: scroll;
      }
      .user-details::-webkit-scrollbar {
        width: 5px;
      }
    }
    @media (max-width: 459px) {
      .container .content .category {
        flex-direction: column;
      }
    }
  </style>
  <body>
    <div class="container">
      <div class="flex justify-between">
        <div class="title">Update Account</div>
        <!-- back button -->
        <div class="flex ml-0">
          <a
            onclick="backButton"
            class="cursor-pointer group flex items-center bg-transparent text-2xl font-thin tracking-widest text-white back-button"
          >
            <svg
              viewBox="0 0 46 16"
              height="15"
              width="35"
              xmlns="http://www.w3.org/2000/svg"
              id="arrow-horizontal"
              class="fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white"
            >
              <path
                transform="scale(-1, 1) translate(-30)"
                d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                data-name="Path 10"
                id="Path_10"
              ></path>
            </svg>
            <span
              class="ml-2 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-greeborder-green-400 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
              >Back</span
            >
          </a>
        </div>
        <script>
          // Lấy phần tử "Back" bằng cách sử dụng querySelector
          const backButton = document.querySelector(".back-button");

          // Thêm sự kiện click vào nút "Back"
          backButton.addEventListener("click", function (event) {
            // Ngăn chặn hành vi mặc định của liên kết
            event.preventDefault();

            // Thực hiện hành động "back" trên trình duyệt
            window.history.back();
          });
        </script>
        <!-- end back -->
      </div>
      <div class="content">
        <form action="updatemanager" method="POST">
          <div style="display: flex; align-items: center; margin-top: 4px">
            <h1 style="margin: 0">EDIT ACCOUNT</h1>
          </div>

          <div class="user-details">
            <input
              type="hidden"
              name="userID"
              id="userID"
              value="${employee.employee_id}"
              required=""
            />
            <div class="input-box">
              <span class="details">Full Name</span>
              <input
                type="text"
                name="FullName"
                id="fullName"
                value="${employee.fullname}"
                readonly
              />
            </div>

            <div class="input-box">
              <span class="details">Email</span>
              <input
                type="email"
                name="Email"
                value="${employee.email}"
                id="Email"
                required
              />
            </div>
            <div class="input-box">
              <span class="details">Password</span>
              <input
                type="text"
                name="Password"
                value="${employee.password}"
                id="Email"
                required
              />
            </div>
            <div class="input-box">
              <span class="details">Phone Number</span>
              <input
                type="tel"
                name="Phone"
                value="${employee.phone}"
                id="Phone"
                required
                pattern="[0-9]{10}"
                title="Số điện thoại phải có 10 chữ số"
              />
            </div>
            <a href="error404.jsp"></a>

            <div class="input-box mx-auto">
              <span class="details text-center font-bold uppercase text-2xl"
                >Photo</span
              >
              <img src="${employee.photo}" class="mx-auto w-1/2 h-full" />
            </div>
          </div>

          <div class="button">
            <input type="submit" value="Update_Acount" />
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
