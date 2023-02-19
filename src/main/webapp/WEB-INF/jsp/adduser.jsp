<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->

			<div class="modal-content">
				<c:if test="${ROLE_USER eq 'ROLE_ADMIN'}">
					<form action="admin/add" ModelAttribute="user" method="POST">
				</c:if>
				<c:if test="${ROLE_USER eq 'ROLE_USER'}">
					<form action="manager/add" ModelAttribute="user" method="POST">
				</c:if>
					<div class="modal-header">
						<h4 class="modal-title">Add User</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="email">Email</label> <input type="email"
								class="form-control" id="email" name="email" path="email"
								placeholder="Enter Email" required="required">
						</div>
						<div class="form-group">
							<label for="mobile">Mobile No.</label> <input type="mobile"
								class="form-control" id="mobile" name="mobile" path="mobile"
								placeholder="Enter Mobile No." required="required">
						</div>
						<div class="form-group">
							<label for="username">User Name</label> <input type="text"
								class="form-control" id="username" name="username"
								path="username" placeholder="Enter User Name" required="required">
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" id="password" name="password"
								path="password" placeholder="Enter password" required="required">
						</div>
						<div class="form-group">
							<label for="roles">Role</label> <select id="roles" name="roles"
								path="roles" class="form-control" required="required">
								<option value="ROLE_MANAGER">MANAGER</option>
								<option value="ROLE_USER" selected>USER</option>
							</select>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Submit</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>