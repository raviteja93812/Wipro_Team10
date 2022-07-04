<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<jsp:include page="header.jsp"></jsp:include>
<button type="button" class="btn btn-primary float-right btn-sm"
	data-toggle="modal" data-target="#addproduct">Add Product</button>
<h5 class="p-2" style="border-bottom: 2px solid purple;">Products</h5>
<jsp:include page="msg.jsp"></jsp:include>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Brand</th>
			<th>Price</th>
			<th>Category</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${prods }" var="p">
			<tr>
				<td>${p.prodid}</td>
				<td><img src="${p.pic}" class="mr-2"
					style="width: 80px; height: 60px;">${p.pname}</td>
				<td>${p.company}</td>
				
				<td>&#8377; ${p.price}</td>
				<td>${p.category.catname}</td>
				<td><a onclick="return confirm('Are you sure to delete this product ?')" href="/delprod/${p.prodid}"
					class="btn btn-danger btn-sm">Delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="modal fade" id="addproduct" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form method="POST" enctype="multipart/form-data">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>Name</label> <input type="text" name="pname"
									class="form-control">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Brand</label> <input type="text" name="company"
									class="form-control">
							</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>Others</label> <input type="text" name="salt"
									class="form-control">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Launch Date</label> <input type="month" name="mfg"
									class="form-control">
							</div>
						</div>
					</div>

					<div class="form-row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>Product Add Date</label> <input type="month" name="expiry"
									class="form-control">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Quantity</label> <input type="text" name="qty"
									class="form-control">
							</div>
						</div>
					</div>

					<div class="form-row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>Price</label> <input type="text" name="price"
									class="form-control">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Category</label> <select name="catid" required
									class="form-control">
									<option value="">Select Category</option>
									<c:forEach items="${cats }" var="cat">
										<option value="${cat.catid}">${cat.catname}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>



					<div class="form-group">
						<label>Product Photo</label> <input type="file" name="photo"
							accept=".jpg,.png" class="form-control-file">
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">Save Product</button>
				</div>
			</form>
		</div>
	</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>