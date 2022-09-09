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
<jsp:include page="/WEB-INF/views/header.jsp"/>
<div class="container my-5">
    <span class="d-block p-2 text-bg-primary">Edycja szczegółowych danych</span><br>
    <form:form method="POST" modelAttribute="user">
        <form:hidden path="id"/>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <form:input path="email" type="email" class="form-control" id="email" value="${user.email}"/>

        </div>
        <div class="mb-3">
            <label for="nickName" class="form-label">Pseudonim</label>
            <form:input path="nickName" type="text" class="form-control" id="nickName" value="${user.nickName}"/>

        </div>
        <div class="mb-3">
            <label for="firstName" class="form-label">Imię</label>
            <form:input path="firstName" type="text" class="form-control" id="firstName" value="${user.firstName}"/>

        </div>
        <div class="mb-3">
            <label for="lastName" class="form-label">Nazwisko</label>
            <form:input path="lastName" type="text" class="form-control" id="lastName" value="${user.lastName}"/>

        </div>
        <div class="mb-3">
            <label for="aboutMe" class="form-label">O sobie</label>
            <form:input path="aboutMe" type="textarea" class="form-control" id="aboutMe" value="${user.aboutMe}"/>

        </div>
        <form:hidden path="password"/>
        <button type="submit" class="btn btn-primary">Zapisz</button>
    </form:form>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>

<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>
