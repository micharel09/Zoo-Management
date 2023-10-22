var quantities = {};
var ticketTypes = {
  T01: "Child",
  T02: "Standard",
};

function validateNumber(input) {
  var value = input.value;
  var intValue = parseInt(value);
  if (isNaN(intValue) || intValue < 0) {
    input.value = 0;
  }
}

// Toast
let defaultToastTop = window.innerHeight - 20; // Position
let toastSpacing = 50; // space between toast
let toastCount = 0; // quantity of toast

function showToast(message) {
    let toast = document.createElement("div");
    toast.className =
      "fixed text-3xl font-extralight p-6 px-10 right-4  bg-green-500 text-white rounded-lg fade-in-right";
    defaultToastTop -= 40 + toastSpacing;
    toast.style.top = defaultToastTop + "px";
    document.body.appendChild(toast);
  
    let toastContent = document.createElement("div");
    toastContent.innerText = message;
    toast.appendChild(toastContent);
  
    // content
    let progressBar = document.createElement("div");
    progressBar.className =
      "h-2 bg-green-600 w-full rounded-b-lg absolute bottom-0 left-0"; 
    toast.appendChild(progressBar);
  
    let timeLeft = 3;
    let progressBarWidth = 100;
    let interval = 10;
  
    let timer = setInterval(function () {
      timeLeft -= interval / 1000;
      progressBarWidth = (timeLeft / 3) * 100;
      progressBar.style.width = progressBarWidth + "%";
  
      if (timeLeft <= 0) {
        clearInterval(timer);
        toast.classList.add("fade-out");
        setTimeout(() => {
          document.body.removeChild(toast);
          toastCount--;
  
          if (toastCount === 0) {
            defaultToastTop = window.innerHeight - 40;
          }
        }, 500);
      }
    }, interval);
  
    toastCount++;
  }
// end toast



// View Cart
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("addToCartButton").addEventListener("click", function () {
      // Xử lý thêm số lượng vào giỏ hàng
      var id = "..."; // Thay thế bằng mã của sản phẩm
      var m = quantities[id];
  
      if (m > 0) {
        // Hiện "View Cart" và áp dụng hiệu ứng fade-in
        var viewCartButton = document.getElementById("viewCartButton");
        viewCartButton.style.display = "block";
        viewCartButton.classList.add("fade-in-right");
      }
    });
  });
  
  


function changeQuantity(id, delta) {
  if (!quantities[id]) {
    quantities[id] = 0;
  }

  var quantityInput = document.querySelector(
    '[data-id="' + id + '"]'
  );
  var currentValue = parseInt(quantityInput.value);

  quantities[id] = currentValue + delta;

  if (quantities[id] >= 0) {
    quantityInput.value = quantities[id];
  }
}

// Input quantity change
function buyTicket(id) {
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "buy", true);
  xhr.setRequestHeader(
    "Content-type",
    "application/x-www-form-urlencoded"
  );

  var inputNum = document.querySelector(
    'input[data-id="' + id + '"]'
  );
  var m = quantities[id];

  if (m === 0) {
    showToast("Please add ticket");
  } else {
    xhr.onload = function () {
      // Xử lý kết quả nếu cần thiết
      console.log(xhr.responseText);
      showToast("Add Successfully!");
    };

    if (m > 0) {
      xhr.send("id=" + id + "&num=" + m);
      console.log(
        `Buying ${m} tickets of ID ${id} (${ticketTypes[id]} ticket`
      );
    }
  }
}