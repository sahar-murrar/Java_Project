<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<style>
.tv {
	font-size: 20px;
	color: rgb(255, 16, 16);
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Rethouse - Real Estate HTML Template">
<meta name="keywords"
	content="Real Estate, Property, Directory Listing, Marketing, Agency" />
<meta name="author" content="mardianto - retenvi.com">
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
<link rel="stylesheet" type="text/css" href="css/styles.css">
<title>Wanted Property List</title>
<meta charset="ISO-8859-1">
</head>
<body>
	<header class="bg-theme-overlay">
		<!-- <div class="bg-overlay-one"></div> -->
		<!-- NAVBAR -->
		<nav
			class="navbar navbar-hover navbar-expand-lg navbar-soft navbar-transparent">
			<div class="container">
				<a class="navbar-brand" href="homepage-v2.html"> <img
					src="images/logo-blue.png" alt=""> <img
					src="images/logo-blue-stiky.png" alt="">
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#main_nav99">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="main_nav99">
					<ul class="navbar-nav mx-auto ">
						<li class="nav-item dropdown"><a class="nav-link"
							href="/home"> Home </a></li>
						<li class="nav-item dropdown"><a class="nav-link"
							href="about-us.html"> About Us </a>
						<li class="nav-item"><a class="nav-link" href="contact.html">
								contact </a></li>
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
											<input
												class="form-control border-secondary border-right-0 rounded-0"
												type="search" value="" placeholder="Search "
												id="example-search-input4">
										</div>
										<div class="col-auto">
											<a
												class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right"
												href="/search-result.html"> <i class="fa fa-search"></i>
											</a>
										</div>
									</div>

								</form>
							</div>
						</div>
					</div>
					<!-- Search content bar.// -->
				</div>
				<!-- navbar-collapse.// -->
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- BREADCRUMB -->
		<section class="section__breadcrumb ">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="col-md-8 text-center">
						<h2 class="text-capitalize text-white ">properties list</h2>
					</div>
				</div>
			</div>
		</section>
		<!-- END BREADCRUMB -->
	</header>
	<div class="clearfix"></div>

	<!-- LISTING LIST -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-4" style="display: flex;">
					<!-- FORM FILTER -->
					<div class="products__filter mb-30" style="margin-top: 30px">
						<div class="products__filter__group">
							<div class="products__filter__header">

								<h5 class="text-center text-capitalize">property filter</h5>
							</div>
							<form method="POST" action="/serach_property">
								<div class="products__filter__body">
									<div class="form-group"></div>
									<div class="form-group">

										<select class="wide select_option" name="type" id="type">
											<option data-display="Property Type">Property Type</option>
											<option value="appartment">Appartment</option>
											<option value="houses">Houses</option>
											<option value="villas">Villas</option>
											<option value="commercial offices">Commercial
												Offices</option>
										</select>

									</div>
									<div class="form-group">
										<input type="number" name="area"
											placeholder="choose prpoerty area" />
									</div>
									<div class="form-group">
										<select class="wide select_option" name="city" id="city">
											<option data-display="Locations">Location</option>
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
									<div class="form-group">
										<input type="number" name="bedrooms"
											placeholder="choose prpoerty #of bedrooms" />
									</div>
									<div class="form-group">
										<div class="form-group">
											<input type="number" name="bathrooms"
												placeholder="choose prpoerty #of bathrooms" />
										</div>
									</div>

									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<div class="products__filter__footer">
										<div class="form-group mb-0">
											<button class="btn btn-primary text-capitalize btn-block">
												<i class="fa fa-search ml-1"></i> search property
											</button>

										</div>

									</div>

								</div>

							</form>
						</div>

						<!-- END FORM FILTER -->
						<!-- ARCHIVE CATEGORY -->
						<div class=" wrapper__list__category">
							<!-- CATEGORY -->

							<!-- END CATEGORY -->
						</div>
						<!-- End ARCHIVE CATEGORY -->

					</div>

					<div
						style="display: flex; justify-content: space-between; width: 100%">
						<c:forEach items="${wantedProperties}" var="property">
							<div class="col-lg-8">
								<div class="row" style="width: 500px;">
									<div class="col-md-6 col-lg-6">
										<div class="card__image card__box-v1">
											<div class="card__image-header h-250">
												<div class="ribbon text-capitalize">
													<c:out value="${property.status}"></c:out>
												</div>
												<img src="images/<c:out value="${property.image}"></c:out>"
													alt="image_not_found">
												<div class="info">for sale</div>
											</div>
											<div class="card__image-body">
												<span class="badge badge-primary text-capitalize mb-2"><c:out
														value="${property.type}"></c:out></span>


												<p class="text-capitalize">
													<i class="fa fa-map-marker"></i>
													<c:out value="${property.city}"></c:out>
												</p>
												<ul class="list-inline card__content">
													<li class="list-inline-item"><span> bathrooms <br>
															<i class="fa fa-bath"></i> <c:out
																value="${property.bathrooms}"></c:out>
													</span></li>
													<li class="list-inline-item"><span> bedrooms <br>
															<i class="fa fa-bed"></i> <c:out
																value="${property.bedrooms}"></c:out>
													</span></li>

													<li class="list-inline-item"><span> area <br>
															<i class="fa fa-map"></i> <c:out
																value="${property.area} ft"></c:out>
													</span></li>
												</ul>
											</div>
											<form action="/view/${property.id}" style="margin-top: 15px">
												<input type="submit" value="View Property">
											</form>

											<div class="card__image-footer">

												<ul class="list-inline my-auto">
													<li class="list-inline-item">
														<form action="/property/reserve/${property.id}"
															style="margin-top: 15px">
														 <input type="submit"
																value="Reserve">
														</form>

													</li>
													</li>
													<li class="list-inline-item">

													<h6> Price:
														<c:out value="${property.price}$"></c:out>
													</h6>
												</li>

												</ul>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- END FILTER VERTICAL -->
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
							<p>RentHouse is based on real estate renting service,which
								offers to the client in 12 cities all the added properties list
								which include (apartments,houses,villas,commercial offices),now
								any owner who owns the property can publish it on website,so the
								website can offers the easement reach to list of endless real
								estate properties in westbank.</p>


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
									<li class="list-inline-item"><a href="#">Commercial</a></li>
									<li class="list-inline-item"><a href="#">business</a></li>
									<li class="list-inline-item"><a href="#">House</a></li>
									<li class="list-inline-item"><a href="#">Residential</a></li>

									<li class="list-inline-item"><a href="#">Residential
											Tower</a></li>
									<li class="list-inline-item"><a href="#">Beverly Hills</a></li>
									<li class="list-inline-item"><a href="#">Los angeles</a></li>
									<li class="list-inline-item"><a href="#">The beach</a></li>
									<li class="list-inline-item"><a href="#">Property
											Listing</a></li>

									<li class="list-inline-item"><a href="#">Clasic</a></li>
									<li class="list-inline-item"><a href="#">Modern Home</a></li>

									<li class="list-inline-item"><a href="#">Luxury</a></li>
									<li class="list-inline-item"><a href="#">Beach
											Pasadena</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- END QUICK LINKS -->


					<!-- NEWSLETTERS -->
					<div class="col-md-4">
						<div class="widget__footer">
							<h4 class="footer-title">follow us</h4>
							<p class="mb-2">Follow us and stay in touch to get the latest
								news</p>
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
							<p>RentHouse is based on real estate renting service,which
								offers to the client in 12 cities all the added properties list
								which include (apartments,houses,villas,commercial offices),now
								any owner who owns the property can publish it on website,so the
								website can offers the easement reach to list of endless real
								estate properties in westbank.</p>
							</p>
							<!-- Form Newsletter -->


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
						<span> © 2021 Rethouse Real Estate. </span>
					</div>

				</div>
			</div>
		</div>
		<!-- End Footer  -->
	</footer>
</body>
</html>
