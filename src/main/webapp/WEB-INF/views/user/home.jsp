<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
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
                <a class="nav-link" href="/trip/list">Wszystkie wpisy</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/tripPlan/add">Zaplanuj wycieczkę</a>
            </li>
            <li class="nav-item">
            <li class="nav-item">
                <a class="nav-link" href="/tripPlan/list">Zaplanowane wycieczki</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Mapa</a>
            </li>
        </ul>
    </div>
    <div class="container my-5">
        <span class="d-block p-2 text-bg-primary">Panel użytkownika</span>
        <div class="card w-100 ">
            <div class="card-body">
              <h5 class="card-title">Witaj ${user.firstName}</h5>
              <p class="card-text">Pseudonim: ${user.nickName}</p>
              <p class="card-text">Imię: ${user.firstName}</p>
              <p class="card-text">Nazwisko: ${user.lastName}</p>
              <p class="card-text">O sobie: ${user.aboutMe}</p>
              <a href="/user/edit" class="btn btn-primary">Edytuj</a>
            </div>
          </div>

        <div class="list-group mt-5">
            <span class="d-block p-2 text-bg-primary">Moje wpisy</span>
            <a href="/trip/list" class="list-group-item list-group-item-action" aria-current="true">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">Giewont</h5>
                    <small>10 days ago</small>
                </div>
                <p class="mb-1">Miał być luźny wypad do Zakopanego w sezonie letnim..</p>
                <small>Bardzo gorąco, idealna pogoda na spacer w górach</small>
            </a>
            <a href="/trip/list" class="list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">Śnieżka</h5>
                    <small class="text-muted">21 days ago</small>
                </div>
                <p class="mb-1">Weekendowa wycieczka familijna do Karpacza w sezonie zimowym.</p>
                <small class="text-muted">Było bardzo zimno i dużo śniegu</small>
            </a>
            <a href="/trip/list" class="list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">Babia Góra</h5>
                    <small class="text-muted">36 days ago</small>
                </div>
                <p class="mb-1">Zorganizowana wycieczka na długi weekend czerwcowy.</p>
                <small class="text-muted">Słonecznie i ciepło</small>
            </a>
        </div>
          <span class="d-block p-2 text-bg-primary mt-5">MountainNotes</span>
        <p class="text-muted text-end">
            Projekt końcowy Sebastian Banasiewicz - <a href="https://github.com/SebastianBanasiewicz/MountainNotes" class="text-reset">Github</a>.
        </p>
    </div>
    
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>