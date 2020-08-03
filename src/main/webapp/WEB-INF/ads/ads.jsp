<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All your Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are  your ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>${ad.submitted_by}</p>
            <tr>
                <td>
                    <form action="/ads/ads" method="post">
                        <input type="hidden" name="product_id" value="${ad.submitted_by == user.username}">
                        <input class="btn btn-danger btn-sm" type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        </div>
    </c:forEach>
</div>

</body>
</html>