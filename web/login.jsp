<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="/dist/output.css" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="g.css">

</head>
</head>
<body>
  <header class="max-w-lg mx-auto">
    <a href="#">
        <img class="w-52 mx-auto " src="/img/377593436_1086551182331175_5542847132828977867_n.png" alt="">
    </a>
</header>
    <style>
        html, body {
  width: 100%;
  height:100%;
}

body {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    background-size: 400% 400%;
    animation: gradient 15s ease infinite;
}

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}
.t{
    color: red;
}
    </style>

<main class="bg-white w-96 mx-auto p-8 mb-10  rounded-lg shadow-2xl">
    <section>
        <h3 class="font-bold text-2xl">Welcome to WoWiZoo</h3>
        <p class="text-gray-600 pt-2">Please login to your account</p>
    </section>

    <section class="mt-10">
        <form class="flex flex-col" method="POST" action="MainController">
            <div class="mb-6 pt-3 rounded bg-gray-200">
                <label for="userID" class="block text-gray-700 text-sm font-bold mb-2 ml-3" >Username</label>
                <input type="text" name="Employee_ID" id="userID" required class="bg-gray-200 rounded w-full text-gray-700 focus:outline-none border-b-4 border-gray-300 focus:border-green-500 transition duration-500 px-3 ">
            </div>
            <div class="mb-6 pt-3 rounded bg-gray-200">
                <label for="password" class="block text-gray-700 text-sm font-bold mb-2 ml-3" >Password</label>
                <input type="password"name="password"  id="password" required class="bg-gray-200 rounded w-full text-gray-700 focus:outline-none border-b-4 border-gray-300 focus:border-green-600 transition duration-500 px-3 ">
            </div>
           
           

            <input  type="submit" name="action" value="Login"class="bg-green-600 hover:bg-green-700 text-white font-bold py-2 rounded shadow-lg hover:shadow-xl transition duration-200"/>
            <label for="">Version 1.2.0</label>
        </form>
        
        
    </section>
       <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
            %>
       
            <%= error%>
</main>
</body>
</html>