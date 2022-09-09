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
    <span class="d-block p-2 text-bg-primary">Edytowanie planu wycieczki</span><br>

    <form:form method="POST" modelAttribute="tripPlan">
        Nazwa:
        <form:input path="name" value="${tripPlan.name}"/>
        <form:errors path="name"/><br>
        Opis:<br>
        <form:textarea path="description" rows="10" cols="60" value="${tripPlan.description}"/>
        <form:errors path="description"/><br>
        Data startu:
        <form:input type="date" path="startDate" value="${tripPlan.startDate}"/>
        <form:errors path="startDate"/><br>
        Data powrotu:
        <form:input path="endDate" value="${tripPlan.endDate}"/>
        <form:errors path="endDate"/><br>
        Zakwaterowanie(opcjonalne):
        <form:input path="accommodation" value="${tripPlan.accommodation}"/>
        <form:errors path="accommodation"/><br>

        <input type="submit" class="btn btn-primary" value="Zapisz">
    </form:form>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
<script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
</html>
