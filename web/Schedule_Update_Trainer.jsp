<%-- 
    Document   : Schedule_Update_Manager
    Created on : Oct 23, 2023, 9:29:29 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-storage.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <link rel="stylesheet" href="./index.css" />
    </head>
    <body>
        <form action="Foodingschedule_MainController" method="POST">
        <div class="imageUpload">
            <input type="file" class="inp"   onchange="getImageData(event)" />
            <input id="photo" type="hidden" name="photo" >
            <button onclick="selectImage()" >Select Images</button>
            <span class="filedata"></span>
            <div class="progressBar">
                <div class="progress"></div>
            </div><!--
            <button onclick="uploadImage()" class="upload">Upload</button>
            -->      <span class="loading">Loading...</span>
            <img class="img" /><!--
            -->
        </div>
        
        <button onclick="uploadImage()" name="action" value="Attendance">Attendance</button>
        </form>
        
         <a href="Foodingschedule_MainController?action=BackSchedulePage">Back</a>     
        
        <script>
  
      const firebaseConfig = {
  apiKey: "AIzaSyBShiRCu2h2Cel15zjkFXDpZs9h5i6k68g",
  authDomain: "vantrungbg-342f3.firebaseapp.com",
  //databaseURL: "https://vantrungbg-342f3-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "vantrungbg-342f3",
  storageBucket: "vantrungbg-342f3.appspot.com",
  messagingSenderId: "909264295486",
  appId: "1:909264295486:web:d20dcf5eaad28b1890236f",
  measurementId: "G-E3CVG5KK0J"
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
          event.preventDefault();// chặn chuyển trang
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
        photo: photo.value
       
        
    },
              success: function(response) {
                
              },
              error: function(error) {
                console.log("Lỗi: " + error);
              }
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
