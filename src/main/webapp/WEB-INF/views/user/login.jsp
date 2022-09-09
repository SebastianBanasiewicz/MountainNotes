<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
            <a class="nav-link" href="/user/home">Notes wycieczek</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/user/register">Rejestracja</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
    </ul>
</div>
<div class="container my-5">
    <span class="d-block p-2 text-bg-primary mt-5">Formularz logowania</span><br>
    <form action="/user/login" method="POST">
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">

        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Hasło</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <button type="submit" class="btn btn-primary">Zaloguj</button>
    </form>
    <span class="d-block p-2 text-bg-primary mt-5">MountainNotes</span>
</div>
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="js/bootstrap.js"></script>
</html>
