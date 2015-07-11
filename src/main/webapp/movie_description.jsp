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
	<!-- MAIN CONTENT -->
	<div class="pg-opt">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h2>${movie.getMovieName()}</h2>
				</div>

			</div>
		</div>
	</div>
	<!-- <div class="owl-carousel owl-carousel-5 thumbnail-images style-2">
        <div class="item">
            <a href="images/prv/product-3.png" class="theater" rel="group">
                <img src="images/prv/product-1.jpg" alt="">
            </a>
        </div>
        <div class="item">
            <a href="images/prv/product-3.png" class="theater" rel="group">
                <img src="images/prv/product-2.jpg" alt="">
            </a>
        </div>
        <div class="item">
            <a href="images/prv/product-3.png" class="theater" rel="group">
                <img src="images/prv/product-3.jpg" alt="">
            </a>
        </div>
        <div class="item">
            <a href="images/prv/product-3.png" class="theater" rel="group">
                <img src="images/prv/product-4.jpg" alt="">
            </a>
        </div>
        
    </div> -->
	<section class="slice bg-white">
		<div class="wp-section shop">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-3">
								<div class="product-gallery">
									<div class="primary-image">
										<a href="${movie.getPosterUrl()}" class="theater" rel="group">
											<img src="${movie.getPosterUrl()}" class="img-responsive"
											alt="">
										</a>
									</div>
									<div class="rating pull-left">
										&nbsp;&nbsp;<span class="star voted" rel="1"></span> <span
											class="star voted" rel="2"></span> <span class="star voted"
											rel="3"></span> <span class="star voted" rel="4"></span> <span
											class="star" rel="5"></span>
									</div>
									<br> <span class="review-rating pull-left"
										style="margin-left: 15px;"> <a href="">Read all 23
											reviews</a> <br> <a href="">Share you oppinion</a>

									</span> <br>
									<button type="submit" class="btn btn-light btn-icon fa-heart">
										<span>Whishlist</span>
									</button>
								</div>
							</div>
							<div class="col-md-5">
								<div class="product-info">
									<iframe width="560" height="315"
										src="${movie.getTrailerUrl()}"
										frameborder="0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<!-- Tabs -->
								<div class="tabs-framed mt-20">
									<ul class="tabs clearfix">
										<li class="active"><a href="#tab-1" data-toggle="tab">Synopsis</a></li>
										<li><a href="#tab-2" data-toggle="tab">Movie Times</a></li>
										<li><a href="#tab-3" data-toggle="tab">Reviews</a></li>
									</ul>
									<div class="tab-content">
										<!-- Tab 1 -->
										<div class="tab-pane fade in active" id="tab-1">
											<div class="tab-body">
												<div class="section-title-wr">
													<h3 class="section-title left">Synopsis</h3>
												</div>
												<p>Director Sam Taylor-Johnson's big screen version of
													the initial book in the series, Fifty Shades of Grey, stars
													Dakota Johnson as Anastasia Steele, an English Lit major on
													the verge of graduation when her best friend, a journalism
													major, gets sick and asks Anastasia to do an assignment for
													her -- interview Christian Grey (Jamie Dornan), the wealthy
													businessman who is speaking at their impending graduation
													ceremony. The two hit it off right away; the awkward young
													woman is immediately turned on by his power and control,
													and he's drawn to her naivete. ~ Perry Seibert, Rovi</p>
											</div>
										</div>
										<!-- Tab 2 -->
										<div class="tab-pane fade" id="tab-2">
											<div class="tab-body">
												<div class="section-title-wr">
													<h3 class="section-title left">AMC Loewes Stony Brook
														17</h3>
												</div>
												<table
													class="table table-bordered table-striped table-hover table-responsive">
													<tbody>
														<tr>
															<td><strong>11:20 AM&nbsp;&nbsp;</strong>
																unavailable</td>
															<td><strong>2:20 PM&nbsp;&nbsp;</strong> available</td>
															<td><strong>5:20 PM&nbsp;&nbsp;</strong> available</td>
														</tr>
														<tr>
															<td><strong>7:20 PM&nbsp;&nbsp;</strong> available</td>
															<td><strong>10:20 PM&nbsp;&nbsp;</strong>available</td>
														</tr>

													</tbody>
												</table>
												<div class="section-title-wr">
													<h3 class="section-title left">REGAL RONKONKOMA
														STADIUM 9</h3>
												</div>
												<table
													class="table table-bordered table-striped table-hover table-responsive">
													<tbody>
														<tr>
															<td><strong>11:20 AM&nbsp;&nbsp;</strong>
																unavailable</td>
															<td><strong>2:20 PM&nbsp;&nbsp;</strong> available</td>
															<td><strong>5:20 PM&nbsp;&nbsp;</strong> available</td>
														</tr>


													</tbody>
												</table>
											</div>
										</div>
										<!-- Tab 3 -->
										<div class="tab-pane fade" id="tab-3">
											<div class="tab-body">
												<div class="comment-list clearfix" id="comments">
													<h2>5 reviews from members</h2>
													<a href="#divAddReview" class="link-add-comment anchor"
														hidefocus="true">Add a review</a>
													<!-- Comments list -->
													<ol>
														<li class="comment">
															<div class="comment-body bb">
																<div class="comment-avatar">
																	<div class="avatar">
																		<img src="images/temp/avatar1.png" alt="">
																	</div>
																</div>
																<div class="comment-text">
																	<div class="comment-author clearfix">
																		<a href="#" class="link-author" hidefocus="true">Brad
																			Pit</a> <span class="comment-meta"><span
																			class="comment-date">June 26, 2013</span> | <a
																			href="#addcomments" class="link-reply anchor"
																			hidefocus="true">Reply</a></span>
																	</div>
																	<div class="comment-entry">William Bradley "Brad"
																		Pitt is an American actor and film producer. Pitt has
																		received four Academy Award nominations and five
																		Golden Globe.</div>
																</div>
															</div>
														</li>
														<li class="comment">
															<div class="comment-body bb">
																<div class="comment-avatar">
																	<div class="avatar">
																		<img src="images/temp/avatar2.png" alt="">
																	</div>
																</div>
																<div class="comment-text">
																	<div class="comment-author clearfix">
																		<a href="#" class="link-author" hidefocus="true">Ari
																			Gold</a> <span class="comment-meta"><span
																			class="comment-date">June 25, 2013</span> | <a
																			href="#addcomments" class="link-reply anchor"
																			hidefocus="true">Reply</a></span>
																	</div>
																	<div class="comment-entry">Ari Gold is Vincent
																		Chase's neurotic movie agent. He was an undergrad at
																		Harvard University before earning his J.D./M.B.A. at
																		the University of Michigan. In addition to reprising
																		the role for the upcoming prequels of</div>
																</div>
															</div>
															<ul class="children">
																<li class="comment">
																	<div class="comment-body bb">
																		<div class="comment-avatar">
																			<div class="avatar">
																				<img src="images/temp/avatar3.png" alt="">
																			</div>
																		</div>
																		<div class="comment-text">
																			<div class="comment-author clearfix">
																				<a href="#" class="link-author" hidefocus="true">Elijah
																					Wood</a> <span class="comment-meta"><span
																					class="comment-date">June 24, 2013</span> | <a
																					href="#addcomments" class="link-reply anchor"
																					hidefocus="true">Reply</a></span>
																			</div>
																			<div class="comment-entry">Elijah Wood is an
																				American actor best known for Frodo.</div>
																		</div>
																	</div>
																</li>
															</ul>
														</li>
														<li class="comment">
															<div class="comment-body bb">
																<div class="comment-avatar">
																	<div class="avatar">
																		<img src="images/temp/avatar4.png" alt="">
																	</div>
																</div>
																<div class="comment-text">
																	<div class="comment-author clearfix">
																		<a href="#" class="link-author" hidefocus="true">Superman</a>
																		<span class="comment-meta"><span
																			class="comment-date">June 23, 2013</span> | <a
																			href="#addcomments" class="link-reply anchor"
																			hidefocus="true">Reply</a></span>
																	</div>
																	<div class="comment-entry">Superman is a
																		fictional character, a comic book superhero who
																		appears in comic books published by DC Comics.</div>
																</div>
															</div>
														</li>
														<li class="comment">
															<div class="comment-body bb">
																<div class="comment-avatar">
																	<div class="avatar">
																		<img src="images/temp/avatar1.png" alt="">
																	</div>
																</div>
																<div class="comment-text">
																	<div class="comment-author clearfix">
																		<a href="#" class="link-author" hidefocus="true">Brad
																			Pit</a> <span class="comment-meta"><span
																			class="comment-date">June 26, 2013</span> | <a
																			href="#addcomments" class="link-reply anchor"
																			hidefocus="true">Reply</a></span>
																	</div>
																	<div class="comment-entry">William Bradley "Brad"
																		Pitt is an American actor and film producer. Pitt has
																		received four Academy Award nominations and five
																		Golden Globe.</div>
																</div>
															</div>
														</li>
													</ol>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="sidebar">

							<div class="panel panel-default panel-sidebar-1">
								<div class="panel-heading">
									<h2>Filter by</h2>
								</div>
								<div class="panel-body">
									<h4>Category</h4>
									<ul class="list-group">
										<li class="list-group-item"><span class="badge base">8</span>
											<a href="">Action</a></li>
										<li class="list-group-item"><span class="badge base">14</span>
											<a href="">Horror</a></li>
										<li class="list-group-item"><span class="badge base">13</span>
											<a href="">Sci-fi</a></li>
										<li class="list-group-item"><span class="badge base">9</span>
											<a href="">Drama</a></li>
										<li class="list-group-item"><span class="badge base">24</span>
											<a href="">Romance</a></li>
										<li class="list-group-item"><span class="badge base">17</span>
											<a href="">Documentation</a></li>
									</ul>

								</div>
							</div>
							<div class="panel panel-default panel-sidebar-1">
								<div class="panel-heading">
									<h2>Recently viewed</h2>
								</div>
								<div class="panel-body">
									<ul class="featured">
										<li>
											<div class="featured-item">
												<div class="featured-item-img">
													<img src="images/prv/product-2.jpg" alt=""
														class="pull-left">
												</div>
												<div class="feature-item-info">
													<h3 class="title">
														<a href="#">Fifty Shades Of Grey</a>
													</h3>
													<div class="rating">
														<span class="star voted" rel="1"></span> <span
															class="star voted" rel="2"></span> <span
															class="star voted" rel="3"></span> <span class="star"
															rel="4"></span> <span class="star" rel="5"></span>
													</div>

												</div>
											</div>
										</li>
										<li>
											<div class="featured-item">
												<div class="featured-item-img">
													<img src="images/prv/product-3.jpg" alt=""
														class="pull-left">
												</div>
												<div class="feature-item-info">
													<h3 class="title">
														<a href="#">Larzuras Effect</a>
													</h3>
													<div class="rating">
														<span class="star voted" rel="1"></span> <span
															class="star voted" rel="2"></span> <span
															class="star voted" rel="3"></span> <span class="star"
															rel="4"></span> <span class="star" rel="5"></span>
													</div>

												</div>
											</div>
										</li>
										<li>
											<div class="featured-item">
												<div class="featured-item-img">
													<img src="images/prv/product-4.jpg" alt=""
														class="pull-left">
												</div>
												<div class="feature-item-info">
													<h3 class="title">
														<a href="#">Paddington</a>
													</h3>
													<div class="rating">
														<span class="star voted" rel="1"></span> <span
															class="star voted" rel="2"></span> <span
															class="star voted" rel="3"></span> <span class="star"
															rel="4"></span> <span class="star" rel="5"></span>
													</div>

												</div>
											</div>
										</li>
									</ul>
								</div>
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
						<form class="form-horizontal form-light">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Your email address..."> <span
									class="input-group-btn">
									<button class="btn btn-base" type="button">Go!</button>
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