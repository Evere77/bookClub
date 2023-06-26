<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
    href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Read Share</title>
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-between mt-4">
            <h1><c:out value="${book.title}"/></h1>
            <a href="/books">back to the shelves</a>
        </div>
        <br>
        <h4><c:out value="${book.user.userName}"/> read <c:out value="${book.title}"/> by <c:out value="${book.author}"/>.</h4>
        <br>
        <h4>Here are <c:out value="${book.user.userName}"/>'s thoughts:</h4>
        <br>
        <p><c:out value="${book.myThoughts}"/></p>
        <br>
        <c:if test="${user_id == book.user.id}">
        <div class="d-flex">
            <a href="/books/${book.id}/edit" class="btn btn-primary mx-5">edit</a>
            <form action="/books/delete/${book.id}" method="post">
                <input type="hidden" value="delete" name="_method"/>
                <input type="submit" value="delete" class="btn btn-danger"/>
            </form>
        </div>
        </c:if>
    </div>
</body>
</html>