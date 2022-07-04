<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<h5 class="p-2" style="border-bottom: 2px solid green;">Order
	Details</h5>
<div class="row">
	<div class="col-sm-6">
		<table class="table table-bordered">
			<tr>
				<td>Customer Name :</td>
				<th>${o.customer.fname}${o.customer.lname}</th>
			</tr>
			<tr>
				<td>Order Date :</td>
				<th>${o.orderdate}</th>
			</tr>
		</table>
	</div>
</div>

<table class="table table-bordered table-striped">
	<thead class="bg-red">
		<th>Product</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Amount</th>
	</thead>
	<tbody>
		<c:forEach items="${items }" var="od">
			<tr>
				<td><img src='${od.product.pic}' width="50" height="30">${od.product.pname}</td>
				<td>&#8377; ${od.price}</td>
				<td>${od.qty}</td>
				<td>&#8377; ${od.amount}</td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="3">Total</th>
			<th>&#8377; ${o.totalOrderPrice}</th>
		</tr>
	</tfoot>
</table>
<c:set var="status" value="Pending" />
<c:choose>
	<c:when test="${o.status eq status }">
		<div class="row">
			<div class="col-sm-2">
				<a class="btn btn-primary" href="/confirm/${o.id}">Confirm Order</a>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<p class="p-2 text-success font-weight-bold text-center"
			style="border: 1px solid green">Order has been confirmed</p>
	</c:otherwise>
</c:choose>
<jsp:include page="footer.jsp"></jsp:include>