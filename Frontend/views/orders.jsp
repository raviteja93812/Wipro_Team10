<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<h5 class="p-2" style="border-bottom: 2px solid green;">Orders List</h5>
<div class="container">
         <jsp:include page="msg.jsp"></jsp:include>
            <table class="table table-bordered table-sm">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Order Date</th>              
                        <th>Order Value</th>        
                        <th>Status</th>
                        <th>Show Details</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${orders }" var="o">
                <tr>
                    <td>${o.id}</td>
                    <td>${o.orderdate}</td>   
                    <td>&#8377; ${o.totalOrderPrice}</td>  
                    <td>${o.status}</td>  
                    <td>
                        <a href="/details/${o.id}" class="btn btn-sm btn-primary"><i class="fa fa-eye"></i>  Details</a>                        
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
<jsp:include page="footer.jsp"></jsp:include>