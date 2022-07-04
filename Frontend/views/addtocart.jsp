<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>

	<div class="row">
    <div class="col-sm-3">
        <div class="card shadow my-3 ml-3">
            <div class="card-body">                          
            <img src="${p.pic}" style="width:200px;" class="card-img-top m-1">
            </div>
        </div>            
    </div>
    <div class="col-sm-7">
        <div class="card shadow my-3">
            <div class="card-body">
                <p class="text-white text-center p-2" style="background:green;font-size: 1.4em;">Product Description</p>
                <h4 class="text-success p-2">${p.pname}</h4>
                <h5 class="text-danger p-2">Category ${p.category.catname}</h5>
                <h5 class="text-danger p-2">Company ${p.company}</h5>
                <h5 class="text-danger p-2">Others ${p.salt}</h5>
                <h5>Price : <strong class="text-danger">&#8377; ${p.price}</strong></h5>
                <c:choose>
                <c:when test="${sessionScope.userid ne null }">
                <form method="post">
                    <input type="hidden" name="prodid" value="${p.prodid}" >
                    Quantity : <input name="qty" type="number" value="1" min="1">       
                    <br>
                    <div class="btn-group mt-3">
                        <button class="btn btn-danger mr-2" name="add">Add to Cart</button>                                        
                    </div>
                </form>
                </c:when>
                <c:otherwise>
                <div class="alert alert-danger text-center font-weight-bold">
                    Please login to buy products..!!
                </div>
                </c:otherwise>
                </c:choose>                
            </div>
        </div>
        
    </div>
</div>
</div> 

<jsp:include page="cfooter.jsp"></jsp:include>