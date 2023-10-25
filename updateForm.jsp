<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>

	<div class="container mt-3">

		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Change product details</h1>
				<form action="${pageContext.request.contextPath }/handleProduct" method="post">

                <input type="text" value="${product.id }" name="id"/>
					<div class="form-group">
						<label for="productName">Product Name</label> <input type="text"
							class="form-control" id="productName" name="name"
							placeholder="Enter the product name" value="${product.name }">
					</div>

					<div class="form-group">
						<label for="productDesc">Product description</label>
						<textarea class="form-control" id="description" rows="5"
							name="description" placeholder="Enter the product description">${product.description }</textarea>
					</div>

					<div class="form-group">
						<label for="productPrice">Product price</label> <input type="text"
							class="form-control" id="productPrice" name="price"
							placeholder="Enter the product price"
							value="${product.price }">
					</div>



					<div class="container text-center ">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>

					</div>
				</form>
			</div>

		</div>
	</div>




</body>
</html>