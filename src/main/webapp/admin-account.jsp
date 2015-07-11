
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
						<a class="navbar-brand" href="home"
							title="Team Ginko for the win!"> <img
							src="<c:url value="/resources/images/ginko-logo.png"/>">
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
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">HOME</a>
								<ul class="dropdown-menu">
									<li><a href="home">Home</a></li>

								</ul></li>


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
											<!-- <li><a href="user-account.jsp">Account Information</a></li>
 -->
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

	<!-- MAIN CONTENT -->
	<div class="pg-opt">
		<div class="container">
			<div class="row">
				<!--  <nav class="navbar navbar-default navbar-top" role="navigation" style="margin-bottom: 0"> -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home">Administrator Account</a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <i
							class="fa fa-envelope fa-fw"> </i> Message <i
							class="fa fa-caret-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li><a href="#">
									<div>
										<strong>Manager</strong> <span class="pull-right text-muted">
											<em>Yesterday</em>
										</span>
									</div>
									<div>update the movie database tomorrow at night</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<strong>Advertisement Manager</strong> <span
											class="pull-right text-muted"> <em>Yesterday</em>
										</span>
									</div>
									<div>give me the statis report for this week</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<strong>Member David</strong> <span
											class="pull-right text-muted"> <em>Yesterday</em>
										</span>
									</div>
									<div>I have some problem with my payment. Please fix it.</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>Read
										All Messages</strong> <i class="fa fa-angle-right"></i>
							</a></li>
						</ul> <!-- /.dropdown-messages --></li>
					<!-- /.dropdown -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
							Task <i class="fa fa-caret-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-tasks">
							<li><a href="#">
									<div>
										<p>
											<strong>Task 1</strong> <span class="pull-right text-muted">40%
												Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">
												<span class="sr-only">40% Complete (success)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>Task 2</strong> <span class="pull-right text-muted">20%
												Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 20%">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>Task 3</strong> <span class="pull-right text-muted">60%
												Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-warning"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 60%">
												<span class="sr-only">60% Complete (warning)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>See
										All Tasks</strong> <i class="fa fa-angle-right"></i>
							</a></li>
						</ul> <!-- /.dropdown-tasks --></li>
					<!-- /.dropdown -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
							Alert <i class="fa fa-caret-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
									<div>
										<i class="fa fa-comment fa-fw"></i> New Comment <span
											class="pull-right text-muted small">4 minutes ago</span>
									</div>
							</a></li>
							<li class="divider"></li>

							<li><a href="#">
									<div>
										<i class="fa fa-envelope fa-fw"></i> Message Sent <span
											class="pull-right text-muted small">4 minutes ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<i class="fa fa-tasks fa-fw"></i> New Task <span
											class="pull-right text-muted small">4 minutes ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
											class="pull-right text-muted small">4 minutes ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>See
										All Alerts</strong> <i class="fa fa-angle-right"></i>
							</a></li>
						</ul> <!-- /.dropdown-alerts --></li>
					<!-- /.dropdown -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
							<i class="fa fa-caret-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-user">
							<li><a href="#"><i class="fa fa-user fa-fw"></i> User
									Profile</a></li>
							<li><a href="#"><i class="fa fa-gear fa-fw"></i>
									Settings</a></li>
							<li class="divider"></li>
							<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
									Logout</a></li>
						</ul> <!-- /.dropdown-user --></li>
					<!-- /.dropdown -->
				</ul>
				<!-- </nav> -->
			</div>
		</div>
	</div>

	<section class="slice bg-white">
		<div class="wp-section user-account">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="user-profile-img">
							<img src="images/prv/team/team-agency-3.jpg" alt="">
						</div>
						<ul class="categories mt-20">
							<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
									Overview</a></li>
							<li><a href="#"><i class="fa fa-tasks fa-fw"></i> My
									Tasks</a></li>
							<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
									Data Report</a></li>
							<li><a href="#"><i class="fa fa-database fa-fw"></i>
									Update Database</a></li>
							<li><a href="#"><i class="fa fa-comments-o fa-fw"></i>
									Advertisement Management</a></li>
							<li><a href="#"><i class="fa fa-wrench fa-fw"></i>
									Settings</a></li>
						</ul>
					</div>
					<div class="col-md-9">
						<div class="tabs-framed">
							<ul class="tabs clearfix">
								<li class="active"><a href="#tab-1" data-toggle="tab">About
										me</a></li>
								<li><a href="#tab-2" data-toggle="tab">Chart</a></li>
								<li><a href="#tab-3" data-toggle="tab">Calendar</a></li>
								<li><a href="#tab-4" data-toggle="tab">Chat</a></li>
								<li><a href="#tab-5" data-toggle="tab">Edit User</a></li>

							</ul>

							<div class="tab-content">
								<div class="tab-pane fade in active" id="tab-1">
									<div class="tab-body">
										<dl class="dl-horizontal style-2">
											<h3 class="title title-lg">Personal information</h3>
											<p class="mb-20"></p>

											<dt>Name</dt>
											<dd>
												<span class="pull-left">${currentUser.getUserName() }</span>
												<a href="#"
													class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
											</dd>
											<hr>
											<dt>Email</dt>
											<dd>
												<span class="pull-left">${currentUser.getEmail() }</span> <a
													href="#"
													class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
											</dd>
											<hr>

										</dl>
									</div>
								</div>

								<div class="tab-pane fade" id="tab-2">
									<div class="tab-body" style="padding-bottom: 0;">
										<h3 class="title title-lg">Statistics</h3>
										<p class="mb-20"></p>

										<!-- /.panel -->
										<div class="panel panel-default">
											<div class="panel-heading">
												<i class="fa fa-bar-chart-o fa-fw"></i> Bar Chart Example
												<div class="pull-right">
													<div class="btn-group">
														<button type="button"
															class="btn btn-default btn-xs dropdown-toggle"
															data-toggle="dropdown">
															Actions <span class="caret"></span>
														</button>
														<ul class="dropdown-menu pull-right" role="menu">
															<li><a href="#">Action</a></li>
															<li><a href="#">Another action</a></li>
															<li><a href="#">Something else here</a></li>
															<li class="divider"></li>
															<li><a href="#">Separated link</a></li>
														</ul>
													</div>
												</div>
											</div>

											<!-- /.panel-heading -->
											<div class="panel-body">
												<div class="row">
													<div class="col-lg-5">
														<div class="table-responsive">
															<table
																class="table table-bordered table-hover table-striped">
																<thead>
																	<tr>
																		<th>#</th>
																		<th>Date</th>
																		<th>Time</th>
																		<th>User</th>
																		<th>Amount</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>3326</td>
																		<td>10/21/2013</td>
																		<td>3:29 PM</td>
																		<td>David</td>
																		<td>$21.33</td>
																	</tr>
																	<tr>
																		<td>3325</td>
																		<td>10/21/2013</td>
																		<td>3:20 PM</td>
																		<td>Jack</td>
																		<td>$34.34</td>
																	</tr>
																	<tr>
																		<td>3324</td>
																		<td>10/21/2013</td>
																		<td>3:03 PM</td>
																		<td>John</td>
																		<td>$24.17</td>
																	</tr>
																	<tr>
																		<td>3323</td>
																		<td>10/21/2013</td>
																		<td>3:00 PM</td>
																		<td>David</td>
																		<td>$23.71</td>
																	</tr>
																	<tr>
																		<td>3322</td>
																		<td>10/21/2013</td>
																		<td>2:49 PM</td>
																		<td>Alice</td>
																		<td>$45.23</td>
																	</tr>
																	<tr>
																		<td>3321</td>
																		<td>10/21/2013</td>
																		<td>2:23 PM</td>
																		<td>Jesse</td>
																		<td>$25.12</td>
																	</tr>

																</tbody>
															</table>
														</div>
														<!-- /.table-responsive -->
													</div>
													<!-- /.col-lg-4 (nested) -->
													<div class="col-lg-5">
														<div id="morris-bar-chart"></div>
													</div>
													<!-- /.col-lg-8 (nested) -->
												</div>
												<!-- /.row -->
											</div>
											<!-- /.panel-body -->
										</div>
									</div>
								</div>

								<div class="tab-pane fade" id="tab-3">
									<div class="tab-body">
										<h3 class="title title-lg">Calendar</h3>
										<p class="mb-20"></p>
										<iframe
											src="https://www.google.com/calendar/embed?src=en.usa%23holiday%40group.v.calendar.google.com&ctz=America/New_York"
											style="border: 0" width="800" height="600" frameborder="0"
											scrolling="no"></iframe>
									</div>
								</div>

								<div class="tab-pane fade" id="tab-4">
									<div class="tab-body">

										<h3 class="title title-lg">Chat</h3>
										<p class="mb-20"></p>

										<!-- /.panel -->
										<div class="chat-panel panel panel-default">
											<div class="panel-heading">
												<i class="fa fa-comments fa-fw"></i> Chat
												<div class="btn-group pull-right">
													<button type="button"
														class="btn btn-default btn-xs dropdown-toggle"
														data-toggle="dropdown">
														<i class="fa fa-chevron-down"></i>
													</button>
													<ul class="dropdown-menu slidedown">
														<li><a href="#"> <i class="fa fa-refresh fa-fw"></i>
																Refresh
														</a></li>
														<li><a href="#"> <i
																class="fa fa-check-circle fa-fw"></i> Available
														</a></li>
														<li><a href="#"> <i class="fa fa-times fa-fw"></i>
																Busy
														</a></li>
														<li><a href="#"> <i class="fa fa-clock-o fa-fw"></i>
																Away
														</a></li>
														<li class="divider"></li>
														<li><a href="#"> <i class="fa fa-sign-out fa-fw"></i>
																Sign Out
														</a></li>
													</ul>
												</div>
											</div>
											<!-- /.panel-heading -->
											<div class="panel-body">
												<ul class="chat">
													<li class="left clearfix"><span
														class="chat-img pull-left"> <img
															src="http://placehold.it/50/55C1E7/fff" alt="User Avatar"
															class="img-circle" />
													</span>
														<div class="chat-body clearfix">
															<div class="header">
																<strong class="primary-font">Jack Sparrow</strong> <small
																	class="pull-right text-muted"> <i
																	class="fa fa-clock-o fa-fw"></i> 12 mins ago
																</small>
															</div>
															<p>Nice to meet you too.</p>
														</div></li>
													<li class="right clearfix"><span
														class="chat-img pull-right"> <img
															src="http://placehold.it/50/FA6F57/fff" alt="User Avatar"
															class="img-circle" />
													</span>
														<div class="chat-body clearfix">
															<div class="header">
																<small class=" text-muted"> <i
																	class="fa fa-clock-o fa-fw"></i> 13 mins ago
																</small> <strong class="pull-right primary-font">Bhaumik
																	Patel</strong>
															</div>
															<p>Nice to meet you.</p>
														</div></li>
													<li class="left clearfix"><span
														class="chat-img pull-left"> <img
															src="http://placehold.it/50/55C1E7/fff" alt="User Avatar"
															class="img-circle" />
													</span>
														<div class="chat-body clearfix">
															<div class="header">
																<strong class="primary-font">Jack Sparrow</strong> <small
																	class="pull-right text-muted"> <i
																	class="fa fa-clock-o fa-fw"></i> 14 mins ago
																</small>
															</div>
															<p>Hi.</p>
														</div></li>
													<li class="right clearfix"><span
														class="chat-img pull-right"> <img
															src="http://placehold.it/50/FA6F57/fff" alt="User Avatar"
															class="img-circle" />
													</span>
														<div class="chat-body clearfix">
															<div class="header">
																<small class=" text-muted"> <i
																	class="fa fa-clock-o fa-fw"></i> 15 mins ago
																</small> <strong class="pull-right primary-font">Bhaumik
																	Patel</strong>
															</div>
															<p>Hello.</p>
														</div></li>
												</ul>
											</div>
											<!-- /.panel-body -->
											<div class="panel-footer">
												<div class="input-group">
													<input id="btn-input" type="text"
														class="form-control input-sm"
														placeholder="Type your message here..." /> <span
														class="input-group-btn">
														<button class="btn btn-warning btn-sm" id="btn-chat">
															Send</button>
													</span>
												</div>
											</div>
											<!-- /.panel-footer -->
										</div>



									</div>
								</div>
								<div class="tab-pane fade" id="tab-5">

									<div class="tab-body">
										<center>

											<div style="color: teal; font-size: 30px">User Details</div>

											<c:if test="${!empty users}">
												<table border="1" bgcolor="black" width="600px">
													<tr
														style="background-color: teal; color: white; text-align: center;"
														height="40px">
														<td>Username</td>
														<td>Password</td>
														<td>Email</td>
														<td>Edit</td>
														<td>Delete</td>
													</tr>


													<c:forEach items="${users}" var="user">
														<tr id="user-${user.getUserId()}"
															style="background-color: white; color: black; text-align: center;"
															height="30px">

															<td id="username-${user.getUserId()}"><c:out
																	value="${user.getUserName()}" /></td>
															<td id="password-${user.getUserId()}"><c:out
																	value="${user.getPassword()}" /></td>

															<td id="email-${user.getUserId()}"><c:out
																	value="${user.getEmail()}" /></td>

															<td><a href="updateuser?id=${user.getUserId()}">Edit</a></td>
															<td><a href="deleteuser?id=${user.getUserId()}">Delete</a></td>
															<%-- <td id="edit-${user.getUserId()}"> --%>
															<%-- <form action="edit-single-user" method="post">
								<input type="text" name="username" /><br />
								<input type="password" name="password" /><br /> 
								<input type="submit" value="login" />
								<span class="error">${error}</span>
							</form> --%>
															<!-- </td> -->
														</tr>
													</c:forEach>

												</table>
											</c:if>


											<a href="admin-adduser">Click Here to add new User</a>
										</center>
									</div>
								</div>
								<!-- end of div 5-table -->
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