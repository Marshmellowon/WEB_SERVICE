<%--
  Created by IntelliJ IDEA.
  User: leo50
  Date: 2020-05-20
  Time: 오전 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="build/tailwind.css">
</head>
<body>
<section class="m-2 flex justify-center">
    <div class="text-4xl font-bold text-center text-blue-500"><a
            href="../index.jsp">서울시 상권 분석 서비스</a>
    </div>
</section>

<section class="flex justify-center">
    <div class="w-3/5 justify-center">
        <form class="bg-white border-solid border-2 border-blue-200 rounded px-8 pt-6 pb-8 mb-4"
              action="../SelectDAOServlet">
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="username">
                    Username
                </label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                       id="username" name="username" type="text" placeholder="Username">
            </div>
            <div class="mb-6">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
                    Password
                </label>
                <input class="shadow appearance-none border  rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
                       id="password" name="password" type="password" placeholder="Password">
            </div>
            <div class="flex items-center justify-between">
                <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="submit">
                    Sign In
                </button>
                <a class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800" href="#">
                    Forgot Password?
                </a>
            </div>
        </form>
    </div>
</section>
</body>
</html>
