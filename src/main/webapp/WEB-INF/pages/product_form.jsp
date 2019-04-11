
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Article Form</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <script defer src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/petshop/list">PetShop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="/petshop/list">Список товаров <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link btn btn-dark" href="/petshop/addProduct">Добавить товар</a>
        </div>
    </div>
</nav>

<div class="container">
    <spring:url value="/petshop/saveProduct" var="saveURL" />
    <h2>Article</h2>
    <form:form action="${saveURL}" cssClass="form" method="POST" modelAttribute="command" >
        <form:hidden path="id"/>
        <div class="form-group">
            <label>Наименование</label>
            <form:input path="title" cssClass="form-control" />
        </div>
        <div class="form-group">
            <label>Категория</label>
            <form:input path="category" cssClass="form-control"  />
        </div>
        <div class="form-group">
            <label>Производитель</label>
            <form:input path="producer" cssClass="form-control"  />
        </div>
        <button type="submit" class="btn btn-dark">Добавить</button>
    </form:form>

</div>
</body>
</html>