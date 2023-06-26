<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
    href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Book Share</title>
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-between mt-4">
            <h1>Change your Entry</h1>
            <a href="/books" class="mt-4">back to the shelves</a>
        </div>
        <form:form action="/books/process/edit/${book.id}" modelAttribute="book" method="post">
            <input type="hidden" name="_method" value="put"/>
            <form:hidden path="user"/>
            <div>
                <form:label path="title">Title</form:label>
                <form:input type="text" path="title" class="form-control"/>
                <form:errors class="text-danger" path="title"/>
            </div>
            <div>
                <form:label path="author">Author</form:label>
                <form:input type="text" path="author" class="form-control"/>
                <form:errors class="text-danger"  path="author"/>
            </div>
            <div>
                <form:label path="myThoughts">My thoughts</form:label>
                <form:textarea path="myThoughts" class="form-control"/>
                <form:errors class="text-danger"  path="myThoughts"/>
            </div>
            <input type="submit" value="Submit" class="btn btn-primary mt-3"/>
        </form:form>
    </div>
</body>
</html>