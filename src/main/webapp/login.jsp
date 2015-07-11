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
				<input type="search" class="form-control" placeholder="Search Movie..." name="search_key">
				<span class="input-group-btn">
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
						<a class="navbar-brand" href="" title="Team Ginko for the win!">
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
											<input type="text" class="form-control"
												name="search_key"
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
							<li class="dropdown dropdown-meganav mega-dropdown-fluid"><a
								href="/home" class="dropdown-toggle" data-toggle="dropdown">HOME</a>

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
           <!-- Header end here... -->

    <section class="slice slice-lg bg-image" style="background-image:url(<c:url value="/full-bg-6.jpg"/>)">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                        <div class="wp-block default user-form user-form-alpha no-margin"> 
                            <div class="form-header">
                                <h2>Sign in to your account</h2>
                            </div>
                            <div class="form-body">
                            <p style="color:red">${error}</p>
                        <form id="LoginForm" class="sky-form" method="post" action="login">                                    
                                    <fieldset>                  
                                        <section>
                                            <div class="form-group">
                                              <label path="username" class="label">User Name</label>
                                                <label class="input">
                                                    <i class="icon-append fa fa-user"></i>
                                                    <input path="username" type="text" name="username"/>
                                                </label>
                                            </div>     
                                        </section>
                                        <section>
                                            <div class="form-group">
                                                <label path="password" class="label">Password</label>
                                                <label class="input">
                                                    <i class="icon-append fa fa-user"></i>
                                                    <input path="password" type="password" name="password"/>
                                                </label>
                                            </div>     
                                        </section> 
                                        <section>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <label class="checkbox"><input type="checkbox" name="remember" checked><i></i>Keep me logged in</label>
                                                </div>
                                            </div>
                                        </section>
                                        <section>
                                            <button value="Login" class="btn btn-base btn-icon btn-icon-right btn-sign-in pull-right" type="submit">
                                            
                                                <span>Next Step</span>
                                           
                                            </button>
                                        </section>
                                    </fieldset>  
                                </form>  
                            </div>
                            <div class="form-footer">
                                <p>Lost your password? <a href="#">Click here to recover.</a></p>
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
                            <form class="form-horizontal form-light" action="home">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Your email address...">
                                    <span class="input-group-btn">
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
                            Apple is a movie information system that makes it super easy for you to go to the movies, the moment you decide to. <br>
                            <br>
                            Team Apple:<br>
                           
                            Shan Liu<br>
                        
                            <br><br>
                            
                            </p>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="col col-social-icons">
                            <h4>Follow us</h4>
                            <a href="www.facebook.com"><i class="fa fa-facebook"></i></a>
                            <a href="www.google.com"><i class="fa fa-google-plus"></i></a>
                            <a href="www.linkedin.com/shanniliu"><i class="fa fa-linkedin"></i></a>
                           
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="col">
                            <h4>Contact us</h4>
                            <ul>
                                <li>No.5 Rabbit Str, Moon</li>
                                <li>Phone: 631-561-5439 </li>
                                <li>Email: <a href="mailto:shan.liu03@gmail.com" title="Email Us">shan.liu03@gmail.com</a></li>
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
    <script src="assets/layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
    <script src="assets/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
    <!-- Initializing the slider -->
    <script>
    jQuery("#layerslider").layerSlider({
    pauseOnHover: true,
    autoPlayVideos: false,
    skinsPath: 'assets/layerslider/skins/',
    responsive: false,
    responsiveUnder: 1280,
    layersContainer: 1280,
    skin: 'borderlessdark3d',
    hoverPrevNext: true,
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