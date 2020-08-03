<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <li><a href="/ads/create">Create Add</a></li>
    <li><a href="/ads" >my Ads</a></li>
    <li><a href="/ads/index" >View All Ads</a></li>
</div>

</body>
</html>