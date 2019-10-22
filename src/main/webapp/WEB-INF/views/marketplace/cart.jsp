<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

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
                   <tr>
                       <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                       <td class="align-middle">Product Name a</td>
                       <td class="text-right align-middle">$ 150</td>
                       <td class="text-right align-middle"><a href="#" class="btn btn-danger oi oi-x"> </a> </td>
                   </tr>
                   <tr>
                       <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                       <td class="align-middle">Product Name a</td>
                       <td class="text-right align-middle">$ 150</td>
                       <td class="text-right align-middle"><a href="#" class="btn btn-danger oi oi-x"> </a> </td>
                   </tr>
                   <tr>
                       <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                       <td class="align-middle">Product Name a</td>
                       <td class="text-right align-middle">$ 150</td>
                       <td class="text-right align-middle"><a href="#" class="btn btn-danger oi oi-x"> </a> </td>
                   </tr>
                   <tr>
                       <td></td>
                       <td></td>
                       <td><strong>Total</strong></td>
                       <td class="text-right"><strong>$ 450</strong></td>
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