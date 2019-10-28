<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<a href="/slimYB/marketplace/sellNew" class="btn btn-primary btn-lg btn-block mb-2">Sell new item</a>
<c:forEach var="product" items="${productList}">
  <div class="card mb-2">
    <div class="row no-gutters">
      <div class="col-md-2">
        <img src="${product.imagePath.split("%")[0]}" class="card-img" alt="...">
      </div>
      <div class="col-md-10">
        <div class="card-body">
          <a href="/slimYB/marketplace/item/${product.id}"> <h5 class="card-title">${product.productName}</h5> </a>
          <p class="card-text">${product.description.substring(0, (product.description.length() > 100 ? 100 : product.description.length()))}</p>
          <p class="card-text"><small class="text-muted">Time uploaded: ${product.lastUpdateTime.toLocaleString()}</small></p>
          <a href="/slimYB/marketplace/sellNew?itemId=${product.id}" class="btn btn-outline-secondary">Edit</a> <%--TODO--%>
        </div>
      </div>
    </div>
  </div>
</c:forEach>


<%@ include file="/WEB-INF/views/footer.jsp" %>