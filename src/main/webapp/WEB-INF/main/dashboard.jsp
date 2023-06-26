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
            <h1>Welcome, ${loggedInUser.userName}</h1>
            <a href="/users/logout">logout</a>
        </div>
        <br>
        <div class="d-flex justify-content-between">
            <p>Books from everyone's shelves:</p>
            <a href="/books/new">+ Add a book to my shelf!</a>
        </div>
            <table class="table table-striped border">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Title</th>
                <th scope="col">Author Name</th>
                <th scope="col">Posted By</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${allBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td><a href="/books/${book.id}">${book.title}</a></td>
                <td>${book.author}</td>
                <td>${book.user.userName}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
</body>
</html>