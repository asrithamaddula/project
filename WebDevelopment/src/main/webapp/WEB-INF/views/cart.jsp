<div class="container" style="margin-top:50px;margin-left:50px; margin-bottom: 50px;">
<c:if test="${not empty message}">
<div class="alert alert-info">
<h4 class="text-center">${message}</h4>
</div>
</c:if>

<c:choose>
<c:when test="${not empty cartLines}">
<div class="row">
<div class="col-sm-12 col-md-10 col-md-offset-1">
<table class="table table-hover">
<thead>
<tr>
<th>Product</th>
<th>Quantity</th>
<th class="text-center">Unit Price</th>
<th class="text-center">Total</th>
<th> </th>
</tr>
</thead>
<tbody>
<c:forEach items="${cartLines}" var="cartLine">

<tr>
<td class="col-sm-8 col-md-6">
<div class="media">
<a class="thumbnail pull-left" href="#"> <img class="media-object" src="${images}/${cartLine.product.code}.jpeg" style="width: 72px; height: 72px;"> </a>
<div class="media-body">
<h4 class="media-heading"><a href="#">${cartLine.product.name}</a></h4>
<h5 class="media-heading"> by <a href="#">${cartLine.product.brand}</a></h5>
<p>Description:${cartLine.product.description}</p>

</div>
</div></td>
<td class="col-sm-1 col-md-1" style="text-align: center">
<input type="number" id="count_${cartLine.id}" class="form-control; text-center" value="${cartLine.productCount}" min="1" max="4">
</td>
<td class="col-sm-1 col-md-1 text-center">
&#8377;${cartLine.buyingPrice}
</td>

<td class="col-sm-1 col-md-1 text-center">
&#8377;${cartLine.total}
</td>

<td class="col-sm-1 col-md-1">
<c:if test="${cartLine.available==true}">

<button type="button" value="${cartLine.id}" name="refreshCart">
<i class="fas fa-redo"></i>

</button>
</c:if>
</td>

<td class="col-sm-1 col-md-1">
<a href="${contextRoot}/cart/${cartLine.id}/delete" /><i class="far fa-trash-alt"></i> 
</td>

</tr>
</c:forEach>

<tr>
<td>   </td>
<td>   </td>
<td>   </td>
<td><h3>Grand Total</h3></td>
<td class="text-right"><h3><strong> &#8377; ${userModel.cart.grandTotal}</strong></h3></td>
</tr>
<tr>
<td>   </td>
<td>   </td>
<td>   </td>
<td>
<button type="button" class="btn btn-default">
<span class="glyphicon glyphicon-shopping-cart"></span> <a href="${contextRoot}/show/all/products">Continue Shopping</a>
</button></td>
<td>
<button type="button" ><a href="${contextRoot}/checkout"><i style="color:blue;.icon-size:7x;" class="fas fa-shopping-bag icon-size"></i></a>
</button></td>
</tr>
</tbody>
</table>
</div>
</div>
</c:when>
<c:otherwise>
<div class="jumbotron">
<h3 class="text-center">Your cart is empty..!!</h3>
</div>
</c:otherwise>
</c:choose>
</div>

















