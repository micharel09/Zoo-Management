<%-- 
    Document   : payment
    Created on : Sep 26, 2023, 12:13:14 AM
    Author     : khong phai Minh Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"
    ></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
      rel="stylesheet"
    />
    <link href="./css/tailwind.css" rel="stylesheet" />
    <script
      src="https://kit.fontawesome.com/5b0b34b925.js"
      crossorigin="anonymous"
    ></script>
    <style>
      [x-cloak] {
        display: none;
      }

      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80vh;
        margin: 0;
      }
      /* Styling for the confirmation popup */
      .popup-container {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        justify-content: center;
        align-items: center;
        z-index: 2;
      }

      .popup-box {
        background-color: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        text-align: center;
      }
    </style>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/alpinejs@3.13.0/dist/cdn.min.js"
    ></script>
    <title>Payment</title>
  </head>
  <body class="w-[1500px] block overflow-x mx-auto">
    
    <!-- Progress Steps -->
    <div class="w-full">
      <div class="flex justify-center py-4 bg-gray-50 rounded-b-lg">
        <!-- Bước 1 -->
        <div class="w-1/4">
          <div class="relative mb-2">
            <div
              class="w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center"
            >
              <span class="text-center text-white w-full">
                <i class="fa-solid fa-ticket"></i>
              </span>
            </div>
          </div>
          <div class="text-xs text-center md:text-base">Choose ticket</div>
        </div>
        <!-- Bước 2 -->
        <div class="w-1/4">
          <div class="relative mb-2">
            <div
              class="absolute flex align-center items-center align-middle content-center"
              style="
                width: calc(100% - 2.5rem - 1rem);
                top: 50%;
                transform: translate(-50%, -50%);
              "
            >
              <div
                class="w-full bg-gray-200 rounded items-center align-middle align-center flex-1"
              >
                <div
                  class="w-0 bg-green-500 py-1 rounded"
                  style="width: 100%"
                ></div>
              </div>
            </div>

            <div
              class="w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center"
            >
              <span class="text-center text-white w-full">
                <svg
                  class="w-full fill-current"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  width="24"
                  height="24"
                >
                  <path
                    class="heroicon-ui"
                    d="M19 10h2a1 1 0 0 1 0 2h-2v2a1 1 0 0 1-2 0v-2h-2a1 1 0 0 1 0-2h2V8a1 1 0 0 1 2 0v2zM9 12A5 5 0 1 1 9 2a5 5 0 0 1 0 10zm0-2a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm8 11a1 1 0 0 1-2 0v-2a3 3 0 0 0-3-3H7a3 3 0 0 0-3 3v2a1 1 0 0 1-2 0v-2a5 5 0 0 1 5-5h5a5 5 0 0 1 5 5v2z"
                  ></path>
                </svg>
              </span>
            </div>
          </div>
          <div class="text-xs text-center md:text-base">Payment</div>
        </div>
        <!-- Bước 3 -->
        <div class="w-1/4">
          <div class="relative mb-2">
            <div
              class="absolute flex align-center items-center align-middle content-center"
              style="
                width: calc(100% - 2.5rem - 1rem);
                top: 50%;
                transform: translate(-50%, -50%);
              "
            >
              <div
                class="w-full bg-gray-200 rounded items-center align-middle align-center flex-1"
              >
                <div
                  class="w-0 bg-green-300 py-1 rounded"
                  style="width: 0%"
                ></div>
              </div>
            </div>

            <div
              class="w-10 h-10 mx-auto bg-white border-2 border-gray-200 rounded-full text-lg text-white flex items-center"
            >
              <span class="text-center text-gray-600 w-full">
                <svg
                  class="w-full fill-current"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  width="24"
                  height="24"
                >
                  <path
                    class="heroicon-ui"
                    d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-2.3-8.7l1.3 1.29 3.3-3.3a1 1 0 0 1 1.4 1.42l-4 4a1 1 0 0 1-1.4 0l-2-2a1 1 0 0 1 1.4-1.42z"
                  ></path>
                </svg>
              </span>
            </div>
          </div>
          <div class="text-xs text-center md:text-base">Finished</div>
        </div>
      </div>
    </div>
    <!-- end Progress Steps -->
    <!-- MAIN -->
    <div class="bg-white rounded-lg p-8 shadow-lg border border-gray-300 pb-20">
      <!-- Back -->
      <button
        class="btn group flex items-center bg-transparent text-3xl font-thin tracking-widest text-white back-button"
        onclick="showConfirmationPopup()"
      >
        <svg
          viewBox="0 0 46 16"
          height="15"
          width="35"
          xmlns="http://www.w3.org/2000/svg"
          id="arrow-horizontal"
          class="-translate-x-2 fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white"
        >
          <path
            transform="scale(-1, 1) translate(-30)"
            d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
            data-name="Path 10"
            id="Path_10"
          ></path>
        </svg>
        <span
          class="relative pb-1 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
          >Back</span
        >
      </button>
      <!-- end Back -->
      <!-- TEXT PAYMENT -->
      <h1 class="text-center text-4xl font-extralight mb-10">
        Select Payment Method
      </h1>
      <!-- methods -->
      <div class="flex justify-center mt-2">
        <div class="grid grid-cols-2 gap-14">
          <!-- Phương thức 1 -->
          <div
            class="flex items-center pr-8 rounded-lg shadow-lg bg-white border transition duration-300 ease-in-out hover:bg-gray-200 cursor-pointer transform scale-2 momo-payment-button"
          >
            <img class="w-40" src="img/momoicon.png" alt="" />
            <p class="ml-2 text-3xl font-thin">Pay with MOMO</p>
          </div>

          <!-- Phương thức 2 -->
          <div
            class="flex items-center p-4 rounded-lg shadow-lg bg-white border transition duration-300 ease-in-out hover:bg-gray-200 cursor-pointer transform scale-2"
          >
            <img class="w-40" src="img/vnpay.png" alt="" />
            <p class="ml-2 text-3xl font-thin">Pay with VNPay</p>
          </div>

          <!-- Phương thức 3 -->
          <div
            class="flex items-center p-4 rounded-lg shadow-lg bg-white border transition duration-300 ease-in-out hover:bg-gray-200 cursor-pointer transform scale-2"
            onclick="showCreditCardPopup()"
          >
            <img class="w-40" src="img/cards.png" alt="" />
            <p class="ml-2 text-3xl font-thin">Credit/Debit Cards</p>
          </div>

          <!-- Phương thức 4 -->
          <a
            href="#"
            class="flex items-center p-4 rounded-lg shadow-lg bg-white border transition duration-300 ease-in-out hover:bg-gray-200 cursor-pointer transform scale-2 visa-payment-button"
          >
            <img class="w-40" src="img/visa.png" alt="" />
            <p class="ml-2 text-3xl font-thin">Visa</p>
          </a>
        </div>
      </div>
    </div>
    <!-- end methods -->
    <!-- MOMO Popup -->
    <div class="popup-container" id="momoPopup" onclick="hideMomoPopup()">
      <div class="popup-box" onclick="preventPopupClose(event)">
        <!-- Randomly Generated QR Code Goes Here -->
        <div class="text-center">
          <h3
            class="md:text-2xl text-base text-gray-900 font-semibold text-center"
          >
            Scan MOMO QR Code
          </h3>
          <!-- Display the randomly generated QR code image here -->
          <img src="generate_random_qr_code_url_here" alt="Random QR Code" />
          <div class="text-center">
            <button
              class="text-green hover:before:bg-green-500 relative h-[50px] w-40 overflow-hidden border border-green-500 bg-white text-green-500 shadow-2xl transition-all before:absolute before:bottom-0 before:left-0 before:top-0 before:z-0 before:h-full before:w-0 before:bg-green-500 before:transition-all before:duration-500 hover:text-white hover:shadow-green-500 hover:before:left-0 hover:before:w-full"
            >
              <span class="relative z-10">Pay Now</span>
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- end momo popup -->
    <!-- Credit/Debit Card Popup -->
    <div
      class="popup-container"
      id="creditCardPopup"
      onclick="hideCreditCardPopup()"
    >
      <div class="popup-box" onclick="preventPopupClose(event)">
        <!-- Nội dung popup Credit/Debit Card -->
        <div class="h-auto w-80 bg-white p-3 rounded-lg">
          <p class="text-xl font-semibold">Payment Details</p>
          <div class="input_text mt-6 relative">
            <input
              type="text"
              class="h-12 pl-7 outline-none px-2 focus:border-blue-900 transition-all w-full border-b"
              placeholder="John Row"
            />
            <span class="absolute left-0 text-sm -top-4">Cardholder Name</span>
            <i class="absolute left-2 top-4 text-gray-400 fa fa-user"></i>
          </div>
          <div class="input_text mt-8 relative">
            <input
              type="text"
              class="h-12 pl-7 outline-none px-2 focus:border-blue-900 transition-all w-full border-b"
              placeholder="0000 0000 0000 0000"
              data-slots="0"
              data-accept="\d"
              size="19"
            />
            <span class="absolute left-0 text-sm -top-4">Card Number</span>
            <i
              class="absolute left-2 top-[14px] text-gray-400 text-sm fa fa-credit-card"
            ></i>
          </div>
          <div class="mt-8 flex gap-5">
            <div class="input_text relative w-full">
              <input
                type="text"
                class="h-12 pl-7 outline-none px-2 focus:border-blue-900 transition-all w-full border-b"
                placeholder="mm/yyyy"
                data-slots="my"
              />
              <span class="absolute left-0 text-sm -top-4">Expiry</span>
              <i
                class="absolute left-2 top-4 text-gray-400 fa fa-calendar-o"
              ></i>
            </div>
            <div class="input_text relative w-full">
              <input
                type="text"
                class="h-12 pl-7 outline-none px-2 focus:border-blue-900 transition-all w-full border-b"
                placeholder="000"
                data-slots="0"
                data-accept="\d"
                size="3"
              />
              <span class="absolute left-0 text-sm -top-4">CVV</span>
              <i class="absolute left-2 top-4 text-gray-400 fa fa-lock"></i>
            </div>
          </div>
          <div class="text-center mt-6">
            <button
              class="text-green hover:before:bg-green-500 relative h-[50px] w-40 overflow-hidden border border-green-500 bg-white text-green-500 shadow-2xl transition-all before:absolute before:bottom-0 before:left-0 before:top-0 before:z-0 before:h-full before:w-0 before:bg-green-500 before:transition-all before:duration-500 hover:text-white hover:shadow-green-500 hover:before:left-0 hover:before:w-full"
            >
              <span class="relative z-10">Pay Now</span>
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- Visa Popup -->
    <div class="popup-container" id="visaPopup" onclick="hideVisaPopup()">
      <div class="popup-box" onclick="preventPopupClose(event)">
        <!-- Visa Payment Form Goes Here -->
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h2 class="text-lg font-medium mb-6">Payment Information</h2>
          <form>
            <div class="grid grid-cols-2 gap-6">
              <div class="col-span-2 sm:col-span-1">
                <label
                  for="card-number"
                  class="block text-sm font-medium text-gray-700 mb-2"
                  >Card Number</label
                >
                <input
                  type="text"
                  name="card-number"
                  id="card-number"
                  placeholder="0000 0000 0000 0000"
                  class="w-full py-3 px-4 border border-gray-400 rounded-lg focus:outline-none focus:border-blue-500"
                />
              </div>
              <div class="col-span-2 sm:col-span-1">
                <label
                  for="expiration-date"
                  class="block text-sm font-medium text-gray-700 mb-2"
                  >Expiration Date</label
                >
                <input
                  type="text"
                  name="expiration-date"
                  id="expiration-date"
                  placeholder="MM / YY"
                  class="w-full py-3 px-4 border border-gray-400 rounded-lg focus:outline-none focus:border-blue-500"
                />
              </div>
              <div class="col-span-2 sm:col-span-1">
                <label
                  for="cvv"
                  class="block text-sm font-medium text-gray-700 mb-2"
                  >CVV</label
                >
                <input
                  type="text"
                  name="cvv"
                  id="cvv"
                  placeholder="000"
                  class="w-full py-3 px-4 border border-gray-400 rounded-lg focus:outline-none focus:border-blue-500"
                />
              </div>
              <div class="col-span-2 sm:col-span-1">
                <label
                  for="card-holder"
                  class="block text-sm font-medium text-gray-700 mb-2"
                  >Card Holder</label
                >
                <input
                  type="text"
                  name="card-holder"
                  id="card-holder"
                  placeholder="Full Name"
                  class="w-full py-3 px-4 border border-gray-400 rounded-lg focus:outline-none focus:border-blue-500"
                />
              </div>
            </div>
            <div class="text-center mt-6">
              <button
                class="text-green hover:before:bg-green-500 relative h-[50px] w-40 overflow-hidden border border-green-500 bg-white text-green-500 shadow-2xl transition-all before:absolute before:bottom-0 before:left-0 before:top-0 before:z-0 before:h-full before:w-0 before:bg-green-500 before:transition-all before:duration-500 hover:text-white hover:shadow-green-500 hover:before:left-0 hover:before:w-full"
              >
                <span class="relative z-10">Pay Now</span>
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- end visa popup -->
    <!-- Confirmation Popup -->
    <div
      class="popup-container"
      id="confirmationPopup"
      onclick="hideConfirmationPopup()"
    >
      <div class="popup-box">
        <div class="bg-white">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 24 24"
            class="text-red-600 h-16 mx-auto"
          >
            <path
              fill="currentColor"
              d="M20.293,3.293a1,1,0,0,0-1.414,0L12,10.586,5.121,3.707a1,1,0,0,0-1.414,1.414L10.586,12,3.707,18.879a1,1,0,0,0,1.414,1.414L12,13.414l6.879,6.879a1,1,0,0,0,1.414-1.414L13.414,12l6.879-6.879a1,1,0,0,0,0-1.414Z"
            ></path>
          </svg>

          <div class="text-center">
            <h3
              class="md:text-2xl text-base text-gray-900 font-semibold text-center"
            >
              Cancel
            </h3>
            <p class="text-gray-600 my-2">
              Are you sure you want to cancel this transaction?
            </p>
            <div class="text-center">
              <a href="cart.html">
                <button
                  class="text-red hover:before:bg-redborder-red-500 relative h-[50px] w-40 overflow-hidden border border-red-500 bg-white text-red-500 shadow-2xl transition-all before:absolute before:bottom-0 before:left-0 before:top-0 before:z-0 before:h-full before:w-0 before:bg-red-500 before:transition-all before:duration-500 hover:text-white hover:shadow-red-500 hover:before:left-0 hover:before:w-full"
                >
                  <span class="relative z-10">Confirm</span>
                </button>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end confirm  -->
    <script>
      // back
      function showConfirmationPopup() {
        const confirmationPopup = document.getElementById("confirmationPopup");
        confirmationPopup.style.display = "flex";
      }

      function hideConfirmationPopup() {
        const confirmationPopup = document.getElementById("confirmationPopup");
        confirmationPopup.style.display = "none";
        // Add logic to navigate back here
      }

      function cancelConfirmation() {
        const confirmationPopup = document.getElementById("confirmationPopup");
        confirmationPopup.style.display = "none";
      }
      // Hide the confirmation popup when clicking outside of it
      function hideConfirmationPopup() {
        const confirmationPopup = document.getElementById("confirmationPopup");
        confirmationPopup.style.display = "none";
      }
      // visa sccript
      function preventPopupClose(event) {
        event.stopPropagation();
      }

      function showVisaPopup() {
        const visaPopup = document.getElementById("visaPopup");
        visaPopup.style.display = "flex";
      }

      function hideVisaPopup() {
        const visaPopup = document.getElementById("visaPopup");
        visaPopup.style.display = "none";
      }

      // Gọi hàm showVisaPopup khi người dùng chọn phương thức Visa
      document
        .querySelector(".visa-payment-button")
        .addEventListener("click", showVisaPopup);
      // momo
      function preventPopupClose(event) {
        event.stopPropagation();
      }

      function showMomoPopup() {
        const momoPopup = document.getElementById("momoPopup");
        momoPopup.style.display = "flex";
      }
      function hideMomoPopup() {
        const momoPopup = document.getElementById("momoPopup");
        momoPopup.style.display = "none";
      }
      // Gọi hàm showMomoPopup khi người dùng chọn phương thức MOMO
      document
        .querySelector(".momo-payment-button")
        .addEventListener("click", showMomoPopup);
      // CREDIT CARD
      function showCreditCardPopup() {
        const creditCardPopup = document.getElementById("creditCardPopup");
        creditCardPopup.style.display = "flex";
      }

      function hideCreditCardPopup() {
        const creditCardPopup = document.getElementById("creditCardPopup");
        creditCardPopup.style.display = "none";
        // Add logic to navigate back here
      }
      function preventPopupClose(event) {
        event.stopPropagation();
      }
    </script>
  </body>
</html>

