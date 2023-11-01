// loading
const loadingIframe = document.getElementById("loading-iframe");

setTimeout(() => {
  loadingIframe.style.opacity = 0;
  loadingIframe.classList.add("hidden-iframe");
}, 1500);
// loading

// scrolling
var mousemoveTimeout;

      function hideScrollbar() {
        document.body.style.overflowY = "hidden";
      }
      function showScrollbar() {
        document.body.style.overflowY = "auto";
      }
      document.addEventListener("mousemove", function () {
        // Clear countdown when mouse moves
        clearTimeout(mousemoveTimeout);

        showScrollbar();

        mousemoveTimeout = setTimeout(function () {
          // Hiden scroll
          hideScrollbar();
        }, 3000);
      });
// scrolling

// gridOptions
document.addEventListener("DOMContentLoaded", function () {
    // Get all the images
    const images = document.querySelectorAll(".container img");

    // Create a lightbox container
    const lightbox = document.createElement("div");
    lightbox.classList.add("lightbox");
    document.body.appendChild(lightbox);

    // Function to open the lightbox
    function openLightbox(event) {
      const image = event.target;
      const enlargedImage = document.createElement("img");
      enlargedImage.src = image.src;
      lightbox.innerHTML = "";
      lightbox.appendChild(enlargedImage);
      lightbox.style.display = "flex";

      // Close the lightbox when clicking on it
      lightbox.addEventListener("click", closeLightbox);
    }

    // Function to close the lightbox
    function closeLightbox() {
      lightbox.style.display = "none";
      lightbox.innerHTML = "";
    }

    // Attach click event to each image
    images.forEach(function (image) {
      image.addEventListener("click", openLightbox);
    });
  });
//   end grid

// video player\
window.addEventListener("load", function () {
    const youtubeIframe = document.getElementById("youtube-video");
    youtubeIframe.contentWindow.postMessage(
      '{"event":"command","func":"playVideo","args":""}',
      "*"
    );
  });
// video player

//map & news
function reveal() {
    var reveals = document.querySelectorAll(".reveal");

    for (var i = 0; i < reveals.length; i++) {
      var windowHeight = window.innerHeight;
      var elementTop = reveals[i].getBoundingClientRect().top;
      var elementVisible = 150;

      if (elementTop < windowHeight - elementVisible) {
        reveals[i].classList.add("active");
      } else {
        reveals[i].classList.remove("active");
      }
    }
  }

  window.addEventListener("scroll", reveal);
//map & news

//realtime
window.addEventListener("load", () => {
  clock();
  function clock() {
    const today = new Date();

    // get time components
    const hours = today.getHours();
    const minutes = today.getMinutes();
    const seconds = today.getSeconds();

    //add '0' to hour, minute & second when they are less 10
    const hour = hours < 10 ? "0" + hours : hours;
    const minute = minutes < 10 ? "0" + minutes : minutes;
    const second = seconds < 10 ? "0" + seconds : seconds;

    //make clock a 12-hour time clock
    const hourTime = hour > 12 ? hour - 12 : hour;

    // if (hour === 0) {
    //   hour = 12;
    // }
    //assigning 'am' or 'pm' to indicate time of the day
    const ampm = hour < 12 ? "AM" : "PM";

    // get date components
    const month = today.getMonth();
    const year = today.getFullYear();
    const day = today.getDate();

    //declaring a list of all months in  a year
    const monthList = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];

    //get current date and time
    const date = monthList[month] + " " + day + ", " + year;
    const time = hourTime + ":" + minute + ":" + second + ampm;

    //combine current date and time
    const dateTime = date + " - " + time;

    //print current date and time to the DOM
    document.getElementById("date-time").innerHTML = dateTime;
    setTimeout(clock, 1000);
  }
});