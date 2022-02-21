<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form name="LoginForm" action="/aircost/start" method="post">
    <div class="container">
        <h1>Login Form</h1>
        <p>Please fill in this form.</p>
        <hr>
        <label>
            <input type="text" placeholder="Enter Email"
                   pattern="^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$" name="email"
                   required>
        </label>
        <label>
            <input type="password" minlength="8" placeholder="Enter Password" name="password" required>
        </label>
        <hr>
        <button type="submit" class="loginbtn">Sign In</button>
    </div>
    <div class="container signing">
        <p>Don't have an account yet? <a href="/aircost/start?command=register_page">Register now!</a></p>
    </div>
    <p id="errorText" style="color:red;">${error}</p>
    <input type="hidden" name="command" value="LOGIN">
</form>
<br/>
<a href="<c:url value='/index.jsp'/>">Back</a>
</body>
</html>