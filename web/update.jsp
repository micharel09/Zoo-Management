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
           <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 

    <link rel="stylesheet" href="./index.css" />

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
      <div class="title">Update Employee</div>
      <!-- back button -->
      <div class="flex ml-0">
        <a
          href="MainController?action=BackAdminPage"
          class="group flex items-center bg-transparent text-xl font-thin tracking-widest text-white hover:text-green-500 back-button"
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
            class="ml-2 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-green-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
            >Back</span
          >
        </a>
      </div>
      <!-- end back -->
    </div>
    <div class="content">
    <form action="MainController" method="POST">
<!--        <label for="userID">Employee ID:</label>
        <input type="text" name="userID" id="userID" required><br>-->
        <%  
           UserDTO user =(UserDTO) session.getAttribute("EMPLOYEE_UPDATE");
        %>
       <h1>EDIT ACCOUNT <%=user.getEmployee_id()%></h1>
       <div class="user-details">
      <input type="hidden" name="userID" id="userID" value="<%=user.getEmployee_id()%>"required="">


      <div class="input-box">
        <label for="fullName">Full Name:</label>
        <input type="text" name="FullName" id="fullName" value="<%=user.getFullname()%>"required="">
      </div>
        
      <div class="input-box">

        <label for="Phone">Phone :</label>
       <input type="tel" name="Phone" value="<%=user.getPhone()%>" id="Phone" required pattern="[0-9]{10}" title="Số điện thoại phải có 10 chữ số">
      </div>

       <div class="input-box">

         <label for="Email">Email :</label>
        <input type="email" name="Email" value="<%=user.getEmail()%>"id="Email" required="">
      </div>
        <div class="input-box mt-2">        
      <label for="Gender">Gender:</label>
<select name="Gender" id="Gender">
    <option value="Male" <%= user.getGender().equals("Male") ? "selected" : "" %>>Male</option>
    <option value="FeMale" <%= user.getGender().equals("FeMale") ? "selected" : "" %>>Female</option>
</select>
       <label for="roleID">Role ID:</label>
<select name="roleID" id="roleID">
    <option value="ADMIN" <%= user.getRoleID().equals("ADMIN") ? "selected" : "" %>>ADMIN</option>
    <option value="MANAGER" <%= user.getRoleID().equals("MANAGER") ? "selected" : "" %>>MANAGER</option>
    <option value="TRAINER" <%= user.getRoleID().equals("TRAINER") ? "selected" : "" %>>TRAINER</option>
</select>
</div>
</div>





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

        
       
         <button class="bg-gray-300 p-2 rounded hover:text-white hover:bg-green-500" onclick="uploadImage()" name="action" value="Update_Acount">Update</button>
<!--        <input type="submit" name="action" value="Update_Acount">-->
       
        <input type="reset" value="Reset">
    </form>
  </div>


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
              img.style.height = '200px';
              img.style.width = '300px';
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
        </div>

</body>
</html>