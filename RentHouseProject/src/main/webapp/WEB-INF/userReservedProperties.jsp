<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<style>
        .uu{
            font-size: 20px;
            color: rgb(255, 16, 16);
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        
        }
    </style>

    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Rethouse - Real Estate HTML Template">
<meta name="keywords" content="Real Estate, Property, Directory Listing, Marketing, Agency" />
<meta name="author" content="mardianto - retenvi.com">
<title>Rethouse - Real Estate HTML Template</title>

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link rel="manifest" href="site.webmanifest">
<!-- favicon.ico in the root directory -->
<link rel="apple-touch-icon" href="icon.png">
<meta name="theme-color" content="#3454d1">
<link href="./css/styles.css?10eb1139a9f2b8f356b2" rel="stylesheet">
</head>
<body>

<header>
        

        <!-- NAVBAR -->
        <nav class="navbar navbar-hover navbar-expand-lg navbar-soft">
    <div class="container">
        <a class="navbar-brand" href="/mainPage">
            <img src="images/logo-blue-stiky.png" alt="" class="img-fluid">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav99">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="main_nav99">
            <ul class="navbar-nav  mx-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link" href="/mainPage"> Home </a>
                    
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="/about-us"> About Us </a>
                    

                

                <li class="nav-item"><a class="nav-link" href="/contact"> contact </a></li>
            </ul>


            <!-- Search bar.// -->
          <form id="logoutForm" method="POST" action="/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<button type="submit">
							<span class="ml-1 text-uppercase">Logout</span>
						</button>
					</form>
            <!-- Search content bar.// -->
            <div class="top-search navigation-shadow">
                <div class="container">
                    <div class="input-group ">
                        <form action="#">

                            <div class="row no-gutters mt-3">
                                <div class="col">
                                    <input class="form-control border-secondary border-right-0 rounded-0" type="search"
                                        value="" placeholder="Search " id="example-search-input4">
                                </div>
                                <div class="col-auto">
                                    <a class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right"
                                        href="/search-result.html">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
            <!-- Search content bar.// -->
        </div> <!-- navbar-collapse.// -->
    </div>
</nav>
        <!-- END NAVBAR -->
        <!-- BREADCRUMB -->
        <div class="bg-theme-overlay">
            <section class="section__breadcrumb ">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-md-8 text-center">
                            <h2 class="text-capitalize text-white">about us</h2>
                            <ul class="list-inline ">
                                <li class="list-inline-item">
                                    <a href="#" class="text-white">
                                        home
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="text-white">
                                        page
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="text-white">
                                        about us
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- END BREADCRUMB -->
    </header>
	<h3>
		Welcome,
		<c:out value="${user.name}" />
		your reserved properties are:
	</h3>
	<c:forEach items="${clientReservedProperties}" var="property">
		<p>
			<img src="images/<c:out value="${property.image}"></c:out>"
				alt="image_not_found">
		</p>
		<p> Property Owner:
			<c:out value="${property.owner.name}"></c:out>
		</p>
		<p>Property Type:
			<c:out value="${property.type}"></c:out>
		</p>
		<p>Property Area:
			<c:out value="${property.area}"></c:out>
		</p>
		<p>#of bedrooms:
			<c:out value="${property.bedrooms}"></c:out>
		</p>
		<p>#of bathrooms:
			<c:out value="${property.bathrooms}"></c:out>
		</p>
		<p>City:
			<c:out value="${property.city}"></c:out>
		</p>
		<p>Property Price:
			<c:out value="${property.price}"></c:out>
		</p>
		<p> Reservation Start Date:
			<c:out value="${property.startReserveDate}"></c:out>
		</p>
		<p>Reservation End Date:
			<c:out value="${property.endReserveDate}"></c:out>
		</p>
		<p>-----------------------------------------------------</p>
	</c:forEach>


</body>
</html>