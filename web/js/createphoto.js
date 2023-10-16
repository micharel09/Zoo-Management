const uploadButton = document.getElementById("multi-upload-button");
const multiUploadInput = document.getElementById("multi-upload-input");
const imagesContainer = document.getElementById("images-container");
const multiUploadText = document.getElementById("multi-upload-text");
const multiUploadDeleteButton = document.getElementById("multi-upload-delete");
const currentPhoto = document.getElementById("current-photo");

uploadButton.addEventListener("click", function () {
  multiUploadInput.click();
});

multiUploadInput.addEventListener("change", function (event) {
  if (multiUploadInput.files) {
    const files = multiUploadInput.files;

    multiUploadText.innerHTML = files.length + " files selected";

    // Xóa hình ảnh hiện tại
    if (currentPhoto) {
      currentPhoto.parentElement.removeChild(currentPhoto);
    }

    multiUploadDeleteButton.classList.remove("hidden");

    Object.keys(files).forEach(function (key) {
      const file = files[key];
      const reader = new FileReader();

      reader.onload = function () {
        // Tạo hình ảnh mới và thêm vào container
        const newImage = new Image();
        newImage.src = reader.result;
        newImage.width = currentPhoto ? currentPhoto.width : 800; // Sử dụng kích thước của current-photo hoặc thiết lập một kích thước mặc định
        newImage.height = currentPhoto ? currentPhoto.height : 500; // Sử dụng kích thước của current-photo hoặc thiết lập một kích thước mặc định
        newImage.classList.add("rounded", "mb-2");
        newImage.id = "current-photo";
        imagesContainer.appendChild(newImage);
      };

      reader.readAsDataURL(file);
    });
  }
});

function removeMultiUpload() {
  imagesContainer.innerHTML = "";
  multiUploadInput.value = "";
  multiUploadText.innerHTML = "";
  multiUploadDeleteButton.classList.add("hidden");

  // Khôi phục hình ảnh mặc định
  const defaultImage = new Image();
  defaultImage.src = "default-image.jpg"; // Đường dẫn đến hình ảnh mặc định
  defaultImage.width = 800;
  defaultImage.height = 500;
  defaultImage.id = "current-photo";
  defaultImage.classList.add("rounded", "mb-2");
  imagesContainer.appendChild(defaultImage);
}
