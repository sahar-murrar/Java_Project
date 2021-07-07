
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <style>
        .tt{
            font-size: 20px;
            color: rgb(255, 16, 16);
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        
        }
        .row{
        display: block;
        
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
 <meta charset="ISO-8859-1"> 
<title>Insert title here</title></head>

<body>
    <!-- HEADER -->
    <header class="jumbotron bg-theme-v5">
        <div class="bg-overlay"></div>
        <!-- NAVBAR -->
        <nav class="navbar navbar-hover navbar-expand-lg navbar-soft navbar-transparent">
    <div class="container">
        <a class="navbar-brand" href="/mainPage">
            <img src="images/logo-blue.png" alt="">
            <img src="images/logo-blue-stiky.png" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav99">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="main_nav99">
            <ul class="navbar-nav mx-auto ">
                <li class="nav-item dropdown">
                    <a class="nav-link active" href="/mainPage" > Home </a>
                 
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link " href="/about-us"> About Us </a>
                    


                

                <li class="nav-item"><a class="nav-link" href="/contact"> contact </a></li>
            </ul>


            <!-- Search bar.// -->
            <ul class="navbar-nav ">
                <li>
                    <a class="tt" href="/login">login |</a>
                    <a class="tt" href="/registration">Register</a>
                </li>
            </ul>
            <!-- Search content bar.// -->
            <div class="top-search navigation-shadow">
                <div class="container">
                    <div class="input-group ">
                        	<form method="POST" action="/serach_property">


                            <div class="row no-gutters mt-3">
                                <div class="col">
                                    <input class="form-control border-secondary border-right-0 rounded-0" type="search"
                                        value="" placeholder="Search " id="example-search-input4">
                                </div>
                                <div class="col-auto">
                                    <a class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right"
                                        href="/serach_property">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="search" />

                        </form>
                    </div>
                </div>
            </div>
            <!-- Search content bar.// -->
        </div> <!-- navbar-collapse.// -->
    </div>
</nav>
        <!-- END NAVBAR -->
        <!-- HERO -->
        <div class="wrap__intro d-flex align-items-md-center  ">
            <div class="container  ">
                <div class="row align-items-center justify-content-start flex-wrap">
                    <div class="col-lg-12 mx-auto">
                        <div class="wrap__intro-heading" data-aos="fade-up">

                            <h1 class="text-capitalize">
                                Find your dream house </h1>
                            

                            <div class="bg__overlay-black p-4">
                                <div class="search__property">
    <div class="position-relative">
        <ul class="nav nav-tabs nav-tabs-02 mb-3 justify-content-start" id="pills-tab" role="tablist">
            <li class="nav-item mr-1">
                <a class="nav-link active" id="buy-tab" data-toggle="pill" href="#buy" role="tab" aria-controls="buy"
                    aria-selected="true">Rent </a>
            </li>
           <!--  <li class="nav-item mr-1">
                <a class="nav-link" id="rent-tab" data-toggle="pill" href="#rent" role="tab" aria-controls="rent"
                    aria-selected="false">Rent</a>
            </li> -->

        </ul>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade active show" id="buy" role="tabpanel" aria-labelledby="buy-tab">
            <form method="POST" action="/serach_property">
                <div class=" search__container">
                    <div class="row input-group no-gutters">
                        
                        <div class="col-lg-2">
                            <select class="select_option form-control" name="type" id="type">
                                <option value="appartment">Apartment</option>
                                <option value="houses">Houses</option>
                                <option value="villas">Villas</option>
                                <option value="commercial offices">Commercial Offices</option>
                            </select>
                        </div>
                        <div class="col-lg-2">
                            <input type="number" name="area" placeholder="Area" />
                        </div>
                        <div class="col-lg-2">
                            <input type="number" name="bedrooms"
                            placeholder="Bedrooms" />
                        </div>
                        <div class="col-lg-2">
                            <input type="number" name="bathrooms"
                            placeholder="Bathrooms" />
                        </div>
                        <div class="col-lg-2">
                            <select  class="select_option form-control" name="city" id="city">
                                <option value="Ramallah">Ramallah</option>
                                <option value="Nablus">Nablus</option>
                                <option value="Hebron">Hebron</option>
                                <option value="Jerusalem">Jerusalem</option>
                                <option value="Qalqelia">Qalqelia</option>
                                <option value="Jenin">Jenin</option>
                                <option value="Jericho">Jericho</option>
                                <option value="Bethlehem">Bethlehem</option>
                                <option value="Tubas">Tubas</option>
                                <option value="Yafa">Yafa</option>
                                <option value="Akka">Akka</option>
                            </select>
                        </div>
                        <div class="col-lg-2 input-group-append">
                            <input type="hidden" name="${_csrf.parameterName}"
                            value="${_csrf.token}" /> 
                            <button class="btn btn-primary btn-block" type="submit">
                                <i class="fa fa-search"></i> <span class="ml-1 text-uppercase">search</span>
                            </button>
                        </div>
                       
                </form>
                    </div>
                </div>
                
            </div> 
            <form method="POST" action="/serach_property">
            <div class="tab-pane fade" id="rent" role="tabpanel" aria-labelledby="rent-tab">
                <div class=" search__container">
                    <div class="row input-group no-gutters">
                       
                        <div class="col-lg-2">
                        
                            <select class="select_option form-control" name="type" id="type">
                                <option value="appartment">Apartment</option>
                                <option value="houses">Houses</option>
                                <option value="villas">Villas</option>
                                <option value="commercial offices">Commercial Offices</option>
                            </select>
                        </div>
                        <div class="col-lg-2">
                            <input type="number" name="area" placeholder="Area" />
                        </div>
                        <div class="col-lg-2">
                            <input type="number" name="bedrooms"
                            placeholder="bedrooms" />
                        </div>
                        <div class="col-lg-2">
                            <input type="number" name="bathrooms"
                            placeholder="bathrooms" />
                        </div>
                        <div class="col-lg-2">
                            <select class="city" name="city" id="city">
                                <option value="Ramallah">Ramallah</option>
                                <option value="Nablus">Nablus</option>
                                <option value="Hebron">Hebron</option>
                                <option value="Jerusalem">Jerusalem</option>
                                <option value="Qalqelia">Qalqelia</option>
                                <option value="Jenin">Jenin</option>
                                <option value="Jericho">Jericho</option>
                                <option value="Bethlehem">Bethlehem</option>
                                <option value="Tubas">Tubas</option>
                                <option value="Yafa">Salfit</option>
                                <option value="Akka">Tulkarm</option>
                            </select>
                        </div>
                        <div class="col-lg-2 input-group-append">
                            <input type="hidden" name="${_csrf.parameterName}"
                            value="${_csrf.token}" />
                            <button class="btn btn-primary btn-block" type="submit">
                                <i class="fa fa-search"></i> <span class="ml-1 text-uppercase">search</span>
                            </button>
                        </div>
                        
                        
                    </div>
                </div>
                
            </div>
            </form>

        </div>
    </div>
</div>
                            </div>
                        </div>
                    </div>
                </div>
         
        <!-- END HERO -->
    </header>
    <!-- END HEADER -->


    



   


   
                   

    

    


   


    <!-- FOOTER -->
    <!-- Footer  -->
<footer>
    <div class="wrapper__footer bg__footer ">
        <div class=" container">
            <div class="row">
                <div class="col-md-4">
                    <div class="widget__footer mb-3">
                        <!-- <h4 class="footer-title">company info</h4> -->
                        <figure>
                            <img src="images/logo-blue.png" alt="" class="logo-footer">
                        </figure>
                        <p>
                                                       RentHouse is based on real estate renting service,which offers to the client in 12 cities all the added properties list which include (apartments,houses,villas,commercial offices),now any owner who owns the property can publish it on website,so the website can offers the easement reach to list of endless real estate properties in westbank.                            </p>


                        </p>
                    </div>
                    <div class="border-line"></div>
                    <div class="widget__footer">
                        <h4 class="footer-title">follow us </h4>
                        <!-- <p>
                        Follow us and stay in touch to get the latest news
                    </p> -->
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
                    </div>
                </div>

                <!-- QUICK LINKS -->
                <div class="col-md-4">
                    <div class="widget__footer">
                        <h4 class="footer-title">Quick Links</h4>
                        <div class="link__category">
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
                                    <a href="#">Apartements</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Residential</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Villa</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Office</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Beverly Hills</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">classic</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Modern</a>
                                </li>

                                <li class="list-inline-item">
                                    <a href="#">Luxury</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>

                <!-- NEWSLETTERS -->
                <div class="col-md-4">
                    <div class="widget__footer">
                        <h4 class="footer-title">newsletter</h4>
                        <!-- Form Newsletter -->

                        <div class="widget__form-newsletter ">
                            <p>

RentHouse is based on real estate renting service,which offers to the client in 12 cities all the added properties list which include (apartments,houses,villas,commercial offices),now any owner who owns the property can publish it on website,so the website can offers the easement reach to list of endless real estate properties in westbank.                            </p>
                           
                        </div>

                    </div>
                </div>
                <!-- END NEWSLETTER -->
            </div>

        </div>
    </div>

    <!-- Footer Bottom -->
    <div class="bg__footer-bottom ">
        <div class="container">
            <div class="row flex-column-reverse flex-md-row">
                <div class="col-md-6">
                    <span>
                         2021 Rethouse Real Estate.
                       
                    </span>
                </div>
                
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->
    <!-- END FOOTER -->

    <!-- SCROLL TO TOP -->
    <a href="javascript:" id="return-to-top"><i class="fa fa-chevron-up"></i></a>
    <!-- END SCROLL TO TOP -->
<script type="text/javascript" src="./js/index.bundle.js?10eb1139a9f2b8f356b2"></script></body>

</html>