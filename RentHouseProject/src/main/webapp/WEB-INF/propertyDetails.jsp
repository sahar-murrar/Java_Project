<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<style>
        .tvv{
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
        <a class="navbar-brand" href="homepage-v2.html">
            <img src="images/logo-blue-stiky.png" alt="" class="img-fluid">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav99">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="main_nav99">
            <ul class="navbar-nav  mx-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link" href="homepage-v2.html"> Home </a>
                   
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="about-us.html" > About Us </a>
                    

                <li class="nav-item"><a class="nav-link" href="contact.html"> contact </a></li>
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
            <!-- BREADCRUMB -->
<section class="section__breadcrumb ">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-md-8 text-center">
                <h2 class="text-capitalize text-white ">single property</h2>
                <ul class="list-inline ">
                    <li class="list-inline-item">
                        <a href="#" class="text-white">
                            home
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#" class="text-white">
                            property
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#" class="text-white">
                            single property
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</section>
<!-- END BREADCRUMB -->
        </div>
        <!-- END BREADCRUMB -->
    </header>
    <div class="clearfix"></div>

    <!-- SINGLE DETAIL -->
    <section class="single__Detail">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- TITLE PROPERTY AND PRICE  -->
                    <div class="single__detail-area pt-0 pb-4">
                        <div class="row">
                            <div class="col-md-8 col-lg-8">
                                <div class="single__detail-area-title">
                                    <h3 class="text-capitalize">Luxury Family Home</h3>
                                    <p> 166 welling street, collingwood, vic 3066</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <div class="single__detail-area-price">
                                    <h3 class="text-capitalize text-gray">$13.000/mo</h3>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a href="#" class="badge badge-primary p-2 rounded"><i
                                                    class="fa fa-exchange"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="badge badge-primary p-2 rounded"><i
                                                    class="fa fa-heart"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" class="badge badge-primary p-2 rounded"><i
                                                    class="fa fa-print"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END TITLE PROPERTY AND PRICE  -->

                    <!-- SLIDER IMAGE DETAIL -->
                    <div class="slider__image__detail-large-two owl-carousel owl-theme">
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>

        </div>
    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>

        </div>
    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>
        </div>

        

    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>
        </div>
    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>
        </div>
    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>
        </div>
    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>
        </div>
    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>

            </div>
        </div>
    </div>
    <div class="item">
        <div class="slider__image__detail-large-one">
            <img src="images/1920x1080.jpg" alt="" class="img-fluid w-100 img-transition">
            <div class="description">
                <figure>
                    <img src="images/80x80.jpg" alt="" class="img-fluid">
                </figure>
                <span class="badge badge-primary text-capitalize mb-2">house</span>
                <div class="price">
                    <h5 class="text-capitalize">$13,000/mo</h5>
                </div>
                <h4 class="text-capitalize">Luxury Family Home</h4>
                <!-- <p class="text-uppercase">
                    166 welling street, collingwood, vic 3066
                </p> -->
            </div>
        </div>
    </div>
</div>


                </div>
                <div class="col-lg-4 pt-5">
                    <!-- FORM FILTER -->
<div class="products__filter mb-30">
    <div class="products__filter__group">
        <div class="products__filter__header">

            <h5 class="text-center text-capitalize">property filter</h5>
        </div>
        <div class="products__filter__body">
            
            <div class="form-group">
                <select class="wide select_option">
                    <option data-display="Property Type">Property Type</option>
                    <option>House</option>
                    <option>Apartment</option>
                    <option>Villa</option>
                    <option>Commercial</option>
                </select>
            </div>
            <div class="form-group">
                <select class="wide select_option">
                    <option data-display="Area From">Area From </option>
                    <option>50 m</option>
                    <option>100 m</option>
                    <option>150 m</option>
                    <option>200 m</option>
                    <option>200 m or above</option>
                </select>
            </div>
            <div class="form-group">
                <select class="wide select_option">
                    <option data-display="Locations">Locations</option>
                    <option>Nablus</option>
                    <option>Ramallah</option>
                    <option>Jenin</option>
                    <option>Tulkarm</option>
                    <option>Jericho</option>
                    <option>Bethlehem</option>
                    <option>Hebron</option>
                    <option>Jerusalem</option>
                    <option>Qalqilia</option>
                    <option>Salfit</option>
                </select>
            </div>
            <div class="form-group">
                <select class="wide select_option">
                    <option data-display="Bedrooms">Bedrooms</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                </select>
            </div>
            <div class="form-group">
                <div class="form-group">
                    <select class="wide select_option">
                        <option data-display="Bathrooms">Bathrooms</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>

                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="mb-3">Price range</label>
                <div class="filter__price">
                    <input class="price-range" type="text" name="my_range" value="" />
                </div>
            </div>

            <div class="form-group mb-0 mt-2">

                <a class="btn btn-outline-primary btn-block text-capitalize advanced-filter" data-toggle="collapse"
                    href="#multiCollapseExample1" aria-controls="multiCollapseExample1"><i
                        class="fa fa-plus-circle"></i> advanced
                    filter
                </a>

                <div class="collapse multi-collapse" id="multiCollapseExample1">
                    <div class="advancedfilter">
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox2" type="checkbox">
                            <label for="checkbox2" class="label-brand text-capitalize">
                                Air Conditioning
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox3" type="checkbox">
                            <label for="checkbox3" class="label-brand text-capitalize">
                                Swiming Pool
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox4" type="checkbox">
                            <label for="checkbox4" class="label-brand text-capitalize">
                                Central Heating
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox5" type="checkbox">
                            <label for="checkbox5" class="label-brand text-capitalize">
                                Spa & Massage
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox6" type="checkbox">
                            <label for="checkbox6" class="label-brand text-capitalize">
                                Pets Allow
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox7" type="checkbox">
                            <label for="checkbox7" class="label-brand text-capitalize">
                                Air Conditioning
                            </label>

                        </div>

                        <div class="checkbox checkbox-primary">
                            <input id="checkbox8" type="checkbox">
                            <label for="checkbox8" class="label-brand text-capitalize">
                                Gym
                            </label>

                        </div>

                        <div class="checkbox checkbox-primary">
                            <input id="checkbox9" type="checkbox">
                            <label for="checkbox9" class="label-brand text-capitalize">
                                Alarm
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox10" type="checkbox">
                            <label for="checkbox10" class="label-brand text-capitalize">
                                Window Covering
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox11" type="checkbox">
                            <label for="checkbox11" class="label-brand text-capitalize">
                                Free WiFi
                            </label>

                        </div>
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox12" type="checkbox">
                            <label for="checkbox12" class="label-brand text-capitalize">
                                Car Parking
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products__filter__footer">
            <div class="form-group mb-0">
                <button class="btn btn-primary text-capitalize btn-block"><i class="fa fa-search ml-1"></i> search
                    property </button>

            </div>
        </div>
    </div>

</div>
<!-- END FORM FILTER -->
                    <!-- FORM FILTER -->


<!-- END FORM FILTER -->
                    <div class="sticky-top">
 
                       


                    </div>
                </div>
                <div class="col-lg-8">
                    <!-- DESCRIPTION -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="single__detail-desc">
                                <h6 class="text-capitalize detail-heading">description</h6>
                                <div class="show__more">
                                    <p>Evans Tower very high demand corner junior one bedroom plus a large balcony
                                        boasting
                                        full open NYC views. You need to see the views to believe them. Mint condition
                                        with
                                        new hardwood floors. Lots of closets plus washer and dryer.</p>
                                    <p>
                                        Fully furnished. Elegantly appointed condominium unit situated on premier
                                        location.
                                        PS6. The wide entry hall leads to a large living room with dining area. This
                                        expansive 2 bedroom and 2 renovated marble bathroom apartment has great windows.
                                        Despite the interior views, the apartments Southern and Eastern exposures allow
                                        for
                                        lovely natural light to fill every room. The master suite is surrounded by
                                        handcrafted milkwork and features incredible walk-in closet and storage space.
                                    </p>
                                    <p>Fully furnished. Elegantly appointed condominium unit situated on premier
                                        location. PS6. The wide entry hall leads to a large living room with dining
                                        area. This expansive 2 bedroom and 2 renovated marble bathroom apartment has
                                        great windows. Despite the interior views, the apartments Southern and Eastern
                                        exposures allow for lovely natural light to fill every room. The master suite is
                                        surrounded by handcrafted milkwork and features incredible walk-in closet and
                                        storage space.</p>
                                    <a href="javascript:void(0)" class="show__more-button ">read more</a>
                                </div>
                            </div>
                            <div class="clearfix"></div>

                            <div class="form_item" data-aos="fade-up" data-aos-delay="300">
                                <label>Start Date</label>
                                <h4 class="input_title text-white">Pick A Date</h4>
                                <input type="date" name="pdate" required>
                            </div>
                    
                            <div class="form_item" data-aos="fade-up" data-aos-delay="300">
                                <label>End Date</label>
                                <h4 class="input_title text-white">Return Date</h4>
                                <input type="date" name="rdate" required>
                            </div>
                            <br>

                            <button class="btn btn-primary " type="submit">
                                <i class="fa fa-search"></i> <span class="ml-1 text-uppercase">Reserve</span>
                            </button>

                            <!-- PROPERTY DETAILS SPEC -->
                            <div class="single__detail-features">
                                <h6 class="text-capitalize detail-heading">property details</h6>
                                <!-- INFO PROPERTY DETAIL -->
<div class="property__detail-info">
    <div class="row">
        <div class="col-md-6 col-lg-6">
            <ul class="property__detail-info-list list-unstyled">
                <li><b>Property ID:</b> RV151</li>
                <li><b>Price:</b> $484,400</li>
                <li><b>Property Size:</b> 1466 Sq Ft</li>
                <li><b>Bedrooms:</b> 4</li>
                <li><b>Bathrooms:</b> 2</li>
            </ul>
        </div>
        <div class="col-md-6 col-lg-6">
            <ul class="property__detail-info-list list-unstyled">
                <li><b>Garage:</b> 1</li>
                <li><b>Garage Size:</b> 458 SqFt</li>
                <li><b>Year Built:</b> 2019-01-09</li>
                <li><b>Property Type:</b> Full Family Home</li>
                <li><b>Property Status:</b> For rent</li>
            </ul>
        </div>
    </div>
    <h6 class="text-primary">Additional details</h6>
    <div class="row">
        <div class="col-md-6 col-lg-6">
            <ul class="property__detail-info-list list-unstyled">
                <li><b>Property ID:</b> RV151</li>
                <li><b>Price:</b> $484,400</li>
                <li><b>Property Size:</b> 1466 Sq Ft</li>
                <li><b>Bedrooms:</b> 4</li>
                <li><b>Bathrooms:</b> 2</li>
            </ul>
        </div>
        <div class="col-md-6 col-lg-6">
            <ul class="property__detail-info-list list-unstyled">
                <li><b>Garage:</b> 1</li>
                <li><b>Garage Size:</b> 458 SqFt</li>
                <li><b>Year Built:</b> 2019-01-09</li>
                <li><b>Property Type:</b> Full Family Home</li>
                <li><b>Property Status:</b> For rent</li>
            </ul>
        </div>
    </div>

</div>
<!-- END INFO PROPERTY DETAIL -->
                            </div>
                            <!-- END PROPERTY DETAILS SPEC -->
                            <div class="clearfix"></div>

                            <!-- FEATURES -->
                            <div class="single__detail-features">
                                <h6 class="text-capitalize detail-heading">features</h6>
                                <ul class="list-unstyled icon-checkbox">
                                    <li>air conditioning</li>
                                    <li>swiming pool</li>
                                    <li>Central Heating</li>
                                    <li>spa & massage</li>
                                    <li>pets allow</li>

                                    <li>air conditioning</li>
                                    <li>gym</li>
                                    <li>alarm</li>

                                    <li>window Covering</li>
                                    <li>free wiFi</li>
                                    <li>car parking </li>
                                </ul>
                            </div>
                            <!-- END FEATURES -->

                            <!-- FLOR PLAN -->
                            <div class="single__detail-features">
                                <h6 class="text-capitalize detail-heading">floor plan</h6>
                                <!-- FLOR PLAN IMAGE -->
                                <div id="accordion" class="floorplan" role="tablist">
    <div class="card">
        <div class="card-header" role="tab" id="headingOne">
            <a class="text-capitalize" data-toggle="collapse" href="#collapseOne" aria-expanded="true"
                aria-controls="collapseOne">
                first floor <span class="badge badge-light rounded p-1 ml-2">460 sq ft</span>
            </a>
        </div>
        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne"
            data-parent="#accordion">
            <div class="card-body">
                <figure>
                    <img src="images/floorplan.jpg" alt="" class="img-fluid">
                </figure>

                Excepteur sint ocaec at cupdatat proident suntin culpa qui officia deserunt mol anim id esa laborum
                perspiciat.
                Duis aute irure dolor reprehenderit in voluptate velit essle cillum dolore eu fugiat nulla pariatur.

            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" role="tab" id="headingTwo">

            <a class="collapsed text-capitalize" data-toggle="collapse" href="#collapseTwo" aria-expanded="false"
                aria-controls="collapseTwo">
                second floor <span class="badge badge-light rounded p-1 ml-2">460 sq ft</span>
            </a>
        </div>
        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
            <div class="card-body">
                <figure>
                    <img src="images/floorplan2.jpg" alt="" class="img-fluid">
                </figure>
                They offers a host of logistic management services and supply chain . We provide innovative solutions
                with the best. tempor incididunt ut labore et dolor empor tempor incididunt innovative solutions

            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" role="tab" id="headingThree">
            <a class="collapsed text-capitalize" data-toggle="collapse" href="#collapseThree" aria-expanded="false"
                aria-controls="collapseThree">
                garage <span class="badge badge-light rounded p-1 ml-2">460 sq ft</span>
            </a>
        </div>
        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree"
            data-parent="#accordion">
            <div class="card-body">
                <figure>
                    <img src="images/floorplan3.jpg" alt="" class="img-fluid">
                </figure>
                They offers a host of logistic management services and supply chain . We provide innovative solutions
                with the best. tempor incididunt ut labore et dolor empor tempor incididunt innovative solutions

            </div>
        </div>
    </div>

</div>
                            </div>
                            <!-- END FLOR PLAN -->
                            


                            <!-- LOCATION -->
                            <div class="single__detail-features">
                                <h6 class="text-capitalize detail-heading">location</h6>
                                <!-- FILTER VERTICAL -->
<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="pills-map-location-tab" data-toggle="pill" href="#pills-map-location" role="tab"
            aria-controls="pills-map-location" aria-selected="true">
            <i class="fa fa-map-marker"></i>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="pills-street-view-tab" data-toggle="pill" href="#pills-street-view" role="tab"
            aria-controls="pills-street-view" aria-selected="false">
            <i class="fa fa-street-view "></i></a>
    </li>


</ul>
<div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-map-location" role="tabpanel"
        aria-labelledby="pills-map-location-tab">
        <div id="map-canvas">
            <iframe class="h600 w100"
                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d50446.89789906054!2d-122.41577600000001!3d37.791654!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd473843de08ff793!2sBetter%20Property%20Management!5e0!3m2!1sen!2sus!4v1591226304089!5m2!1sen!2sus"
                style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>

    </div>
    <div class="tab-pane fade" id="pills-street-view" role="tabpanel" aria-labelledby="pills-street-view-tab">
        <iframe class="h600 w100"
            src="https://www.google.com/maps/embed?pb=!4v1553797194458!6m8!1m7!1sR4K_5Z2wRHTk9el8KLTh9Q!2m2!1d36.82551718071267!2d-76.34864590837246!3f305.15097!4f0!5f0.7820865974627469"
            style="border:0;" allowfullscreen></iframe>
    </div>


</div>
<!-- END FILTER VERTICAL -->
                            </div>
                           
                            
                            </div>
                            
                            

</div>
                            </div>
                            <!-- END RATE US  WRITE -->
                        </div>
                    </div>
                    <!-- END DESCRIPTION -->
                </div>
            </div>

            
            <!-- END SIMILIAR PROPERTY -->

        </div>
    </section>
    <!-- END SINGLE DETAIL -->

  

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
                        <!-- Form Newsletter -->
                        <div class="widget__form-newsletter ">
                            <p>

                                RentHouse is based on real estate renting service,which offers to the client in 12 cities all the added properties list which include (apartments,houses,villas,commercial offices),now any owner who owns the property can publish it on website,so the website can offers the easement reach to list of endless real estate properties in westbank.                            </p>
                            </p>
                            
                        </div>

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
                         2021 Rethouse Real Estate.
                       
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