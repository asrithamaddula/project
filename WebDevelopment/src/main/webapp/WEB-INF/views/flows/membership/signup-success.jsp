
<%@include file="../flows-shared/header.jsp"%>
<div class="container">
<div class="row">
<div class="col-sm-offset-4 col-sm-4">
<div class="text-center">
<h2>Thank You for Registering with us!!! <i class="far fa-smile"></i> </h2>
<h3>${registerModel.user.firstName}${registerModel.user.lastName}</h3>
<h4>Have a Good day and Enjoy your Shopping <i class="fas fa-gift"></i> <i class="far fa-handshake"></i></h4>
<br/>
<h4>Please login with your email and password</h4>
<div>
<a href="${contextRoot}/login" class="btn btn-lg btn-success">
Please login here
</a>
</div>
</div>
</div>
	
</div>
</div>

<%@include file="../flows-shared/footer.jsp"%>