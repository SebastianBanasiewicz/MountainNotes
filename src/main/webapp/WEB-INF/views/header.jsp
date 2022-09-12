<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MountainNotes</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<div class="container my-5">
    <h1 class="display-2">MountainNotes</h1>
    <p class="lead">
        Notes wycieczek górskich
    </p>
    <img src="/resources/bootstrap-5/logo1.png" class="img-fluid" alt="...">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/">Strona Główna</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/user/home">Panal główny</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/trip/list">Moje wycieczki</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/tripPlan/add">Zaplanuj wycieczkę</a>
        </li>
        <li class="nav-item">
        <li class="nav-item">
            <a class="nav-link" href="/tripPlan/list">Planowane wycieczki</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Mapa</a>
        </li>
    </ul>
</div>
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>