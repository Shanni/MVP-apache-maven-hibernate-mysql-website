<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>  
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <title>Movie Information System</title>
        <!-- Essential styles -->
        <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/assets/fancybox/jquery.fancybox.css?v=2.1.5"/>" media="screen">
        
        <!-- Boomerang styles -->
        <link id="wpStylesheet" type="text/css" href="<c:url value="/resources/css/global-style.css"/>" rel="stylesheet" media="screen">
        
        <!-- Favicon -->
        <link href="<c:url value="/resources/images/favicon.png"/>" rel="icon" type="image/png">
        <!-- Assets -->
        <link rel="stylesheet" href="<c:url value="/resources/assets/owl-carousel/owl.carousel.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/assets/owl-carousel/owl.theme.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/assets/sky-forms/css/sky-forms.css"/>">
        <!--[if lt IE 9]>
        <link rel="stylesheet" href="assets/sky-forms/css/sky-forms-ie8.css">
        <![endif]-->
        <!-- Required JS -->
        <script src="<c:url value="/resources/js/jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
        <!-- Page scripts -->
        <link rel="stylesheet" href="<c:url value="/resources/assets/layerslider/css/layerslider.css"/>" type="text/css">
        
    </head>
    <body>
        <!-- MODALS -->
        <!-- MOBILE MENU - Option 2 -->
        <section id="navMobile" class="aside-menu left">
            <form class="form-horizontal form-search">
                <div class="input-group">
                    <input type="search" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                    <button id="btnHideMobileNav" class="btn btn-close" type="button" title="Hide sidebar"><i class="fa fa-times"></i></button>
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
                <button id="btnHideAsideMenu" class="btn btn-close" type="button" title="Hide sidebar"><i class="fa fa-times"></i></button>
                </span>
            </div>
        </form>
        
        <h5 class="side-section-title">Optional sidebar menu</h5>
        <div class="nav">
            <ul>
                <li>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">About us</a>
                </li>
                <li>
                    <a href="#">Blog</a>
                </li>
                <li>
                    <a href="#">Work</a>
                </li>
                <li>
                    <a href="#">Online shop</a>
                </li>
            </ul>
        </div>
        
        <h5 class="side-section-title">Social media</h5>
        <div class="social-media">
            <a href="#"><i class="fa fa-facebook facebook"></i></a>
            <a href="#"><i class="fa fa-google-plus google"></i></a>
            <a href="#"><i class="fa fa-twitter twitter"></i></a>
        </div>
        
        <h5 class="side-section-title">Contact information</h5>
        <div class="contact-info">
            <h5>Address</h5>
            <p>Stony Brook University</p>
            
            <h5>Email</h5>
            <p>cse308@dummyemail.com</p>
            
            <h5>Phone</h5>
            <p>+1 631 623 xxxx</p>
        </div>
    </section>
    <!-- HEADER -->
    <div id="divHeaderWrapper">
        <header class="header-standard-2">
            <!-- MAIN NAV -->
            <div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle navbar-toggle-aside-menu">
                        <i class="fa fa-outdent icon-custom"></i>
                        </button>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <i class="fa fa-bars icon-custom"></i>
                        </button>
                        <a class="navbar-brand" href="" title="Team Ginko for the win!">
                            <img src="<c:url value="/resources/images/ginko-logo.png"/>" alt="Team Ginko for the win!">
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="hidden-md hidden-lg">
                                <div class="bg-light-gray">
                                    <form class="form-horizontal form-light p-15" role="form">
                                        <div class="input-group input-group-lg">
                                            <input type="text" class="form-control" placeholder="I want to find ...">
                                            <span class="input-group-btn">
                                            <button class="btn btn-white" type="button">
                                            <i class="fa fa-search"></i>
                                            </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="dropdown dropdown-meganav mega-dropdown-fluid">
                                <li class="dropdown dropdown-meganav mega-dropdown-fluid">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">HOME</a>
                                    
                                </li>
                                
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">MOVIES</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="movielist.html">Newest Movie</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">MOVIE TIMES</a>
                                    <ul class="dropdown-menu">
                                        
                                    </ul>
                                </li>
                                <li class="dropdown dropdown-meganav mega-dropdown-fluid">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">THEATERS</a>
                                    <ul class="dropdown-menu">
                                        
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">MOVIE NEWS</a>
                                    <ul class="dropdown-menu">
                                        
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">SIGN IN</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="manager.html">Manager</a></li>
                                        <li><a href="user-account.html">User</a></li>
                                        <li><a href="admin.html">Admin</a></li>

                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">SIGN UP</a>
                                    <ul class="dropdown-menu">
                                        
                                    </ul>
                                </li>
                            </li>
                            
                        </li>
                        <li class="dropdown dropdown-aux animate-click" data-animate-in="animated bounceInUp" data-animate-out="animated fadeOutDown" style="z-index:500;">
                            <a href="#" class="dropdown-form-toggle" data-toggle="dropdown"><i class="fa fa-search"></i></a>
                            <ul class="dropdown-menu dropdown-menu-user animate-wr">
                                <li id="dropdownForm">
                                    <div class="dropdown-form">
                                        <form class="form-horizontal form-light p-15" role="form">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="I want to find ...">
                                                <span class="input-group-btn">
                                                <button class="btn btn-base" type="button">Go</button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown-aux">
                            <a href="#" id="cmdAsideMenu" class="dropdown-toggle dropdown-form-toggle" title="Open slidebar">
                                <i class="fa fa-outdent"></i>
                            </a>
                        </li>
                    </ul>
                    
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </header>        </div>

        <!-- Optional header components (ex: slider) -->
            
    <!-- MAIN CONTENT -->
        <div class="pg-opt">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Sign in</h2>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Pages</a></li>
                        <li class="active">Sign in</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <section class="slice slice-lg bg-image" style="background-image:url(<c:url value="/resources/images/backgrounds/full-bg-1.jpg"/>);">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                        <div class="wp-block default user-form user-form-alpha no-margin"> 
                            <div class="form-header">
                                <h2>Sign in to your account</h2>
                            </div>
                            <div class="form-body">
                                <form action="" id="frmLogin" class="sky-form">                                    
                                    <fieldset>                  
                                        <section>
                                            <div class="form-group">
                                                <label class="label">Email</label>
                                                <label class="input">
                                                    <i class="icon-append fa fa-user"></i>
                                                    <input type="email" name="email">
                                                </label>
                                            </div>     
                                        </section>
                                        <section>
                                            <div class="form-group">
                                                <label class="label">Password</label>
                                                <label class="input">
                                                    <i class="icon-append fa fa-lock"></i>
                                                    <input type="email" name="email">
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
                                            <button class="btn btn-base btn-icon btn-icon-right btn-sign-in pull-right" type="submit">
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
                            <form class="form-horizontal form-light">
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
                            Ginko is a movie information system that makes it super easy for you to go to the movies, the moment you decide to. <br>
                            <br>
                            Team Ginkgo:<br>
                            Wenhao Lu<br>
                            Shan Liu<br>
                            Ritvik Handa<br>
                            Ravikiran Nageli<br>
                            <br><br>
                            
                            </p>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="col col-social-icons">
                            <h4>Follow us</h4>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-skype"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                            <a href="#"><i class="fa fa-flickr"></i></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="col">
                            <h4>Contact us</h4>
                            <ul>
                                <li>Computer Science Building, Stony Brook United States</li>
                                <li>Phone: 111-222-3333 </li>
                                <li>Email: <a href="mailto:hello@example.com" title="Email Us">contact@ginkgo.com</a></li>
                                <li>Skype: <a href="skype:my.business?call" title="Skype us">team_ginkgo</a></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
</div>

 <!-- Essentials -->
    <script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.mousewheel-3.0.6.pack.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.easing.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.metadata.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.hoverup.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.hoverdir.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.stellar.js"/>"></script>
    <!-- Boomerang mobile nav - Optional  -->
    <script src="<c:url value="/resources/assets/responsive-mobile-nav/js/jquery.dlmenu.js"/>"></script>
    <script src="<c:url value="/resources/assets/responsive-mobile-nav/js/jquery.dlmenu.autofill.js"/>"></script>
    <!-- Forms -->
    <script src="<c:url value="/resources/assets/ui-kit/js/jquery.powerful-placeholder.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/ui-kit/js/cusel.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.form.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.validate.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.maskedinput.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.modal.js"/>"></script>
    <!-- Assets -->
    <script src="<c:url value="/resources/assets/hover-dropdown/bootstrap-hover-dropdown.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/page-scroller/jquery.ui.totop.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/mixitup/jquery.mixitup.js"/>"></script>
    <script src="<c:url value="/resources/assets/mixitup/jquery.mixitup.init.js"/>"></script>
    <script src="<c:url value="/resources/assets/fancybox/jquery.fancybox.pack.js?v=2.1.5"/>"></script>
    <script src="<c:url value="/resources/assets/waypoints/waypoints.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/milestone-counter/jquery.countTo.js"/>"></script>
    <script src="<c:url value="/resources/assets/easy-pie-chart/js/jquery.easypiechart.js"/>"></script>
    <script src="<c:url value="/resources/assets/social-buttons/js/rrssb.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/nouislider/js/jquery.nouislider.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/owl-carousel/owl.carousel.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/tooltip.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/popover.js"/>"></script>
    <!-- Sripts for individual pages, depending on what plug-ins are used -->
    <script src="<c:url value="/resources/assets/layerslider/js/greensock.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/assets/layerslider/js/layerslider.transitions.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/assets/layerslider/js/layerslider.kreaturamedia.jquery.js"/>" type="text/javascript"></script>
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
    <script src="<c:url value="/resources/js/wp.app.js"/>"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <!-- Temp -- You can remove this once you started to work on your project -->
    <script src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
    <script src="<c:url value="/resources/js/wp.switcher.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/wp.ga.js"/>"></script>
</body>
</html>