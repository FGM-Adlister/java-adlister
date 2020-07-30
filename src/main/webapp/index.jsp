<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="AdLister"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container-fluid">
    <h1 class="mx-auto my-4 text-center">Welcome to the Adlister!</h1>
    <div class="container bg-dark">
        <div id="carouselIndicators"
             class="mx-auto justify-content-center carousel slide d-block"
             data-ride="carousel" style="width: 75vw; height: auto;">
            <ol class="carousel-indicators">
                <li data-target="#carouselIndicators" data-slide-to="0"
                    class="active"></li>
                <li data-target="#carouselIndicators" data-slide-to="1"></li>
                <li data-target="#carouselIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block img-fluid"
                         src="https://www.webretailer.com/wp-content/uploads/2017/06/Turbo-Lister-Replacements-v2.jpg"
                         alt="First slide">
                    <div class="carousel-caption d-none d-sm-block">
                        <h5>Lorem Ipsum</h5>
                        <p>telor vidi vini vicci...</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid"
                         src="https://images.autotrader.com/scaler/653/490/hn/c/473eb455a3b14bc3a44874368ea8334d.jpg"
                         alt="Second slide">
                    <div class="carousel-caption d-none d-sm-block">
                        <h5>Lorem Ipsum</h5>
                        <p>telor vidi vini vicci...</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid"
                         src="https://www.ad-lister.co.uk/wp-content/themes/adl/ad-lister.jpg"
                         alt="Third slide">
                    <div class="carousel-caption d-none d-sm-block">
                        <h5>Lorem Ipsum</h5>
                        <p>telor vidi vini vicci...</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselIndicators" role="button"
               data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselIndicators" role="button"
               data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>
</body>
</html>