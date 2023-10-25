<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <%@include file="./base.jsp"%>--%>

<html>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">ID${p.id}</th>
							<td>${p.name}</td>
							<td>${p.description}</td>
							<td class="font-weight-bold">&#x20B9; ${p.price}</td>
							<td>
							  <a href="delete/${p.id }"><i class="fa-regular fa-trash-can-slash text-danger"></i></a>
							  <a href="update/${p.id }"><i class="fa-regular fa-pen-nib text-primary"></i></a>
							  
							</td>
						</tr>
					</c:forEach>
					
					</tbody>
				</table>
            <div class="container text-center ">
            <a href="addProduct" class="btn btn-outline-success">Add product</a>
            
            </div>

			</div>

		</div>

	</div>
</body>

</html>
