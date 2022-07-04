<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>
<div class="main">

    <div class="content">                       
        <div class="container">
            <div class="row">
                <c:forEach items="${prods }" var="p">
					<div class="col-sm-3">
						<div class="card shadow my-1">

							<div class="card-body text-center">
								<a href="/addtocart/${p.prodid}"> <img style="height: 200px;"
									class="img-thumbnail card-img-top" src="${p.pic}" alt="" /></a>
								<h2 class="p-2" style="font-size: 14px;">${p.pname}</h2>
								<p style="margin-bottom: 5px;">
									<span>&#8377;${p.price}</span>
								</p>
								<div class="button" style="margin: auto">
									<a href="/addtocart/${p.prodid}" class="btn btn-success btn-block"><i
										class="fa fa-cart"></i>Add to Cart</a>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>
            </div>                                    
    </div>

    </div>    
</div>

<jsp:include page="cfooter.jsp"></jsp:include>