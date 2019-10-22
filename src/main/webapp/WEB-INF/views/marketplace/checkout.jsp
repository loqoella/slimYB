<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/marketplace/marketplaceHeader.jsp" %>

<div>
	<form>
		<div class="form-row">
			<div class="form-group col-md-6">
			  <label for="inputName">Name</label>
			  <input type="text" class="form-control" id="inputName">
			</div>
			<div class="form-group col-md-6">
			  <label for="inputPhone">Phone number</label>
			  <input type="text" class="form-control" id="inputPhone">
			</div>
		</div>
		<div class="form-group">
		  <label for="inputAddress">Address</label>
		  <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
		</div>
		<div class="form-group">
		  <label for="inputAddress2">Address 2</label>
		  <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
		</div>
		<div class="form-row">
		  <div class="form-group col-md-6">
		    <label for="inputCity">City</label>
		    <input type="text" class="form-control" id="inputCity">
		  </div>
		  <div class="form-group col-md-4">
		    <label for="inputState">State</label>
		    <select id="inputState" class="form-control">
		      <option selected>Choose...</option>
		      <option>New South Wales</option>
		      <option>Queensland</option>
		      <option>South Australia</option>
		      <option>Tasmania</option>
		      <option>Victoria</option>
		      <option>Western Australia</option>
		    </select>
		  </div>
		  <div class="form-group col-md-2">
		    <label for="inputPostcode">Post code</label>
		    <input type="text" class="form-control" id="inputPostcode">
		  </div>
		</div>
		<div class="form-group">
		  <label for="inputCardName">Name on card</label>
		  <input type="text" class="form-control" id="inputCardName">
		</div>
		<div class="form-row">
		  <div class="form-group col-md-6">
		    <label for="inputCardNumber">Card Number</label>
		    <input type="email" class="form-control" id="inputCardNumber">
		  </div>
		  <div class="form-group col-md-4">
		    <label for="inputCardType">Card Type</label>
		    <select id="inputCardType" class="form-control">
		      <option selected>Choose...</option>
		      <option>VISA</option>
		      <option>Master Card</option>
		    </select>
		  </div>
		  <div class="form-group col-md-2">
		    <label for="inputCVV">CVV</label>
		    <input type="text" class="form-control" id=""inputCVV"">
		  </div>
		</div>
	 	<button type="submit" class="btn btn-primary btn-lg btn-block">Proceed</button>
	</form>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>