<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<script>
window.userRole='${userModel.role}';
</script>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>			
				
				<a href="${contextRoot}/home"><img style="padding-top:25px" src="${images}/logo.png"/></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li id="home"><a href="${contextRoot}/home">Home</a>
				<li id="aboutus"><a href="${contextRoot}/about">About Us</a></li>
				<li id="viewProducts"><a
					href="${contextRoot}/show/all/products">View Products</a></li>
				<li id="contactus"><a href="${contextRoot}/contact">Contact
						Us</a></li>
				<security:authorize access="hasAuthority('ADMIN')">
				<li id="manageproducts"><a
					href="${contextRoot}/manage/products">Manage Products</a></li>
					</security:authorize>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="isAnonymous()">

					<li id="signup"><a href="${contextRoot}/membership">Sign
							Up</a></li>
					<li id="login"><a href="${contextRoot}/login">login <i class="fas fa-sign-in-alt"></i></a></li>
				</security:authorize>

				<security:authorize access="isAuthenticated()">
					<li class="dropdown"><a
						class="btn btn-default dropdown-toggle" href="javascript:void(0)"
						id="dropdownMenu1" data-toggle="dropdown">
							${userModel.fullName} <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" aria-labelledby=dropdownMenu1>

							<security:authorize access="hasAuthority('USER')">
								<li id="cart"><a href="${contextRoot}/cart/show"> <span
										class="glyphicon glyphicon-shopping-cart"></span>&#160; <span
										class="badge">${userModel.cart.cartLines}</span>-&#8377;${userModel.cart.grandTotal}
								</a></li>
								<li role="separator" class="divider"></li>
							</security:authorize>

							<li id="logout">
							<a href="${contextRoot}/logout">Logout</a></li>
						</ul></li>
				</security:authorize>
			</ul>
		</div>
	</div>
</nav>