<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<style>
        .yt{
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

  <!-- HEADER -->
    <header>
        <!-- NAVBAR TOP -->

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
                    <a class="nav-link" href="/about-us"> About us </a>
                    

                

               <li class="nav-item"><a class="nav-link" href="/contact"> contact </a></li>
            </ul>


            <!-- Search bar.// -->
            <ul class="navbar-nav">
                <li>
                    <a class="yt" href="/login">login |</a>
                    <a class="yt" href="/registration">Register</a>
                        
                </li>
            </ul>
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
                            <h2 class="text-capitalize text-white">login</h2>
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
                                        login
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
    <div class="clearfix"></div>

    <!-- LISTING LIST -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Login -->
<div class="card mx-auto" style="max-width: 380px;">
    <div class="card-body">
        <h4 class="card-title mb-4">Sign In</h4>
        <c:if test="${logoutMessage != null}">
			<c:out value="${logoutMessage}"></c:out>
		</c:if>
		<h1>Login</h1>
		<c:if test="${errorMessage != null}">
			<c:out value="${errorMessage}"></c:out>
		</c:if>
        <form:form method="POST" action="/login" modelAttribute="user">
            
            <div class="form-group">
                <input type="email" class="form-control" id="username" name="username" />
            </div> <!-- form-group// -->
            <div class="form-group">
               <input type="password" class="form-control" id="password" name="password" />
                
                <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> 
            </div> <!-- form-group// -->

            <div class="form-group">
                <a href="#" class="float-right">Forgot password?</a>
                <label class="float-left custom-control custom-checkbox"> <input type="checkbox"
                        class="custom-control-input" checked="">
                    <span class="custom-control-label"> Remember </span>
                </label>
            </div> <!-- form-group form-check .// -->
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block"> Login </button>
            </div> <!-- form-group// -->
        </form:form>
    </div> <!-- card-body.// -->
</div> <!-- card .// -->

<p class="text-center mt-4">Don't have account? <a href="/registration">Sign up</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- END LISTING LIST -->



    

    <!-- Footer  -->
<footer>
    <div class="wrapper__footer bg-theme-footer">
        <div class="container">
            <div class="row">
                <!-- ADDRESS -->
                <div class="col-md-4">
                    <div class="widget__footer">
                        <figure>
                            <img src="images/logo-blue.png" alt="" class="logo-footer">
                        </figure>
                        <p>
                            RentHouse is based on real estate renting service,which offers to the client in 12 cities all the added properties list which include (apartments,houses,villas,commercial offices),now any owner who owns the property can publish it on website,so the website can offers the easement reach to list of endless real estate properties in westbank.                            </p>


                        </p>

                       
                    </div>

                </div>
                <!-- END ADDRESS -->

                <!-- QUICK LINKS -->
                <div class="col-md-4">
                    <div class="widget__footer">
                        <h4 class="footer-title">Quick Links</h4>
                        <div class="link__category-two-column">
                            <ul class="list-unstyled ">
                                <li class="list-inline-item">
                                    <a href="#">Commercial</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">business</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">House</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Residential</a>
                                </li>

                                <li class="list-inline-item">
                                    <a href="#">Residential Tower</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Beverly Hills</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Los angeles</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">The beach</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Property Listing</a>
                                </li>

                                <li class="list-inline-item">
                                    <a href="#">Clasic</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Modern Home</a>
                                </li>

                                <li class="list-inline-item">
                                    <a href="#">Luxury</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Beach Pasadena</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- END QUICK LINKS -->


                <!-- NEWSLETTERS -->
                <div class="col-md-4">
                    <div class="widget__footer">
                        <h4 class="footer-title">follow us </h4>
                        <p class="mb-2">
                            Follow us and stay in touch to get the latest news
                        </p>
                        <p>
                            <button class="btn btn-social btn-social-o facebook mr-1">
                                <i class="fa fa-facebook-f"></i>
                            </button>
                            <button class="btn btn-social btn-social-o twitter mr-1">
                                <i class="fa fa-twitter"></i>
                            </button>

                            <button class="btn btn-social btn-social-o linkedin mr-1">
                                <i class="fa fa-linkedin"></i>
                            </button>
                            <button class="btn btn-social btn-social-o instagram mr-1">
                                <i class="fa fa-instagram"></i>
                            </button>

                            <button class="btn btn-social btn-social-o youtube mr-1">
                                <i class="fa fa-youtube"></i>
                            </button>
                        </p>
                        <br>
                        <h4 class="footer-title">Information</h4>
                        <p>                            RentHouse is based on real estate renting service,which offers to the client in 12 cities all the added properties list which include (apartments,houses,villas,commercial offices),now any owner who owns the property can publish it on website,so the website can offers the easement reach to list of endless real estate properties in westbank.                            </p>
                    </p>

                    </div>
                </div>
                <!-- END NEWSLETTER -->
            </div>
        </div>
    </div>

    <!-- Footer Bottom -->
    <div class="bg__footer-bottom-v1">
        <div class="container">
            <div class="row flex-column-reverse flex-md-row">
                <div class="col-md-6">
                    <span>
                        ? 2021 Rethouse Real Estate.
                       
                    </span>
                </div>
               
            </div>
        </div>
    </div>
    <!-- End Footer  -->
</footer>








    <a href="javascript:" id="return-to-top"><i class="fa fa-chevron-up"></i></a>

<script type="text/javascript" src="./js/index.bundle.js?10eb1139a9f2b8f356b2"></script>

</body>
</html>