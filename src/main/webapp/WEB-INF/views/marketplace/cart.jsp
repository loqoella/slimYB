<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<%! int totalPrice = 0; %>

<div class="container mb-5">
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                   <th scope="col"> </th>
                   <th scope="col">Product</th>
                   <th scope="col" class="text-right">Price</th>
                   <th> </th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${cartItemList}">
                        <tr>
                           <td><img src="${product.imagePath.split("%")[0]}" /> </td> <%--TODO--%>
                           <td class="align-middle">${product.productName}</td>
                           <td class="text-right align-middle">$ ${product.price}</td>
                           <td class="text-right align-middle"><a href="#" onclick="sendDeleteRequest(this, ${product.id})" class="btn btn-danger oi oi-x"> </a> </td>
                        </tr>
                    </c:forEach>
                <tr>
                   <td></td>
                   <td></td>
                   <td><strong>Total</strong></td>
                   <td class="text-right"><strong>$ <% totalPrice %></strong></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col mb-2">
       <div class="row">
           <div class="col-sm-12  col-md-6">
               <a href="/slimYB/marketplace" class="btn btn-lg btn-block btn-outline-secondary">Continue Shopping</a>
           </div>
           <div class="col-sm-12 col-md-6 text-right">
               <a href="/slimYB/marketplace/checkout" class="btn btn-lg btn-block btn-success text-uppercase">Checkout</a>
           </div>
       </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>
<script>
    function sendDeleteRequest(element, itemId) {
        var http = new XMLHttpRequest();
        var url = "/slimYB/marketplace/cart/delete?item=" + itemId;
        http.open("DELETE", url);
        http.send();

        element.parentElement.parentElement.remove();
    }
</script>