<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<h5 class="p-2" style="border-bottom: 2px solid green;">Medicine Expiry Report</h5>
<table class="table table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Brand</th>
					<th>Price</th>
					<th>Category</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${items }" var="p">
					<tr>
						<td>${p.prodid}</td>
						<td>${p.pname}</td>
						<td>${p.company}</td>
						<td>&#8377; ${p.price}</td>
						<td>${p.category.catname}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<jsp:include page="footer.jsp"></jsp:include>