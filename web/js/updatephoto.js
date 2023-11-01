const uploadButton = document.getElementById(
    "single-upload-button"
  );
  const photoInput = document.getElementById("photoInput");
  const currentPhoto = document.getElementById("current-photo");

  uploadButton.addEventListener("click", function () {
    photoInput.click(); // Kích hoạt sự kiện click của input file
  });

  photoInput.addEventListener("change", function (event) {
    // Xử lý khi người dùng chọn một tập tin ảnh
    if (photoInput.files.length > 0) {
      const file = photoInput.files[0];
      const reader = new FileReader();

      reader.onload = function () {
        // Xóa hình ảnh hiện tại
        if (currentPhoto) {
          currentPhoto.parentElement.removeChild(currentPhoto);
        }

        // Tạo hình ảnh mới và thêm vào container
        const newImage = new Image();
        newImage.src = reader.result;
        newImage.width = 800;
        newImage.height = 500;
        newImage.id = "current-photo";
        newImage.classList.add("rounded", "mb-2");
        document
          .getElementById("images-container")
          .appendChild(newImage);
      };

      reader.readAsDataURL(file);
    }
  });