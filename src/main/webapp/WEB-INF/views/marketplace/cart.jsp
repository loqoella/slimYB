<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<c:set var="totalPrice" scope="page" value="0"></c:set>

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
                           <td><img src="${product.imagePath.split("%")[0]}" style="max-width:200px;max-height:200px;width:auto;height:auto;"/> </td>
                           <td class="align-middle">${product.productName}</td>
                            <td class="text-right align-middle price"><p style="display: inline">$ </p><pstyle="display: inline">${product.price}</p></td>
                           <td class="text-right align-middle"><a href="#" onclick="sendDeleteRequest(this, ${product.id})" class="btn btn-danger oi oi-x"> </a> </td>
                        </tr>
                        <c:set var="totalPrice" scope="page" value="${totalPrice + product.price}"></c:set>
                    </c:forEach>
                <tr>
                   <td></td>
                   <td></td>
                   <td><strong>Total</strong></td>
                   <td class="text-right">$ <strong id="totalPrice">${totalPrice} </strong></td>
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
        var url = "/slimYB/marketplace/cart/" + itemId;
        http.open("DELETE", url);
        http.send();

        $("#totalPrice").html(function(i, val) {
            var origin = parseFloat(val);
            var deletePrice = parseFloat(element.parentNode.previousElementSibling.lastChild.innerHTML);
            return origin - deletePrice;
        });
        element.parentElement.parentElement.remove();
        $("#cartNum").html(function(i, val) { return +val-1 });
    }
</script>