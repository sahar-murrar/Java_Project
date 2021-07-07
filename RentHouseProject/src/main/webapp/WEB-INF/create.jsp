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
            <ul class="navbar-nav">
                <li>
                    <a class="uu"href="/login">Login |</a>
                    <a class="uu"href="/registration">Register</a>
                        
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
<form:form method="POST" action="/create_property" modelAttribute="property">
		<p>
			Type:
			<form:select class="custom-select" name="type" id="type" path="type">
				<form:option value="appartment">Appartment</form:option>
				<form:option value="houses">Houses</form:option>
				<form:option value="villas">Villas</form:option>
				<form:option value="commercial offices">Commercial Offices</form:option>
			</form:select>
			<form:errors path="type" />
		</p>
		<p>
			<form:label path="area">Area:</form:label>
			<form:input class="form-control" type="number" path="area" />
			<form:errors path="area" />
		</p>
		<p>
			<form:label path="bedrooms">#of Bedrooms:</form:label>
			<form:input class="form-control" type="number" path="bedrooms" />
			<form:errors path="bedrooms" />
		</p>
		<p>
			<form:label path="bathrooms">#of Bathrooms:</form:label>
			<form:input class="form-control" type="number" path="bathrooms" />
			<form:errors path="bathrooms" />
		</p>

		<p>
			<form:label path="price">Price:</form:label>
			<form:input class="form-control" type="number" path="price" />
			<form:errors path="price" />
		</p>
		<p>
			<form:label path="description">Description:</form:label>
			<form:textarea class="form-control" path="description" />
			<form:errors path="description" />
		</p>
		<p>
			City:
			<form:select class="custom-select" name="city" id="city" path="city">
				<form:option value="Ramallah">Ramallah</form:option>
				<form:option value="Nablus">Nablus</form:option>
				<form:option value="Hebron">Hebron</form:option>
				<form:option value="Jerusalem">Jerusalem</form:option>
				<form:option value="Qalqelia">Qalqelia</form:option>
				<form:option value="Jenin">Jenin</form:option>
				<form:option value="Jericho">Jericho</form:option>
				<form:option value="Bethlehem">Bethlehem</form:option>
				<form:option value="Tubas">Tubas</form:option>
				<form:option value="Yafa">Salfit</form:option>
				<form:option value="Akka">Tulkarm</form:option>
			</form:select>
			<form:errors path="city" />
		</p>
		<p>
            <form:label path="image">image:</form:label>
            <form:input class="form-control" path="image" />
            <form:errors path="image" />
        </p>
        
		<p>
			<form:input type="hidden" path="status" value="available" />
		</p>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> 
		<form  method="POST" action="/create_property">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		  <button class="btn btn-primary btn-block" type="submit">
                                <i class="fa "></i> <span class="ml-1 text-uppercase">Create</span>
                            </button>
                            </form>
	</form:form>

</body>
</html>