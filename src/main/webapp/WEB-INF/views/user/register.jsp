<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mountain Notes - notes wycieczek górskich</title>

    <link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'>

</head>
<body>
<div id="wrapper">
    <div id="logo">
        <a href="/">
            <h1>Mountain Notes</h1>
            <p>Notes wycieczek górskich</p>
        </a>
    </div>
    <div id="menu">
        <ul>
            <li><a href="/" class="menu_active">Strona główna</a></li>
            <li><a href="/user/login">Notes wycieczek</a></li>
            <li><a href="/user/register">Rejestracja</a></li>
        </ul>
    </div>
</div>
<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <form class="padding-small text-center" action="/user/register" method="POST">
                    <h1 class="text-color-darker">Rejestracja</h1>
                    <div class="form-group">
                        <input path="email" type="text" class="form-control" id="email" name="email" placeholder="podaj email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="password" name="password"
                               placeholder="podaj hasło">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="repassword" name="repassword"
                               placeholder="powtórz hasło">
                    </div>
                    <button class="btn btn-color rounded-0" type="submit">Zarejestruj</button>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>
