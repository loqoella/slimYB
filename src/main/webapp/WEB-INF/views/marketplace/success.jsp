<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="d-flex flex-row justify-content-between">
	<button class="btn btn-light" disabled>
		<h3>Marketplace</h3>
	</button>
	<span>
		<a href="#" class="btn btn-primary">
			<span class="oi oi-dollar"></span>
		  	Sell
		</a>
		<a href="#" class="btn btn-Secondary">
			<span class="oi oi-document"></span>
		  	Orders
		</a>
		<a href="/slimYB/marketplace/cart" class="btn btn-info">
			<span class="oi oi-cart"></span>
		  	Cart <span class="badge badge-light ml-1">${cartNum}</span>
		</a>
	</span>
</div>

<section class="jumbotron text-center">
   	<div class="container">
        <h1 class="jumbotron-heading">SUCCESS</h1>
     </div>
     <hr class="my-4">
     <p>Returning to marketplace homepage in <strong id="countDown">5</strong> seconds ... </p>
</section>

<%@ include file="/WEB-INF/views/footer.jsp" %>

<!-- auto redirect to marketplace home page -->
<script type="text/javascript">
    var timeout = 6;
    function redirect() {
        document.getElementById("countDown").innerHTML = timeout - 1;
        timeout--;
        if (timeout == 0) {
            window.location.href = "/slimYB/marketplace";
        } else {
            setTimeout("redirect()", 1000);
        }
    }
    redirect();
</script>