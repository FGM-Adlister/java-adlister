<%--
  Created by IntelliJ IDEA.
  User: markalonge
  Date: 7/28/20
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Comment" />
    </jsp:include>
</head>
<body>
<h1>Add a Comment</h1>
<form action="/commentcreate" method="POST">
    <div class="form-group">
        <label for="username">Username</label>
        <input id="username" name="username" class="form-control" type="text">
    </div>
    <div class="form-group">
        <label for="comment">Comment</label>
        <input id="comment" name="comment" class="form-control" type="text">
    </div>
    <input type="submit" class="btn btn-primary btn-block" value="submit comment">
</form>

</body>
</html>
