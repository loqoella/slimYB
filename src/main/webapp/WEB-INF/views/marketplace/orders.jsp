<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<div class="card mb-2">
	<c:forEach var="i" begin="0" end="${orderList.size()}">
		<c:if test="${i < orderList.size()}">
		<div class="card-header text-muted">
			<div>Order Number: ${orderList.get(i).id} </div>
			<div class="align-self-end">Status: ${orderList.get(i).status}</div>
		</div>
		<c:forEach var="j" begin="0" end="${productList.size() - 1}">
			<c:if test="${i == j}">
				<c:forEach var="product" items="${productList.get(j)}">
					<div class="card">
						<div class="row no-gutters">
						  <div class="col-md-2">
							<img src="${product.imagePath.splie("%")[0]}" class="card-img" alt="...">
						  </div>
						  <div class="col-md-10">
							<div class="card-body">
								<a href="#"> <h5 class="card-title">${product.productName}</h5> </a>
								<p class="card-text">${product.description.substring(0, (product.description.length() > 100 ? 100 : product.description.length()))}</p>
								<p class="card-text"><small class="text-muted">Price: ${product.price} </small></p>
								<a href="/slimYB/marketplace/comment?itemId=${product.id}" class="btn btn-outline-secondary">Comment</a>
							</div>
						  </div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</c:forEach>
		<div class="card-footer text-muted">
			Total: $ ${orderList.get(i).totalPrice}
		</div>
		</c:if>
	</c:forEach>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>