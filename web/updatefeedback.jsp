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
      <div class="title">Check Report/Feedback</div>
      <div class="content">
        <form action="update" method="POST">
          <input type="hidden" name="id" value="${feedback.feedback_id}" />
          <div class="user-details">
            <div class="input-box">
              <span class="details">Title</span>
              <h1
                class="break-all w-full appearance-none rounded-md borderpy-3 px-6 text-xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
              >
                ${feedback.title}
              </h1>
            </div>
            <div class="input-box">
              <span class="details">Purpose</span>
              <h1
                class="break-all w-full appearance-none rounded-md borderpy-3 px-6 text-xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
              >
                ${feedback.purpose}
              </h1>
            </div>
            <div class="input-box">
              <span class="details">Date</span>
              <h1
                class="break-all w-full appearance-none rounded-md borderpy-3 px-6 text-xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
              >
                ${feedback.date}
              </h1>
            </div>
                <div class="input-box">
                    <span class="details">Animal_ID</span>
                    <h1
                        class="break-all w-full appearance-none rounded-md borderpy-3 px-6 text-xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                        >
                        ${feedback.animal_id}
                    </h1>
                </div>
                <label
                    for="guest"
                    class="mt-5 mb-3 block text-xl font-medium "
                    >
                    ProcessNote
                </label>

                <textarea
                    class="w-full appearance-none rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                    name="processnote"
                    ></textarea>


          </div>
          <select
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl font-medium text-red-500 outline-none focus:border-[#6A64F1] focus:shadow-md"
                    name="status"
                    value="${feedback.status}"
                  >
                    <option>APPROVED</option>
                    <option>REJECTED</option>
                  </select>

          <!-- SAVE -->
          <div class="flex justify-end">
            <button
              type="submit"
              value="submit"
              class="mt-5 px-10 py-3 leading-5 ml-auto relative overflow-hidden bg-black text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-400 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
            >
              <p class="relative z-10 font-extralight text-xl">Save</p>
            </button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
