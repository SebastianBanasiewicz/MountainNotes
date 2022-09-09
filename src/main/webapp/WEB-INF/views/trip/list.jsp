<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MountainNotes</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>

<div class="container my-5">
    <span class="d-block p-2 text-bg-primary">Lista wycieczek</span>

    <table style="width: 100%" class="table table-striped">
        <tr>
            <th>Nazwa</th>
            <th>Opis</th>
            <th>Data</th>
            <th>Utworzono</th>
            <th>Autor</th>
            <th>Opcje</th>
        </tr>
        <c:forEach items="${trips}" var="trip">
            <tr>
                <td>${trip.name}</td>
                <td style="width: 50%">${trip.description}</td>
                <td>${trip.date}</td>
                <td>${trip.saveDate}</td>
                <td>${trip.user.firstName}</td>

                <td><a href="/trip/${trip.id}/details">
                    <button class="btn btn-primary">Szczegóły</button>
                </a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="/trip/add">
        <button class="btn btn-primary">Dodaj nowy wpis</button>
    </a>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>
