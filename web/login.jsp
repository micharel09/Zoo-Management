<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <title>Login</title>
  </head>
  <body>
    <div
      class="bg-no-repeat bg-cover bg-center relative"
      style="
        background-image: url(https://images.unsplash.com/photo-1515444347446-4380c4d8a6ed?auto=format&fit=crop&q=80&w=2071&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
      "
    >
      <div
        class="absolute bg-gradient-to-b from-green-600 to-green-500 opacity-75 inset-0 z-0"
      ></div>
      <div class="min-h-screen sm:flex sm:flex-row mx-0 justify-center">
        <div
          class="flex-col flex self-center p-10 sm:max-w-5xl xl:max-w-2xl z-10"
        >
          <div class="self-start hidden lg:flex flex-col text-white">
            <img src="" class="mb-3" />
            <h1 class="mb-3 font-bold text-5xl">Hi ? Welcome Back</h1>
            <p class="pr-3"></p>
          </div>
        </div>
        <div class="flex justify-center self-center z-10">
          <div class="p-12 bg-white mx-auto rounded-2xl w-100">
            <div class="mb-4">
              <h3 class="font-semibold text-2xl text-gray-800">Sign In</h3>
              <p class="text-gray-500">Please sign in to your account.</p>
            </div>

            <form method="POST" action="MainController">
              <div class="relative z-0 mb-6 w-full group">
                <input
                  type="text"
                  name="Employee_ID"
                  id="userID"
                  required
                  type=""
                  class="block py-2.5 px-0 w-full text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-green-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                  placeholder=" "
                /><label
                  for="userID"
                  class="absolute text-xl text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-green-600 peer-focus:dark:text-green-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                  >Username</label
                >
              </div>

              <div class="relative z-0 mb-6 w-full group">
                <input
                  type="password"
                  name="password"
                  id="password"
                  required
                  type=""
                  class="block py-2.5 px-0 w-full text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-green-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                  placeholder=" "
                /><label
                  for="password"
                  class="absolute text-xl text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-green-600 peer-focus:dark:text-green-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                  >Password</label
                >
              </div>
              <!-- footer -->

              <div class="mt-4">
                <button
                  type="submit"
                  name="action"
                  value="Login"
                  class="w-full flex justify-center bg-green-400 hover:bg-green-500 text-gray-100 p-3 rounded-full tracking-wide font-semibold shadow-lg cursor-pointer transition ease-in duration-500"
                >
                  Sign in
                </button>
              </div>
              <% String error = (String) request.getAttribute("ERROR"); if
              (error == null) { error = ""; } %> <%= error%>
              <div class="pt-5 text-center text-gray-400 text-xs">
                <span>
                  Copyright © 2022-2023
                  <a
                    href="https://codepen.io/uidesignhub"
                    rel=""
                    class="text-green hover:text-green-500"
                    >WWZ</a
                  ></span
                >
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <script src="js/login.js"></script>
  </body>
</html>
