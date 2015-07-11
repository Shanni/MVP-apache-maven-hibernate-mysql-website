
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow">
<title>Movie Information System</title>
<!-- Essential styles -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="assets/fancybox/jquery.fancybox.css?v=2.1.5" media="screen">

<!-- Boomerang styles -->
<link id="wpStylesheet" type="text/css" href="css/global-style.css"
	rel="stylesheet" media="screen">

<!-- Favicon -->
<link href="images/favicon.png" rel="icon" type="image/png">
<!-- Assets -->
<link rel="stylesheet" href="assets/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="assets/owl-carousel/owl.theme.css">
<link rel="stylesheet" href="assets/sky-forms/css/sky-forms.css">
<!--[if lt IE 9]>
        <link rel="stylesheet" href="assets/sky-forms/css/sky-forms-ie8.css">
        <![endif]-->
<!-- Required JS -->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
<!-- Page scripts -->
<link rel="stylesheet" href="assets/layerslider/css/layerslider.css"
	type="text/css">
</head>
<body>

	<!-- MODALS -->
	<!-- MOBILE MENU - Option 2 -->
	<section id="navMobile" class="aside-menu left">
		<form class="form-horizontal form-search" action="moviesearch">
			<div class="input-group">
				<input type="search" class="form-control"
					placeholder="Search Movie..." name="search_key"> <span
					class="input-group-btn">
					<button id="btnHideMobileNav" class="btn btn-close" type="submit"
						title="Hide sidebar">
						<i class="fa fa-times"></i>
					</button>
				</span>
			</div>
		</form>
		<div id="dl-menu" class="dl-menuwrapper">
			<ul class="dl-menu"></ul>
		</div>
	</section>
	<!-- SLIDEBAR -->
	<section id="asideMenu" class="aside-menu right">
		<form class="form-horizontal form-search">
			<div class="input-group">
				<input type="search" class="form-control" placeholder="Search..." />
				<span class="input-group-btn">
					<button id="btnHideAsideMenu" class="btn btn-close" type="button"
						title="Hide sidebar">
						<i class="fa fa-times"></i>
					</button>
				</span>
			</div>
		</form>

		<h5 class="side-section-title">Optional sidebar menu</h5>
		<div class="nav">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About us</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">Work</a></li>
				<li><a href="#">Online shop</a></li>
			</ul>
		</div>

		<h5 class="side-section-title">Social media</h5>
		<div class="social-media">
			<a href="#"><i class="fa fa-facebook facebook"></i></a> <a href="#"><i
				class="fa fa-google-plus google"></i></a> <a href="#"><i
				class="fa fa-twitter twitter"></i></a>
		</div>

		<h5 class="side-section-title">Contact information</h5>
		<div class="contact-info">
			<h5>Address</h5>
			<p>Stony Brook, NY</p>

			<h5>Email</h5>
			<p>shan.liu03@gmail.com</p>

			<h5>Phone</h5>
			<p>+1 631 561 5439</p>
		</div>
	</section>
	<!-- HEADER -->
	<div id="divHeaderWrapper">
		<header class="header-standard-2">
			<!-- MAIN NAV -->
			<div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button"
							class="navbar-toggle navbar-toggle-aside-menu">
							<i class="fa fa-outdent icon-custom"></i>
						</button>
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<i class="fa fa-bars icon-custom"></i>
						</button>
						<a class="navbar-brand" href="home" title="Team Ginko for the win!">
							<img src="<c:url value="/resources/images/ginko-logo.png"/>">
						</a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="hidden-md hidden-lg">
								<div class="bg-light-gray">
									<form class="form-horizontal form-light p-15" role="form"
										action="moviesearch">
										<div class="input-group input-group-lg">
											<input type="text" class="form-control" name="search_key"
												placeholder="I want to find movie..."> <span
												class="input-group-btn">
												<button class="btn btn-white" type="submit">
													<i class="fa fa-search"></i>
												</button>
											</span>
										</div>
									</form>
								</div>
							</li>
							<li class="dropdown dropdown-meganav mega-dropdown-fluid">
							<li class="dropdown dropdown-meganav mega-dropdown-fluid">
							<li class="dropdown">
							<a href="home" class="dropdown-toggle" data-toggle="dropdown">HOME</a>
								<ul class="dropdown-menu">
									<li><a href="home">Home</a></li>

								</ul>
								</li>


							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">MOVIE NEWS</a>
								<ul class="dropdown-menu">

								</ul></li>
							<c:choose>
								<c:when test="${empty currentUser}">
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">SIGN IN</a>
										<ul class="dropdown-menu">
											<li><a href="login">Sign in</a></li>
											<li><a href="signup">Sign up</a></li>

										</ul></li>

								</c:when>
								<c:otherwise>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">Welcome
											${currentUser.getUserName()}</a>
										<ul class="dropdown-menu">
											<li><a href="user-account.jsp">Account Information</a></li>

											<c:choose>
												<c:when test="${currentUser.getRole() == 0 }">
													<li><a href="user-account">User</a></li>
												</c:when>
												<c:when test="${currentUser.getRole() == 1 }">
													<li><a href="admin-account">Admin</a></li>
												</c:when>

											</c:choose>


											<li><a href="logout">Log out</a></li>
										</ul></li>

								</c:otherwise>
							</c:choose>
							</li>

							</li>
							<li class="dropdown dropdown-aux animate-click"
								data-animate-in="animated bounceInUp"
								data-animate-out="animated fadeOutDown" style="z-index: 500;">
								<a href="#" class="dropdown-form-toggle" data-toggle="dropdown"><i
									class="fa fa-search"></i></a>
								<ul class="dropdown-menu dropdown-menu-user animate-wr">
									<li id="dropdownForm">
										<div class="dropdown-form">
											<form class="form-horizontal form-light p-15" role="form"
												action="moviesearch" method="post">
												<div class="input-group input-group-lg">
													<input type="text" class="form-control" name="search_key"
														placeholder="I want to find movie..."> <span
														class="input-group-btn">
														<button class="btn btn-white" type="submit">
															<i class="fa fa-search"></i>
														</button>
													</span>
												</div>
											</form>
										</div>
									</li>
								</ul>
							</li>
							<li class="dropdown-aux"><a href="#" id="cmdAsideMenu"
								class="dropdown-toggle dropdown-form-toggle"
								title="Open slidebar"> <i class="fa fa-outdent"></i>
							</a></li>
						</ul>

					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</header>
	</div>
	<!-- Optional header components (ex: slider) -->
	<!-- Importing slider content -->
	<section id="slider-wrapper"
		class="layer-slider-wrapper layer-slider-dynamic">
		<div id="layerslider" style="width: 100%; height: 520px;">
			<!-- Slide 1 -->
			<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
				<!-- slide background -->
				<img
					src="http://www.hdwallpapers.in/walls/2010_inception_movie-wide.jpg"
					class="ls-bg" alt="Slide background" />

				<!-- Left Text -->
				<h3
					class="ls-l title-lg c-white text-shadow text-uppercase text-center strong"
					style="width: 100%; top: 25%; left: 50%;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					This movie is coming soon!!</h3>
				<h3
					class="ls-l title c-white text-wrapped black text-uppercase text-center strong"
					style="top: 50%; left: 50%;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1000;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					on March 3rd</h3>

				<h3
					class="ls-l title-xs c-white text-shadow text-uppercase text-center strong"
					style="width: 100%; top: 72%; left: 50%;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					stay on tune</h3>
			</div>
			<!-- Slide 2 -->
			<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
				<!-- slide background -->
				<img
					src="http://upload.wikimedia.org/wikipedia/commons/f/f4/MovieTheatre_gobeirne.jpg"
					class="ls-bg" style="width: 100%;" alt="Slide background" />

				<!-- Left Text -->
				<h3 class="ls-l title text-normal"
					style="width: 600px; top: 35%; left: 80px; color: white;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					Watch movie from here... <span class="strong-600">you</span> <span
						class="strong-600 c-base">get started</span></strong>
				</h3>
				<p class="ls-l text-standard"
					style="width: 500px; top: 50%; left: 80px; color: white"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1000;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					Apple is the best movie searching engine in the world</p>
				<a href="" class="btn btn-base btn-lg ls-l"
					style="top: 60%; left: 80px;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1500;delayin:1500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;"
					target="_blank"> Learn more about us </a>
			</div>

		</div>
	</section>

	<!-- MAIN CONTENT -->


	<section class="slice light-gray bb">
		<div class="wp-section">
			<div class="container">
				<div class="section-title-wr">
					<h3 class="section-title left">
						<span>Spotlight</span>
					</h3>
				</div>
				<section class="slice bg-white animate-hover-slide">
					<div class="wp-section work work-no-space g5">
						<div class="container">
							<div class="row">
								<div class="col-md-10">
									<div class="sort-list-btn hidden-xs">
										<button type="button" class="btn btn-base filter active"
											data-filter="all">
											<i class="fa fa-th-large"></i> Show all
										</button>
										<button type="button" class="btn btn-white filter"
											data-filter="category_1 category_2 category_3">Action</button>
										<button type="button" class="btn btn-white filter"
											data-filter="category_3 category_5 category_6 category_7 category_8">Adventure</button>
										<button type="button" class="btn btn-white filter"
											data-filter="category_6 category_7 category_8">Horror</button>
										<button type="button" class="btn btn-white filter"
											data-filter="category_3">New</button>
									</div>
								</div>
								<div class="col-md-2">
									<div class="btn-group pull-right hidden-md hidden-lg">
										<button type="button" class="btn btn-three">Filter
											films</button>
										<button type="button" class="btn btn-three dropdown-toggle"
											data-toggle="dropdown">
											<span class="caret"></span>
										</button>
										<ul class="dropdown-menu pull-right" role="menu"
											id="ulFilterMenu">
											<li class="filter active" data-filter="all"><a>Show
													All</a></li>
											<li class="filter"
												data-filter="category_1 category_2 category_3"><a>Action</a></li>
											<li class="filter"
												data-filter="category_3 category_5 category_6 category_7 category_8"><a>Adventure</a></li>
											<li class="filter"
												data-filter="category_6 category_7 category_8"><a>Horror</a></li>
											<li class="filter" data-filter="category_3"><a>New</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div id="ulSorList" style="margin: 15px 15px;">


								<c:forEach var="i" begin="1" end="12">
									<%--   Item <c:out value="${movies.get(i).getMovieName()}"/>
 --%>


									<div class="mix category_${i} mix_all" data-cat="${i}">
										<div class="wp-block inverse">
											<a class="hov {shiftContent:30}"
												href="movie?item=${movies.get(i-1).getMovieId()}"> <img
												src="${movies.get(i-1).getPosterUrl()} "
												class="img-responsive" style="max-height: 200px;">

												<div class="caption base">
													<h2 class="title">${movies.get(i-1).getMovieName() }</h2>
													
												</div>
											</a>
										</div>
									</div>

								</c:forEach>

							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section>

	<section class="slice animate-hover-slide bg-white">
		<div class="wp-section">
			<div class="container">
				<div class="section-title-wr">
					<h3 class="section-title left">
						<span>Latest news</span>
					</h3>
				</div>
				<section class="slice bg-white bb">
					<div class="wp-section">
						<div class="container">
							<div class="row">
								<div class="col-md-8">
									<div id="homepageCarousel" class="carousel carousel-1 slide"
										data-ride="carousel">
										<div class="carousel-inner">

											<div class="item item-dark active">
												<img
													src="<c:url value="/resources/images/prv/magazine/magazine-4.jpg"/>"
													alt="">
												<!-- Carousel caption -->
												<div class="caption-bottom">
													<span class="title c-white">The new Boomerang 2
														MultiPuropose Website Template</span> <span class="subtitle">A
														complete website template which can be perfectly adapted
														if you're a school, college or another public institution.</span>
												</div>
											</div>

											<div class="item item-light">
												<img
													src="<c:url value="/resources/images/prv/magazine/magazine-2.jpg"/>"
													alt="" class="img-responsive">
												<!-- Carousel caption -->
												<div class="caption-bottom">
													<span class="title c-white">The new Boomerang 2
														MultiPuropose Website Template</span> <span
														class="subtitle c-white">A complete website
														template which can be perfectly adapted if you're a
														school, college or another public institution.</span>
												</div>
											</div>
										</div>
										<!-- Controls -->
										<a class="left carousel-control" href="#homepageCarousel"
											data-slide="prev"> <i class="fa fa-angle-left"></i>
										</a> <a class="right carousel-control" href="#homepageCarousel"
											data-slide="next"> <i class="fa fa-angle-right"></i>
										</a>
									</div>
								</div>
								<div class="col-md-4">
									<div class="wp-block mb-20">
										<img
											src="<c:url value="/resources/images/prv/magazine/magazine-small-5.jpg"/>"
											class="img-responsive" alt="">
										<!-- Caption -->
										<div class="caption-bottom">
											<span class="title c-white">God is an awesome
												mathematician and physicist</span> <span class="subtitle c-white">Laoreet
												dolore magna aliquam erat are esrseiiqetuer ipisci.</span>
										</div>
									</div>
									<div class="wp-block no-margin">
										<img
											src="<c:url value="/resources/images/prv/magazine/magazine-small-7.jpg"/>"
											class="img-responsive" alt="">
										<!-- Caption -->
										<div class="caption-bottom">
											<span class="title c-white">Sometimes the wrong
												choices bring us to the right places</span> <span
												class="subtitle c-white">Laoreet dolore magna aliquam
												erat are esrseiiqetuer ipisci.</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section>
	<section class="slice base p-15">
		<div class="cta-wr">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<h1>Buy IMAX/3D movie tickets without waiting in the line!</h1>
					</div>
					<div class="col-md-3">
						<a href="#"
							class="btn btn-lg btn-b-white btn-icon btn-cart pull-right">
							<span>Buy ticket now</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="slice light-gray bb">
		<div class="wp-section">
			<div class="container">
				<div class="section-title-wr">
					<h3 class="section-title left">
						<span>Popular Movie</span>
					</h3>
				</div>
				<div class="no-margin owl-carousel owl-carousel-4"
					data-owl-pagination="smth">
					<div class="item">
						<div class="wp-block product">
							<figure>
								<img alt=""
									src="<c:url value="/resources/images/prv/product-1.jpg"/>"
									class="img-responsive img-center">
								<span class="ribbon base">New</span>
							</figure>
							<h2 class="product-title">
								<a href="">Nikon Coolpix L320</a>
							</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisg elitm Ut
								tincidunt purus iaculis</p>
							<div class="wp-block-footer">
								<span class="price pull-left">RON 233.33</span> <a href="#"
									class="btn btn-sm btn-base btn-icon btn-cart pull-right"> <span>Add
										to cart</span>
								</a>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="wp-block product">
							<figure>
								<img alt=""
									src="<c:url value="/resources/images/prv/product-2.jpg"/>"
									class="img-responsive img-center">
								<span class="ribbon orange">Sale</span>
							</figure>
							<h2 class="product-title">
								<a href="">Samsung Galaxy S4</a>
							</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisg elitm Ut
								tincidunt purus iaculis</p>
							<div class="wp-block-footer">
								<span class="price pull-left">RON 233.33</span> <a href="#"
									class="btn btn-sm btn-base btn-icon btn-cart pull-right"> <span>Add
										to cart</span>
								</a>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="wp-block product">
							<figure>
								<img alt=""
									src="<c:url value="/resources/images/prv/product-3.jpg"/>"
									class="img-responsive img-center">
							</figure>
							<h2 class="product-title">
								<a href="">Asus Ultra Notebook</a>
							</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisg elitm Ut
								tincidunt purus iaculis</p>
							<div class="wp-block-footer">
								<span class="price pull-left">RON 233.33</span> <a href="#"
									class="btn btn-sm btn-base btn-icon btn-cart pull-right"> <span>Add
										to cart</span>
								</a>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="wp-block product">
							<figure>
								<img alt=""
									src="<c:url value="/resources/images/prv/product-4.jpg"/>"
									class="img-responsive img-center">
								<span class="ribbon red">Special</span>
							</figure>
							<h2 class="product-title">
								<a href="">PC mouse Microsoft</a>
							</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisg elitm Ut
								tincidunt purus iaculis</p>
							<div class="wp-block-footer">
								<span class="price pull-left">RON 233.33</span> <a href="#"
									class="btn btn-sm btn-base btn-icon btn-cart pull-right"> <span>Add
										to cart</span>
								</a>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="wp-block product">
							<figure>
								<img alt=""
									src="<c:url value="/resources/images/prv/product-1.jpg"/>"
									class="img-responsive img-center">
								<span class="ribbon base-alt">New</span>
							</figure>
							<h2 class="product-title">
								<a href="">Nikon Coolpix L320</a>
							</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisg elitm Ut
								tincidunt purus iaculis</p>
							<div class="wp-block-footer">
								<span class="price pull-left">RON 233.33</span> <a href="#"
									class="btn btn-sm btn-base btn-icon btn-cart pull-right"> <span>Add
										to cart</span>
								</a>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="wp-block product">
							<figure>
								<img alt=""
									src="<c:url value="/resources/images/prv/product-2.jpg"/>"
									class="img-responsive img-center">
								<span class="ribbon yellow">Sale</span>
							</figure>
							<h2 class="product-title">
								<a href="">Samsung Galaxy S4</a>
							</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisg elitm Ut
								tincidunt purus iaculis</p>
							<div class="wp-block-footer">
								<span class="price pull-left">RON 233.33</span> <a href="#"
									class="btn btn-sm btn-base btn-icon btn-cart pull-right"> <span>Add
										to cart</span>
								</a>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="wp-block product">
							<figure>
								<img alt=""
									src="<c:url value="/resources/images/prv/product-3.jpg"/>"
									class="img-responsive img-center">
							</figure>
							<h2 class="product-title">
								<a href="">Asus Ultra Notebook</a>
							</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisg elitm Ut
								tincidunt purus iaculis</p>
							<div class="wp-block-footer">
								<span class="price pull-left">RON 233.33</span> <a href="#"
									class="btn btn-sm btn-base btn-icon btn-cart pull-right"> <span>Add
										to cart</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- FOOTER -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="col">
						<h4>Subscription</h4>
						<p>Sign up if you would like to receive news.</p>
						<form class="form-horizontal form-light" action="subscribe">
							<div class="input-group">
								<span class="input-group-btn">
									<button class="btn btn-base" type="submit">Subscribe!</button>
								</span>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-3">
					<div class="col">
						<h4>About us</h4>
						<p class="no-margin">
							Apple is a movie information system that makes it super easy for
							you to go to the movies, the moment you decide to. <br> <br>
							Team Apple:<br> Shan Liu<br> <br> <br>

						</p>
					</div>
				</div>

				<div class="col-md-3">
					<div class="col col-social-icons">
						<h4>Follow us</h4>
						<a href="www.facebook.com"><i class="fa fa-facebook"></i></a> <a
							href="www.google.com"><i class="fa fa-google-plus"></i></a> <a
							href="www.linkedin.com/shanniliu"><i class="fa fa-linkedin"></i></a>

					</div>
				</div>
				<div class="col-md-3">
					<div class="col">
						<h4>Contact us</h4>
						<ul>
							<li>No.5 Rabbit Str, Moon</li>
							<li>Phone: 631-561-5439</li>
							<li>Email: <a href="mailto:shan.liu03@gmail.com"
								title="Email Us">shan.liu03@gmail.com</a></li>
							<li>Skype: <a href="skype:my.business?call" title="Skype us">team_apple</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	</div>
	<!-- Essentials -->
	<script src="js/modernizr.custom.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
	<script src="js/jquery.easing.js"></script>
	<script src="js/jquery.metadata.js"></script>
	<script src="js/jquery.hoverup.js"></script>
	<script src="js/jquery.hoverdir.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<!-- Boomerang mobile nav - Optional  -->
	<script src="assets/responsive-mobile-nav/js/jquery.dlmenu.js"></script>
	<script src="assets/responsive-mobile-nav/js/jquery.dlmenu.autofill.js"></script>
	<!-- Forms -->
	<script src="assets/ui-kit/js/jquery.powerful-placeholder.min.js"></script>
	<script src="assets/ui-kit/js/cusel.min.js"></script>
	<script src="assets/sky-forms/js/jquery.form.min.js"></script>
	<script src="assets/sky-forms/js/jquery.validate.min.js"></script>
	<script src="assets/sky-forms/js/jquery.maskedinput.min.js"></script>
	<script src="assets/sky-forms/js/jquery.modal.js"></script>
	<!-- Assets -->
	<script src="assets/hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/page-scroller/jquery.ui.totop.min.js"></script>
	<script src="assets/mixitup/jquery.mixitup.js"></script>
	<script src="assets/mixitup/jquery.mixitup.init.js"></script>
	<script src="assets/fancybox/jquery.fancybox.pack.js?v=2.1.5"></script>
	<script src="assets/waypoints/waypoints.min.js"></script>
	<script src="assets/milestone-counter/jquery.countTo.js"></script>
	<script src="assets/easy-pie-chart/js/jquery.easypiechart.js"></script>
	<script src="assets/social-buttons/js/rrssb.min.js"></script>
	<script src="assets/nouislider/js/jquery.nouislider.min.js"></script>
	<script src="assets/owl-carousel/owl.carousel.js"></script>
	<script src="assets/bootstrap/js/tooltip.js"></script>
	<script src="assets/bootstrap/js/popover.js"></script>
	<!-- Sripts for individual pages, depending on what plug-ins are used -->
	<script src="assets/layerslider/js/greensock.js" type="text/javascript"></script>
	<script src="assets/layerslider/js/layerslider.transitions.js"
		type="text/javascript"></script>
	<script src="assets/layerslider/js/layerslider.kreaturamedia.jquery.js"
		type="text/javascript"></script>
	<!-- Initializing the slider -->
	<script>
		jQuery("#layerslider").layerSlider({
			pauseOnHover : true,
			autoPlayVideos : false,
			skinsPath : 'assets/layerslider/skins/',
			responsive : false,
			responsiveUnder : 1280,
			layersContainer : 1280,
			skin : 'borderlessdark3d',
			hoverPrevNext : true,
		});
	</script>
	<!-- Boomerang App JS -->
	<script src="js/wp.app.js"></script>
	<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
	<!-- Temp -- You can remove this once you started to work on your project -->
	<script src="js/jquery.cookie.js"></script>
	<script src="js/wp.switcher.js"></script>
	<script type="text/javascript" src="js/wp.ga.js"></script>
</body>
</html>