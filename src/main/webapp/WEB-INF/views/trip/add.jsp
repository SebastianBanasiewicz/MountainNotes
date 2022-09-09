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
    <span class="d-block p-2 text-bg-primary">Dodawanie nowej wycieczki</span><br>
    <form:form modelAttribute="trip" method="POST">
        Nazwa:
        <form:input path="name"/>
        <form:errors path="name"/><br>
        Opis:<br>
        <form:textarea path="description" rows="10" cols="60"/>
        <form:errors path="description"/><br>
        Data:
        <form:input type="date" path="date"/>
        <form:errors path="date"/><br>
        Pogoda:
        <form:input path="weather"/>
        <form:errors path="weather"/><br>
        Grupa(ilość osób/członkowie):
        <form:input path="members"/>
        <form:errors path="members"/><br>
        Zakwaterowanie(opcjonalne):
        <form:input path="accommodation"/>
        <form:errors path="accommodation"/><br>

        <input type="submit" class="btn btn-primary" value="Dodaj"/>
    </form:form>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>
