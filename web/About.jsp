<%-- Document : About.jsp Created on : Oct 5, 2023, 6:27:38 PM Author : Quan
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap"
      rel="stylesheet"
    />
    <script src="https://cdn-tailwindcss.vercel.app/"></script>
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js"
      defer
    ></script>
    <script
      src="https://kit.fontawesome.com/5b0b34b925.js"
      crossorigin="anonymous"
    ></script>
    <title>About us</title>
  </head>
  <body>
    <!-- component -->
    <div class="relative">
      <div class="sticky top-0 flex h-screen items-center justify-center">
        <img src="img/about1.jpg" class="h-full w-full object-cover" />
        <div
          class="absolute left-0 right-0 m-auto flex w-2/4 flex-col items-start justify-center gap-4 p-10 backdrop-blur-xl"
        >
          <p class="font-sans text-lg text-white">
            Welcome to the world of Zoo Wild World! Here, you will discover and
            interact with hundreds of animal species from all around the globe.
            Get ready for an exciting adventure as you explore and marvel at the
            diverse and fascinating creatures!
          </p>
        </div>
      </div>
      <div class="sticky top-0 flex h-screen items-center justify-center">
        <img src="img/about2.webp" class="h-full w-full object-cover" />

        <div
          class="absolute left-0 right-0 m-auto flex w-2/4 flex-col items-start justify-center gap-4 p-10 backdrop-blur-xl"
        >
          <p class="font-sans text-lg text-white">
            The zoo is a place where animals from deep forests, harsh deserts,
            and vast oceans come together. You'll encounter powerful tigers,
            intelligent monkeys, adorable pandas, and colorful birds. Prepare
            yourself for an unforgettable journey!
          </p>
        </div>
      </div>

      <div class="sticky top-0 flex h-screen items-center justify-center">
        <img src="img/about3webp.webp" class="h-full w-full object-cover" />

        <div
          class="absolute left-0 right-0 m-auto flex w-2/4 flex-col items-start justify-center gap-4 p-10 backdrop-blur-xl"
        >
          <p class="font-sans text-lg text-white">
            With a mission of conservation and education, the zoo attracts
            millions of visitors each year. Here, you'll not only see amazing
            animals but also have the opportunity to learn about their nurturing
            and species preservation. It's a great chance to understand their
            role in the ecosystem and how they interact with the environment.
          </p>
        </div>
      </div>

      <div class="sticky top-0 flex h-screen items-center justify-center">
        <img src="img/about4.webp" class="h-full w-full object-cover" />

        <div
          class="absolute left-0 right-0 m-auto flex w-2/4 flex-col items-start justify-center gap-4 p-10 backdrop-blur-xl"
        >
          <p class="font-sans text-lg text-white">
            Experience the true wonders of nature at the zoo! With areas that
            simulate natural habitats, you can walk through rainforests, explore
            arid lands, and delve into the depths of the ocean. Immerse yourself
            in the lives of the animal species and feel the marvels of
            biodiversity on our planet.
          </p>
          <a href="homepage.jsp">
            <button
              class="btn group flex items-center bg-transparent p-2 px-6 text-xl font-thin tracking-widest text-white"
            >
              <span
                class="hover:text-blue-400 shadow-md pr-4 pb-1 text-white after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100 transition-font"
              >
                Explore More
              </span>
              <svg
                viewBox="0 0 46 16"
                height="10"
                width="30"
                xmlns="http://www.w3.org/2000/svg"
                id="arrow-horizontal"
                class="-translate-x-2 fill-slate-700 transition-all duration-300 ease-out group-hover:translate-x-1 group-hover:scale-x-105 group-hover:fill-white"
              >
                <path
                  transform="translate(30)"
                  d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                  data-name="Path 10"
                  id="Path_10"
                ></path>
              </svg>
            </button>
          </a>
        </div>
      </div>
    </div>
  </body>
</html>
