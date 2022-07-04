<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>
<div class='container'>
	<c:choose>
		<c:when test="${cqty eq 0 }">
			<h5 class='text-center p-2'>No Item in the Cart</h5>";
    </c:when>
		<c:otherwise>
			<div class="row">
				<div class="col-sm-7">
					<h4 class="py-2">My Cart (${cqty})</h4>
				</div>
				<div class="col-sm-5"></div>
			</div>

			<div class="row">
				<div class="col-sm-7">
					<div class='p-3 rounded bg-white'>
						<h5 class="p-2 float-right font-weight-bold">&#8377;
							${ctotal}</h5>
						<h5 class="p-2" style="border-bottom:2px solid blue;">Cart(${cqty} items)</h5>
						<c:forEach items="${items }" var="c">
							<div class="border-bottom py-2">
								<img class="mr-3 float-left img-thumbnail" src='${c.product.pic}' style="width:100px;height:100px;">
								<div class="p-2">
									<a
										onclick="return confirm('Are you sure to delete this item from cart ?')"
										href="/delcart/${c.id}" class="btn btn-danger btn-sm float-right">X</a>
									<h5 class="font-weight-bold p-1">${c.product.pname}</h5>
									<h6 class="font-weight-bold p-1 text-success">Company ${c.product.company}</h6>
									<h6>&#8377; ${c.product.price}</h6>
									<div class="float-right">Quantity: ${c.qty}</div>
								</div>
								<div class="clearfix"></div>
							</div>
							
						</c:forEach>
					</div>
				</div>
				<div class="col-sm-5">
					<div class='rounded bg-white p-2'>
						<h5 class="p-2" style="border-bottom:2px solid blue;">Payment Details</h5>
						<form method="post" action="placeorder">
							<table class="table table-sm table-borderless border-bottom mb-2">
								<tr>
									<th>MRP Total</th>
									<th class="text-right font-weight-bold">&#8377; ${ctotal}</th>
								</tr>
								<tr>
									<th>Tax</th>
									<th class="text-right font-weight-bold">&#8377; ${ ctax}</th>
								</tr>
								<tr>
									<th>Total Amount</th>
									<th class="text-right font-weight-bold">&#8377;
										${netamount}</th>
								</tr>
							</table>
							
								<tr>
									<td colspan="2"><input type="submit"
										class="btn btn-primary float-right" value="Place Order">
									</td>
								</tr>
							
						</form>
					</div>

				</div>
			</div>

			<div class='clearfix'></div>
			<div class='pb-3'></div>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>