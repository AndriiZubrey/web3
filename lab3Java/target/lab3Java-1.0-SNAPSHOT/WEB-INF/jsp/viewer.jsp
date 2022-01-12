<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 38095
  Date: 02.12.2021
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Page 1</title>
    <link rel="stylesheet" href="../../CSS/style.css">
    <script src="../../js/script.js"></script>
</head>
<body>
<header>
    <div id="box1inner">Зайдете до мене</div>
    <p id="box1text">Продаєте рибів?</p>
</header>
<section>
    <div id="box2">
        <p id="box2text">
            Vivamus feugiat semper quam, at auctor ligula rhoncus non. Phasellus non nisl nec ligula rhoncus consequat a et metus. Proin pretium, diam quis venenatis pellentesque, magna urna lacinia odio, at egestas mauris velit nec sapien. Donec lacinia purus nec lobortis dictum. Proin semper, purus eget lobortis sagittis, neque tellus tincidunt purus, id tempus ante sem vitae libero. In viverra facilisis fermentum.
        </p>
        <form id="form4">
            Виконувати завдання 4?
            Так<input type="radio" name="task4" id="radio1" value="1">
            Ні<input type="radio" name="task4" id="radio2" value="2">
        </form>
    </div>
    <div id="box3">
        <div class="main">
            <ul class="tabs">
                <%
                    if (request.getServletContext().getAttribute("list") != null) {
                        for (String li : (List<String>) request.getServletContext().getAttribute("list")) {
                            out.println(li);
                        }
                    }
                %>
            </ul>
        </div>
    </div>
    <div id="box4">
        <form action="login" method="post">
            <input type="submit" value="Редагувати">
        </form>
    </div>
    <div id="box5">
        <p>
            Morbi nisl nibh, ullamcorper posuere elit a, placerat tincidunt nisl.
        </p>
    </div>
</section>
<footer>
    <div id="box6inner">Я Вам окремо розкажу, що з Вами буде</div>
    <p id="box6text">Ні, лише показуємо</p>
</footer>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>
