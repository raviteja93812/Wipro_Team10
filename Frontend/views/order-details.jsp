<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>

<div class="container-fluid" style="background:  #fdedff">
    <h5 class="text-center my-2 border-bottom text-white p-2" style="background: purple;">Order Details of No. ${o.id}</h5>
    <p class="float-right">Order Status : <strong>${o.status}</strong> </p>
    <p>Customer Name : <strong>${o.customer.fname } ${o.customer.lname }</strong></p>

    <div class="row">
        <div class="col-sm-7">
            <div class='p-3 rounded bg-white'>
                <c:forEach items="${items }" var="item">
	                <div class="border-bottom pb-3">
	                    <img class="mr-2 float-left" src="${item.product.pic }" width="90" height="90">
	                    <div class="p-2">
	                        <h6>${item.product.pname }</h6>
	                        <h6>Company : ${item.product.company }</h6>
	                        <h6>Medicine Salt: ${item.product.salt }</h6>
	                        <h6>&#8377; ${item.price}</h6>
	                        <h6 class="float-right">Quantity Ordered : ${item.qty}</h6>
	                    </div>
	
	                    <div class="clearfix"></div>
	                </div>
                </c:forEach>
            </div>
        </div>
        <div class="col-sm-5">
            <div class='rounded bg-white p-2'>
                <h5>Payment Details</h5>
                <table class="table">
                    <tr>
                        <th>MRP Total</th>
                        <th class="text-right font-weight-bold">&#8377; ${o.totalOrderPrice}</th>
                    </tr>
                    <tr>
                        <th>Tax @10%</th>
                        <th class="text-right font-weight-bold">&#8377; ${o.totalOrderPrice * 0.10}</th>
                    </tr>
                    <tr>
                        <th>Net Amount</th>
                        <th class="text-right font-weight-bold">&#8377; ${o.totalOrderPrice+o.totalOrderPrice * 0.10}</th>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <c:set var="status" value="Pending" />
    <c:choose>
    <c:when test="${o.status eq status }">
    <a onclick="return confirm('Are you sure to cancel this order ?')" 
       href="/cancel/${o.id}" class="btn btn-danger float-right mb-3">Cancel Order</a>        
    <div class="clearfix"></div>
    </c:when>
    <c:otherwise>
    <h5 class="text-center p-2">Your order will be delivered to you within 2-3 working Hours.</h5>
    </c:otherwise>
    </c:choose>
</div>

<jsp:include page="cfooter.jsp"></jsp:include>