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
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
        </li>
    </ul>
    <figure class="text-end">
        <blockquote class="blockquote">
            <p>Najlepszy widok jest po najtrudniejszej wspinaczce.</p>
        </blockquote>
        <figcaption class="blockquote-footer">
            Autor <cite title="Source Title">nieznany</cite>
        </figcaption>
    </figure>
</div>

<div class="container my-5">
    <ul class="list-unstyled">
        <h3>Notes wycieczek górskich.</h3>
        <li>Aplikacja do trzymania zapisanych wycieczek górskich użytkownika, wymianą opini, opisem wyjazdu,
            szczegółów cenowych itd.
        </li>
        <li>Celem aplikacji jest utrzymanie w jednym miejscu wyjazdów/wycieczek górskich użytkownika, bądź grupy
            osób.
        </li>
        <li>Jeżeli lubisz podróżować i nie sposób spamiętać wszystkich odwiedzonych miejsc - to MountainNotes jest
            właśnie dla Ciebie!
        </li>
        <br>
        <li>Główne założenia:
            <ul>
                <li>Możliwość dodawania, edytowania i usuwania wpsiów</li>
                <li>Przeglądanie ostatnio dodanych wpisów przez innych użytkowników</li>
                <li>Planowanie następnych wyjazdów</li>
            </ul>
        </li>
        <br>
        <li>"Im wyżej wspinasz się na góry, tym mocniej wieje wiatr"</li>
        <br>
        <figcaption class="blockquote-footer">
            Autor <cite title="Source Title">nieznany</cite>
        </figcaption>
        <br>
    </ul>
    <div class="card mb-3 col-sm-11">
        <img src="resources/images/photoHome1.png" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Panel wpisów</h5>
            <p class="card-text">Przejrzysty i intuicyjny panel z wpisami, gdzie po kliknięciu ujrzymy więcej szczegółów
                danej wycieczki.</p>
            <p class="card-text">Możemy w łatwy sposób dodawać, edytować i w razie konieczności usuwać wpisy.</p>
            <p class="card-text">Jest to świetny sposób na trzymanie w jednym miejscu wpisów i szczegółów z naszych
                wypadów.</p>
            <p class="card-text"><small class="text-muted"></small></p>
        </div>
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