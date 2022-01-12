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
    <div id="box1inner">Lorem ipsum dolor sit amet.</div>
    <p id="box1text">Lorem, ipsum dolor.</p>
</header>
<section>
    <div id="box2">
        <p id="box2text">
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum ipsam quidem maxime sunt eum autem saepe quasi cumque ea officiis.
        </p>
        <form id="form4">
            Complete task 4?
            Yes<input type="radio" name="task4" id="radio1" value="1">
            No<input type="radio" name="task4" id="radio2" value="2">
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
        <form action='addTab' method="post">
            <input name="lab3input1">
            <input name="lab3input2">

            <input type="submit" value="Add Tab">
        </form>
        <form action="logout" method="post">
            <input type="submit" value="Start the review">
        </form>
    </div>
    <div id="box5">
        <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem, consequuntur!
        </p>
    </div>
</section>
<footer>
    <div id="box6inner">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ducimus, explicabo?</div>
    <p id="box6text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veritatis, aliquid!</p>
</footer>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>
