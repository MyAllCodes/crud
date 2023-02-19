<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<div class="container-fluid">
		<table class="table">
			<tr>
				<th>SR. No.</th>
				<th scope="col">Email</th>
				<th scope="col">Mobile</th>
				<th scope="col">User Name</th>
				<th scope="col">Roles</th>
				<th scope="col">Action</th>
			</tr>
			<c:forEach items="${list}" var="user" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${user.email}</td>
					<td>${user.mobile}</td>
					<td>${user.username}</td>
					<td>${user.roles}</td>
					<td><c:if test="${user.roles ne 'ROLE_ADMIN' }">
							<c:if
								test="${ROLE_USER eq 'ROLE_ADMIN' || ROLE_USER eq 'ROLE_MANAGER'}">
								<a data-toggle="modal" data-target="#myModal1"
									onclick="setModelAttribute('${user.id}','${user.email}','${user.mobile}','${user.username}','${user.roles}')"><i
									class="fa fa-edit text-primary"
									style="font-size: 36px; cursor: pointer"></i></a>
								<c:if test="${ROLE_USER eq 'ROLE_ADMIN'}">
									<a href="/admin/delete?id=${user.id}"
										onclick="alert('Are You Sure You want to delete this user?')"><i
										class="fa fa-trash text-primary"
										style="font-size: 36px; cursor: pointer"></i></a>
								</c:if>
							</c:if>
						</c:if></td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>