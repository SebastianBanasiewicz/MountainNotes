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
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<div class="container my-5">
    <span class="d-block p-2 text-bg-primary">Szczegóły planowanej wycieczki</span>
<table class="table table-striped">
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Data wyjazdu</th>
        <th>Data powrotu</th>
        <th>Członkowie</th>
        <th>Zakwaterowanie</th>
        <th>Opcje</th>
    </tr>
    <tr>
        <td>${tripPlan.name}</td>
        <td>${tripPlan.description}</td>
        <td style="width: 10%">${tripPlan.startDate}</td>
        <td>${tripPlan.endDate}</td>
        <td><c:forEach items="${tripPlan.members}" var="member">
            ${member.firstName}<br>
        </c:forEach> </td>
        <td>${tripPlan.accommodation}</td>

        <td>
            <a href="/tripPlan/list/${tripPlan.id}/join">
                <button class="btn btn-primary">Dołącz</button>
            </a>
            <a href="/tripPlan/list/${tripPlan.id}/leave">
                <button class="btn btn-primary">Rezygnuj</button>
            </a>
<%--            <a href="<c:url value="/tripPlan/delete/${tripPlan.id}"/>"><button class="btn btn-primary">Usuń</button></a>--%>
<%--            <a href="<c:url value="/tripPlan/edit/${tripPlan.id}"/>"><button class="btn btn-primary">Edytuj</button></a>--%>
        </td>
    </tr>
</table>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>