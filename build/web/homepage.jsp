<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script>document.documentElement.classList.add('js')</script>
    <script src="https://unpkg.com/taos@1.0.5/dist/taos.js"></script>
    <script src="https://kit.fontawesome.com/936766a5f7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="homepage.css">
    
    <title>HomePage</title>
</head>
<style>
    
body {
    
    
    text-align: center;
  }
  
  .slideshow-container {
    width: 1519px;
    height: 648px;
    position: relative;
    margin: 0 auto;
    overflow: hidden;
      
    
  }

  .slide {
    
  width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    opacity: 0;
    animation: slideAnimation 9s infinite;
   
  }
  
  .slide:nth-child(1) {
    animation-delay: 0s;
  }
  
  .slide:nth-child(2) {
    animation-delay: 3s;
  }
  
  .slide:nth-child(3) {
    animation-delay: 6s;
  }
  
  .slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    
  }
  
  @keyframes slideAnimation {
    0% {
      opacity: 0;
    }
    10% {
      opacity: 1;
    }
    33.33% {
      opacity: 1;
    }
    43.33% {
      opacity: 0;
    }
    100% {
      opacity: 0;
    }
  } 


.fsp-image {
    width: 425px;
    height:180px;
    position: absolute;
    bottom: 79%;
    right: 36%;
    z-index: 2; /* Make the FSP image appear in front of the slide */
}


.fade {
  transition: opacity 0.7s ease-in;
}
.fadeOut { opacity: 0; }




.display-time {
  font-size: 5rem;
  font-weight: bold;
  color: white;
  margin-top:170px;
  margin-left: 350px;

 
  -webkit-box-reflect: below  
  linear-gradient(transparent, rgba(255, 255, 255));
}

.backgroundimg{
  background-image: url(/wp-content/themes/halongcomplex/dist/images/bg-footer.png);
}

.reveal {
  position: relative;
  opacity: 0;
}

.reveal.active {
  opacity: 1;
}

.active.fade-left {
  animation: fade-left 1s ease-in;
}
.active.fade-right {
  animation: fade-right 1s ease-in;
}

@keyframes fade-left {
  0% {
    transform: translateX(-100px);
    opacity: 0;
  }
  100% {
    transform: translateX(0);
    opacity: 1;
  }
}

@keyframes fade-right {
  0% {
    transform: translateX(100px);
    opacity: 0;
  }
  100% {
    transform: translateX(0);
    opacity: 1;
  }
}


.footer{
  text-align: left;
  color:white;
  font-size: 20px;
  line-height:40px;
}


</style>
<body class=" block overflow-x mx-auto">
<!-- header -->
   <div class="bg-green-600  leading-6 h-10 ">
        <div class="flex justify-end mr-72  ">       
            <i class="fa-brands fa-facebook-f mr-3 mt-4"></i>
            <i class="fa-brands fa-youtube  mr-3 mt-4"></i>
            <i class="fa-brands fa-instagram  mr-3 mt-4"></i>
        </div>
    </div>
    
    <nav class="bg-white border-gray-200 dark:bg-gray-900">        
        <div  class="border border-y-2 shadow-2xl  flex items-center justify-between mx-auto p-3">
            <div class=" ml-11 items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-user">               
                <ul class=" flex flex-col font-medium p-4 md:p-0 mt-4 ml-44 border border-gray-100 bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                    <li>
                        <a href="#" class="relative  w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold  bg-blue-700 rounded md:bg-transparent md:p-0 text-green"aria-current="page">Home</a>
                    </li>
                    <li>
                        <a href="#" class="relative  w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold  bg-blue-700 rounded md:bg-transparent md:p-0 text-green"aria-current="page">About us</a>
                    </li>
                    <li>
                        <a href="#" class="relative  w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold  bg-blue-700 rounded md:bg-transparent md:p-0 text-green"aria-current="page">Experience</a>
                    </li>
                </ul>
            </div>
            
            <div class=" items-center justify-between hidden w-full md:flex md:w-auto md:order-1 " id="navbar-user">   
                <ul class=" ml-80 flex flex-col font-medium p-4 md:p-0 mt-4 mr-6 border border-gray-100 bg-gray-50 md:flex-row  md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700 ">
                    <li>
                        <a href="Animals.html" class="relative  w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold  bg-blue-700 rounded md:bg-transparent md:p-0 text-green"aria-current="page">Animals</a>
                    </li>
                    <li>
                        <a href="#" class="relative  w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold  bg-blue-700 rounded md:bg-transparent md:p-0 text-green"aria-current="page">News</a>
                    </li>
                    <li>
                        <a href="Map.html" class="relative  w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold  bg-blue-700 rounded md:bg-transparent md:p-0 text-green"aria-current="page">Map</a>
                    </li>
                </ul>
            </div>
            
            <div class="relative items-center md:order-2">
                <a href="/shop" class="middle none center hidden rounded-lg bg-gradient-to-tr from-pink-600 to-pink-400 py-2 px-4 font-sans text-xs font-bold uppercase text-white shadow-md shadow-pink-500/20 transition-all hover:shadow-lg hover:shadow-pink-500/40 active:opacity-[0.85] disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none lg:inline-flex items-center"> <!-- Sử dụng lớp "inline-flex" và "items-center" -->
                  <div class="h-4 w-4 mr-2"> <!-- Đã thêm lớp "mr-2" để tạo khoảng cách giữa hình ảnh và văn bản -->
                    <img src="img/ticket.png" alt="">
                  </div>
                    <span>Buy Ticket</span>
                </a>
            </div>
        </div>        
    </nav>
<!-- end header -->
   
<!--Auto Carousel-->
    <div class="background-img1">
        <div class="slideshow-container">
            <div class="slide">
                <img class="" src="./img/74941160_427663467907328_8664262200807915520_n.jpg" alt="Slide 1">
            </div>
            <div class="slide">
                <img src="./img/tigerfoot.JPG" alt="Slide 2">
            </div>
            <div class="slide">
                <img src="./img/3045dfeefd5628087147.jpg" alt="Slide 3">
            </div>
        </div>
        <!--LOGO HERE-->
        <a href="/homepage.jsp"><img class="fsp-image " src="/img/FSP.png" alt=""></a>
</div> 

    <div class="flex justify-center m-5 ">
        <marquee>OPEN 8:00 AM - CLOSE 22:00 PM </marquee>      
        <marquee direction="right">OPEN 8:00 AM - CLOSE 22:00 PM </marquee>
    </div>
        <!-- Slider controls -->
        <button type="button" class="flex absolute top-0 left-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-prev>
            <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 group-hover:bg-white/50 dark:group-hover:bg-white group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                <svg class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
                <span class="hidden">Previous</span>
            </span>
        </button>
        <button type="button" class="flex absolute top-0 right-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-next>
            <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 group-hover:bg-white/50 dark:group-hover:bg-white group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                <svg class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                <span class="hidden">Next</span>
            </span>
        </button>
    </div>
    <script src="https://unpkg.com/flowbite@1.4.0/dist/flowbite.js"></script>
</div>
<!-- end slideshow -->
  


<!--Big img introduce-->
<div class="fade fadeOut">
<!-- Panel left -->    
    <div class="relative group w-2/3 h-96 overflow-hidden bg-black m-auto float-left">
        <img class="object-cover w-full h-full transform duration-700 backdrop-opacity-100" src="img/closeup-rectangle.jpg" />
        <div class="absolute inset-0 flex items-center justify-center r-9 right-1/3">
            <h1 class=" text-7xl text-start font-bold text-white">WORLD WIDE ZOO <br> HO CHI MINH 
                <br> <i class="fa-solid fa-cloud mt-10"> 31 °C</i></h1>
            
            <!--Time-->
            <div style="position: absolute; z-index: 2;" class="container">         
                <div class="display-time"></div>
            </div>        
            <script>
                const displayTime = document.querySelector(".display-time");
                
                // Time
                function showTime() {
                  let time = new Date();
                  displayTime.innerText = time.toLocaleTimeString("en-US", { hour12: false });
                  setTimeout(showTime, 1000);
                }        
                // Call the functions
                showTime();
                
            </script>
            
        </div>
      </div>

<!-- panel right -->
    <div class="relative group w-1/3 h-96 overflow-hidden bg-black m-auto float-right">
        <img class="object-cover w-full h-full transform duration-700 backdrop-opacity-100" src="img/khub.jpeg" />
        <div class="absolute w-full h-full shadow-2xl opacity-20 transform duration-500 inset-y-full group-hover:-inset-y-0"></div>
            <div class="absolute bg-gradient-to-t from-black w-full h-full transform duration-500 inset-y-2/3 group-hover:-inset-y-0">
                <div class="absolute w-full bottom-20 flex place-content-center">
                    <p class="capitalize font-sanf font-bold text-4xl text-center shadow-2xl text-white">Plan your visit</p>
                </div>
                <button class="absolute bottom-4 left-1/3 bg-white text-black font-bold rounded-lg h-10 w-40">Get info</button>
            </div>
    </div>
    <script>
        const observerOptions = {
        root: null,
        rootMargin: "0px",
        threshold: 0.7
            };
    
        function observerCallback(entries, observer) {
        entries.forEach(entry => {
        if (entry.isIntersecting) {
    // fade in observed elements that are in view
        entry.target.classList.replace('fadeOut', 'fadeIn');
    } else {
    // fade out observed elements that are not in view
        // entry.target.classList.replace('fadeIn', 'fadeOut');
            }
        });
    }
    
    const observer = new IntersectionObserver(observerCallback, observerOptions);
    
    const fadeElms = document.querySelectorAll('.fade');
    fadeElms.forEach(el => observer.observe(el));
    </script>
</div>



 <h1 style="background-color: #cfcdcc; color: #cfcdcc;">h</h1>

<!-- delay-[600ms] duration-[1500ms] taos:translate-y-[200px] taos:opacity-0 -->
<div class="relative  "
    style="background-image: url('/img/grassy-field-with-trees-giraffes-walking-around-with-light-blue-sky-background.jpg'); height: 1500px">
<div class="  flex justify-around delay-[600ms] duration-[1500ms] taos:translate-y-[200px] taos:opacity-0 " >
    <div class=" hover:bg-blue-300  w-80 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class=" w-72 mx-auto rounded-lg mt-3" src="/img/6b1a84a0-4fb3.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-blue-700 dark:text-white">Cáo tuyết lạc vào nhà dân ở TP.HCM được chuyển đến Thảo cầm viên Sài Gòn</h5>
        </a>
        <p class="mb-16 font-normal text-black dark:text-gray-400">Một cá thể cáo tuyết đi lạc vào phòng trọ của người dân tại Q.12 (TP.HCM) đã được chuyển đến Thảo Cầm Viên để chăm sóc và khi ổn định sẽ được cho nhập đàn với 3 cá thể khác.</p>
        <a href="#" class="inline-flex items-center px-3 py-2 ml-40 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Read more
             <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
            </svg>
        </a>
    </div>
</div>
 <div class=" hover:bg-blue-300  w-80 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class=" w-72 mx-auto rounded-lg mt-3" src="/img/378879811_711506671014637_7733997561653958626_n.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-blue-700 dark:text-white"> An organization committed to preserving forests worldwide.</h5>
        </a>
        <p class="mb-16 font-normal text-black dark:text-gray-400">Forests soak up carbon and help to reduce the effects of climate change, so whenever you purchase FSC-certified products, you're helping the endangered species and environments that are affected by climate change 🌏</p>
        <a href="#" class="inline-flex items-center px-3 py-2 ml-40 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Read more
             <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
            </svg>
        </a>
    </div>
</div>
     <div class=" hover:bg-blue-300  w-80 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class=" w-72 mx-auto rounded-lg mt-3" src="/img/379703512_713887574109880_2038587734935268007_n.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-blue-700 dark:text-white">Getting up close and personal with Sasa</h5>
        </a>
        <p class="mb-16 font-normal text-black dark:text-gray-400">Learning more about Sun Bears and how we work to protect them in the wild, why not book in a Close Encounter? Our newly launched online shop allows you to purchase educational toys and souvenirs from anywhere in New Zealand.  </p>
        <a href="#" class="inline-flex items-center px-3 py-2 ml-40 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Read more
             <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
            </svg>
        </a>
    </div>
</div>

</div>

<!--map&news-->

<div class="mt-20  flex justify-evenly">
    <div style="margin-left: 90px;" class="container reveal fade-left">      
            <h2 class="text-gray-800 text-7xl text-left font-bold mb-16">MAP</h2>
            <a href=""><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3348.5820387864956!2d174.78170560776508!3d-41.319870449708326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d38aff75cff6f49%3A0xc1639a1ffd228038!2sWellington%20Zoo!5e1!3m2!1svi!2s!4v1695206696761!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></a>
    </div>  

    <div class="container reveal fade-right">      
        <h2 class="text-gray-800 text-7xl text-left font-bold mb-16">NEWS</h2>
        <!--news here 1-->
        <div class="max-w-sm w-full lg:max-w-full lg:flex mb-12">
        <div class="h-48 lg:h-auto lg:w-48 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden" style="background-image: url('/img/117081841_1166368890386793_6794595804250703572_n.jpg')" title="Woman holding a mug"></div>
          <div class="border-r border-b border-l border-gray-400 lg:border-l-0 lg:border-t lg:border-gray-400 bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
              <div class="mb-8">
                <p class="text-sm text-gray-600 flex items-center">                 
                <div class="text-gray-900 font-bold text-xl mb-2">Can coffee make you a better developer?</div>
                <p class="text-gray-700 text-base truncate w-32 text-left text-lightBlack capitalize">Thật sự nghe nhạc của Vũ làm mình cảm nhận đc từng câu hát từng nốt nhạc đều đc trau chuốt một cách tỉ mỉ và đẹp đẽ nhất. Nhạc của Vũ làm tâm hồn của mình như đc chữa lành từ sâu bên trong qua từng câu hát. Respect Vũ ❤</p>
              </div>
              <div class="flex items-center">
                <img class="w-10 h-10 rounded-full mr-4" src="/img/117081841_1166368890386793_6794595804250703572_n.jpg" alt="Avatar of Jonathan Reinink">               
              </div>
            </div>
          </div>
          <!--news here 2-->
          <div class="max-w-sm w-full lg:max-w-full lg:flex mb-12">
            <div class="h-48 lg:h-auto lg:w-48 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden" style="background-image: url('/img/117081841_1166368890386793_6794595804250703572_n.jpg')" title="Woman holding a mug"></div>
              <div class="border-r border-b border-l border-gray-400 lg:border-l-0 lg:border-t lg:border-gray-400 bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
                  <div class="mb-8">
                    <p class="text-sm text-gray-600 flex items-center">                 
                    <div class="text-gray-900 font-bold text-xl mb-2">Can coffee make you a better developer?</div>
                    <p class="text-gray-700 text-base truncate w-32 text-left text-lightBlack capitalize">Thật sự nghe nhạc của Vũ làm mình cảm nhận đc từng câu hát từng nốt nhạc đều đc trau chuốt một cách tỉ mỉ và đẹp đẽ nhất. Nhạc của Vũ làm tâm hồn của mình như đc chữa lành từ sâu bên trong qua từng câu hát. Respect Vũ ❤</p>
                  </div>
                  <div class="flex items-center">
                    <img class="w-10 h-10 rounded-full mr-4" src="/img/117081841_1166368890386793_6794595804250703572_n.jpg" alt="Avatar of Jonathan Reinink">               
                  </div>
                </div>
              </div>
             
    </div>
 </div>

 <!--transition map&news-->
  <script>
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
  </script>


    
<img class=" animate-bounce  w-10" src="/img/117081841_1166368890386793_6794595804250703572_n.jpg" alt="">
<!--Footer-->
<div class="bg-[url('/img/bg-footer.png')]">    
</div>
<footer class="backgroundimg">
    <div class="relative overflow-hidden  p-12 text-center"
    style="background-image: url('/img/bg-footer.png'); height: 400px">
    <div class="absolute  h-full w-full overflow-hidden bg-fixed">
      <div class="flex h-full  justify-evenly">              
            <img class="w-max mb-40 " src="/img/377487712_708998067736035_5705167264383840128_n.png" alt="">
            <ul class="footer">
                <li>Home</li>
                <li>About Us</li>
                <li>Experience</li>
                <li>News</li>
                <li>Map</li>
                <li>Help</li>
                <li>Contact</li>
            </ul>
            <ul class="footer">
                <li class="uppercase font-bold leading-10">Contact</li>
                <li class="font-semibold">WorldWildZoo Ho Chi Minh</li>
                <li class="font-semibold">Adress: <small>213/21 Nơ Trang Long dáhdjashdhasjdsja</small> </li>
                <li class="font-semibold">Hotline: <small>098765432</small></li>
                <li class="font-semibold">Email: <small>wowizoo@hcm.vn</small></li>
            </ul>    
      </div>
      
    </div>
    <div style="border-top: 2px solid white; margin-top: 300px;"></div>
    <p class="text-start text-white">Copyright By WorldWildZoo</p>
  </div>
  <!-- Jumbotron -->
</footer>



</body>

</html>
