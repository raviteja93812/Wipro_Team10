<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
	<h5 class="p-2" style="border-bottom: 2px solid green;">Dashboard</h5>
	<div class="row">
		<div class="col-sm-3">
			<a href="/users"
				class="btn w-100 text-left bg-warning p-2 text-white">
				<h4>${totalusers}</h4>
				<h5>Customers</h5>
			</a>
		</div>
		<div class="col-sm-3">
			<a href="/products"
				class="btn w-100 text-left bg-danger p-2 text-white">
				<h4>${totalproducts}</h4>
				<h5>Products</h5>
			</a>
		</div>
		<div class="col-sm-3">
			<a href="/categories"
				class="btn w-100 text-left bg-warning p-2 text-white">
				<h4>${totalcategories}</h4>
				<h5>Categories</h5>
			</a>
		</div>
		<div class="col-sm-3">
			<a href="/orders"
				class="btn w-100 text-left bg-danger p-2 text-white">
				<h4>${totalorders}</h4>
				<h5>Orders</h5>
			</a>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>