<%-- Document : Schedule_Update_Manager Created on : Oct 23, 2023, 9:29:29 AM
Author : ACER --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-storage.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <link rel="stylesheet" href="./index.css" />
  </head>
  <body class="overflow-y-hidden bg-green-500">
    <!-- prettier-ignore -->
    <%@ include file="components/sidebartrainer.jsp" %>
    <!-- end side bar -->
    <!-- Component Start -->
    <div
      class="shadow-2xl w-1/2 h-1/4 p-5 bg-white rounded-2xl"
      style="position: relative"
    >
      <!-- back button -->
      <div class="flex ml-0">
        <a
          href="Foodingschedule_MainController?action=BackSchedulePage"
          class="group flex items-center bg-transparent text-2xl font-thin tracking-widest text-white back-button"
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
      <!-- end back -->
      <form action="Foodingschedule_MainController" method="POST">
        <div class="imageUpload">
          <input type="file" class="inp" onchange="getImageData(event)" />
          <input id="photo" type="hidden" name="photo" />
          <button
            class="text-2xl hover:bg-green-400 hover:text-white duration-300 px-2 rounded mb-2"
            onclick="selectImage()"
          >
            Select Images
          </button>
          <span class="filedata"></span>
          <div class="progressBar">
            <div class="progress"></div>
          </div>
          <!--
            <button onclick="uploadImage()" class="upload">Upload</button>
            -->
          <span class="loading">Loading...</span>
          <img class="img" /><!--
            -->
        </div>
        <div class="justify-end">
          <button
            class="text-xl px-1 bg-gray-200 hover:bg-green-500 hover:text-white duration-300 rounded"
            onclick="uploadImage()"
            name="action"
            value="Attendance"
            style="position: absolute; bottom: 5%; right: 5%"
          >
            Attendance
          </button>
        </div>
      </form>
    </div>

    <script>
      const firebaseConfig = {
        apiKey: "AIzaSyBShiRCu2h2Cel15zjkFXDpZs9h5i6k68g",
        authDomain: "vantrungbg-342f3.firebaseapp.com",
        //databaseURL: "https://vantrungbg-342f3-default-rtdb.asia-southeast1.firebasedatabase.app",
        projectId: "vantrungbg-342f3",
        storageBucket: "vantrungbg-342f3.appspot.com",
        messagingSenderId: "909264295486",
        appId: "1:909264295486:web:d20dcf5eaad28b1890236f",
        measurementId: "G-E3CVG5KK0J",
      };

      const app = firebase.initializeApp(firebaseConfig);

      const storage = firebase.storage();

      const inp = document.querySelector(".inp");
      const progressbar = document.querySelector(".progress");
      const img = document.querySelector(".img");
      const fileData = document.querySelector(".filedata");
      const loading = document.querySelector(".loading");
      const imagesContainer = document.querySelector(".imagesContainer");
      let file;
      let fileName;
      let progress;
      let isLoading = false;
      let uploadedFileName;
      const selectImage = () => {
        event.preventDefault(); // chặn chuyển trang
        inp.click();
      };
      const getImageData = (e) => {
        file = e.target.files[0];
        fileName = Math.round(Math.random() * 9999) + file.name;
        if (fileName) {
          fileData.style.display = "block";
        }
        fileData.innerHTML = fileName;
        console.log(file, fileName);
      };

      const uploadImage = () => {
        loading.style.display = "block";
        const storageRef = storage.ref().child("myimages");
        const folderRef = storageRef.child(fileName);
        const uploadtask = folderRef.put(file);
        uploadtask.on(
          "state_changed",
          (snapshot) => {
            console.log("Snapshot", snapshot.ref.name);
            progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
            progress = Math.round(progress);
            progressbar.style.width = progress + "%";
            progressbar.innerHTML = progress + "%";
            uploadedFileName = snapshot.ref.name;
          },
          (error) => {
            console.log(error);
          },
          () => {
            storage
              .ref("myimages")
              .child(uploadedFileName)
              .getDownloadURL()
              .then((url) => {
                console.log("URL", url);
                if (!url) {
                  img.style.display = "none";
                } else {
                  img.style.display = "block";
                  loading.style.display = "none";

                  const photo = document.getElementById("photo");

                  photo.value = url;
                  console.log(photo);

                  // Thực hiện yêu cầu AJAX sau khi cập nhật giá trị `photo`
                  $.ajax({
                    type: "POST",
                    url: "Attendance_Controller", // Địa chỉ của máy chủ hoặc Servlet để xử lý yêu cầu
                    data: {
                      photo: photo.value,
                    },
                    success: function (response) {},
                    error: function (error) {
                      console.log("Lỗi: " + error);
                    },
                  });
                }
                img.setAttribute("src", url);
              });
            console.log("File Uploaded Successfully");
          }
        );
      };
    </script>
  </body>
</html>
