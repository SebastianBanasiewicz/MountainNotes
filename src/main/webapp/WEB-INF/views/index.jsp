<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mountain Notes - notes wycieczek górskich</title>

 <link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'>
 
</head>

<body>

  <div id="wrapper">
    <div id="logo">
    <a href="#">
        <h1>Mountain Notes</h1>
        <p>Notes wycieczek górskich</p>
    </a>
    </div>
    <div id="menu">
        <ul>
        <li><a href="/" class="menu_active">Strona główna</a></li>
        <li><a href="/user/login">Notes wycieczek</a></li>
        <li><a href="/user/register">Rejestracja</a></li>
        </ul>
    </div>
    <div id="header">
        <div id="title_head">"Przestań gapić się na góry. Zamiast tego wejdź na nie, tak, to trudniejszy proces, ale zaprowadzi Cię do lepszego widoku"</div>
    </div>
    <div id="container">
    <div id="content">
        <h2>Witaj!</h2>
        <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget tortor vitae purus bibendum ornare at sit amet mauris. Aenean adipiscing velit a        tellus sodales quis commodo metus congue. Cras ac erat eget urna faucibus pellentesque sit amet eget metus. Vestibulum ac hendrerit sapien. Vivamus        consectetur dui at nisi dictum tincidunt ac ut purus. Praesent id ornare velit. Morbi fringilla, justo nec tincidunt hendrerit, mi ante ornare magna,        id sodales dolor erat quis ante. Sed vel adipiscing nisl. Etiam lectus turpis, fermentum quis vehicula at, elementum vitae nibh. Duis at leo eu purus        aliquet rutrum. Phasellus posuere, ante condimentum sagittis venenatis, sem tellus venenatis arcu, ac iaculis quam lorem at urna.
        </p>
    </div>
    <div id="sidebar">
        <div id="sidebar_title">O projekcie</div>
        <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget tortor vitae purus bibendum ornare at sit amet mauris. Aenean adipiscing velit a        tellus sodales quis commodo metus congue. Cras ac erat eget urna faucibus pellentesque sit amet eget metus.
        </p>
        <div id="sidebar_title">Polecamy</div>
            <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
            <li><a href="#">Link 3</a></li>
            <li><a href="#">Link 4</a></li>
            </ul>
    </div>
    </div>
    <div id="footer">
        <p>&copy Wszelkie prawa zastrzeżone. <br /> Projekt: <a href="http://www.templatki.net">Darmowe Szablony Stron</a></p>
    </div>
    </div>
</body>
</html>
