<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <body>
    <div class="container">
    <h1 class="mt-3">Book Club</h1>
    <p>A place for friends to share thoughts on books</p>
        <div class="row">
            <div class="col">
                <h1>Register</h1>
                <form:form action="/users/process/register" method="post" modelAttribute="newUser">
                    <div class="form-group">
                        <label>Name:</label>
                        <form:input path="userName" class="form-control"/>
                        <form:errors path="userName" class="text-danger"/>
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <form:input path="email" class="form-control"/>
                        <form:errors path="email" class="text-danger"/>
                    </div>
                    <div>
                        <label>Password:</label>
                        <form:input path="password" type="password" class="form-control"/>
                        <form:errors path="password" class="text-danger"/>
                    </div>
                    <div class="form-group">
                        <label>Confirm PW:</label>
                        <form:input path="confirm" type="password" class="form-control"/>
                        <form:errors path="confirm" class="text-danger"/>
                    </div>
                    <input type="submit" value="Submit">
                </form:form>
            </div>
            <div class="col">
            <h1>Log In</h1>
            <form:form action="/users/process/login" method="post" modelAttribute="loginUser">
                <div class="form-group">
                    <label>Email:</label>
                    <form:input path="email" class="form-control"/>
                    <form:errors path="email" class="text-danger"/>
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <form:input path="password" type="password" class="form-control"/>
                    <form:errors path="password" class="text-danger"/>
                </div>
                <input type="submit" value="Submit"/>
            </form:form>
            </div> 
        </div>
    </div>
</body>
</body>
</html>