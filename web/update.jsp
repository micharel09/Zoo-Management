<%-- 
    Document   : edit
    Created on : Sep 29, 2023, 11:57:29 AM
    Author     : ACER
--%>

<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-storage.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link rel="stylesheet" href="./index.css" />
    
    <form action="MainController" method="POST">
<!--        <label for="userID">Employee ID:</label>
        <input type="text" name="userID" id="userID" required><br>-->
        <%  
           UserDTO user =(UserDTO) session.getAttribute("EMPLOYEE_UPDATE");
        %>
       <h1>EDIT ACCOUNT <%=user.getEmployee_id()%></h1>
      <input type="hidden" name="userID" id="userID" value="<%=user.getEmployee_id()%>"required=""><br>
        <label for="fullName">Full Name:</label>
        <input type="text" name="FullName" id="fullName" value="<%=user.getFullname()%>"required=""><br>
        
        
        <label for="Phone">Phone :</label>
       <input type="tel" name="Phone" value="<%=user.getPhone()%>" id="Phone" required pattern="[0-9]{10}" title="Số điện thoại phải có 10 chữ số">



         <label for="Email">Email :</label>
        <input type="email" name="Email" value="<%=user.getEmail()%>"id="Email" required=""><br>
        
        
      <label for="Gender">Gender:</label>
<select name="Gender" id="Gender">
    <option value="Male" <%= user.getGender().equals("Male") ? "selected" : "" %>>Male</option>
    <option value="FeMale" <%= user.getGender().equals("FeMale") ? "selected" : "" %>>Female</option>
</select><br> 
       <label for="roleID">Role ID:</label>
<select name="roleID" id="roleID">
    <option value="ADMIN" <%= user.getRoleID().equals("ADMIN") ? "selected" : "" %>>ADMIN</option>
    <option value="MANAGER" <%= user.getRoleID().equals("MANAGER") ? "selected" : "" %>>MANAGER</option>
    <option value="TRAINER" <%= user.getRoleID().equals("TRAINER") ? "selected" : "" %>>TRAINER</option>
</select><br>





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

<!--<div class="imageUpload">
        <input type="file" class="inp"   onchange="getImageData(event)" />
        <input id="photo" type="hidden" name="photo" value="">
      <button onclick="selectImage()" class="selectImage">Select Images</button>
      <span class="filedata"></span>
      <div class="progressBar">
        <div class="progress"></div>
      </div>
      <button onclick="uploadImage()" class="upload">Upload</button>
      <span class="loading">Loading...</span>
      <img class="img" />
      <button onclick="showImages()" class="showImages">Show Images</button>
      <div class="imagesContainer"></div>
    </div>-->

        
       
         <button onclick="uploadImage()" name="action" value="Update_Acount">update</button>
<!--        <input type="submit" name="action" value="Update_Acount">-->
       
        <input type="reset" value="Reset">
        <a href="MainController?action=BackAdminPage">Back</a>     
       
    </form>

 <script>
//      const firebaseConfig = {
//        apiKey: "AIzaSyBWK-QdyoSu-pLr5d1qGsdTcsqDnUI8K4E",
//        authDomain: "nscodeuploadtask-89d0b.firebaseapp.com",
//        projectId: "nscodeuploadtask-89d0b",
//        storageBucket: "nscodeuploadtask-89d0b.appspot.com",
//        messagingSenderId: "324247871370",
//        appId: "1:324247871370:web:7506e69fa759a313e4f273",
//        measurementId: "G-WEN5PRFQ0F"
//      };
//      
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
                  const userID = document.getElementById("userID");
                  const fullName = document.getElementById("fullName");
                  const Phone = document.getElementById("Phone");
                  const Email = document.getElementById("Email");
                  const Gender = document.getElementById("Gender");
                  const roleID = document.getElementById("roleID");
                  photo.value = url;
                  console.log(photo);
                  
                  
                  // Thực hiện yêu cầu AJAX sau khi cập nhật giá trị `photo`
            $.ajax({
              type: "POST",
              url: "UpdateController", // Địa chỉ của máy chủ hoặc Servlet để xử lý yêu cầu
              data: {
        photo: photo.value,
        userID: userID.value,
        fullName: fullName.value,
        Phone: Phone.value,
        Email: Email.value,
        Gender: Gender.value,
        roleID: roleID.value
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

      const showImages = () => {
          event.preventDefault();
        storage.ref('myimages').listAll().then((res) => {
          imagesContainer.innerHTML = ''; // Clear existing images
          res.items.forEach((itemRef) => {
            itemRef.getDownloadURL().then((url) => {
              const imageContainer = document.createElement('div');
              const img = document.createElement('img');
              img.src = url;
              img.style.height = '50px';
              img.style.width = '50px';
              const deleteButton = document.createElement('button');
              deleteButton.innerText = 'Delete';
              deleteButton.onclick = () => deleteImage(itemRef.name);
              deleteButton.className = 'deleteButton';
              imageContainer.appendChild(img);
              imageContainer.appendChild(deleteButton);
              imagesContainer.appendChild(imageContainer);
            });
          });
        }).catch((error) => {
          console.log(error);
        });
      };

      const deleteImage = (inputString) => {
          // Chuỗi đầu vào


// Sử dụng hàm `substring` và `indexOf` để lấy chuỗi con giữa 2 mảnh
const startSubstring = ".com/o/myimages%2F";
const endSubstring = "?alt=media&";
const startIndex = inputString.indexOf(startSubstring) + startSubstring.length;
const endIndex = inputString.indexOf(endSubstring);

if (startIndex >= startSubstring.length && endIndex > startIndex) {
    const result = inputString.substring(startIndex, endIndex);
    console.log(result); // Kết quả: "your_image.jpg"
} else {
    console.log("Không tìm thấy chuỗi con");
}

          
          
          
        const imageRef = storage.ref().child(`myimages/${result}`);
        imageRef.delete().then(() => {
          showImages();
          console.log("Image Deleted Successfully");
        }).catch((error) => {
          console.log("Error Deleting Image:", error);
        });
      };
    </script>
</body>
</html>