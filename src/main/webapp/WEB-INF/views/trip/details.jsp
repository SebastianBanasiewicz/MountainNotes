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
    <span class="d-block p-2 text-bg-primary">Szczegóły wycieczki</span><br>
    <table class="table table-striped">
        <tr>
            <th>NAZWA</th>
            <th>OPIS</th>
            <th>DATA</th>
            <th>POGODA</th>
            <th>GRUPA</th>
            <th>ZAKWATEROWANIE</th>
            <th>OPCJE</th>
        </tr>
        <tr>
            <td>${trip.name}</td>
            <td>${trip.description}</td>
            <td style="width: 10%">${trip.date}</td>
            <td>${trip.weather}</td>
            <td>${trip.members}</td>
            <td>${trip.accommodation}</td>

            <td>
                <a href="<c:url value="/trip/delete/${trip.id}"/>">
                    <button class="btn btn-primary">Usuń</button>
                </a>
                <a href="<c:url value="/trip/edit/${trip.id}"/>">
                    <button class="btn btn-primary">Edytuj</button>
                </a>
            </td>
        </tr>
    </table>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>
