<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal1" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->

			<div class="modal-content">
				<c:if test="${ROLE_USER eq 'ROLE_ADMIN'}">
					<form action="admin/update" ModelAttribute="user" method="POST">
				</c:if>
				<c:if test="${ROLE_USER eq 'ROLE_USER'}">
					<form action="manager/update" ModelAttribute="user" method="POST">
				</c:if>
					<div class="modal-header">

						<h4 class="modal-title">Update User</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="updateid">Id</label> <input type="text"
								class="form-control" id="updateid" name="id" path="id">
						</div>
						<div class="form-group">
							<label for="updateemail">Email</label> <input type="email"
								class="form-control" id="updateemail" name="email" path="email"
								placeholder="Enter Email" required="required">
						</div>
						<div class="form-group">
							<label for="updatemobile">Mobile No.</label> <input type="mobile"
								class="form-control" id="updatemobile" name="mobile"
								path="mobile" placeholder="Enter Mobile No." required="required">
						</div>
						<div class="form-group">
							<label for="updateusername">User Name</label> <input type="text"
								class="form-control" id="updateusername" name="username"
								path="username" placeholder="Enter User Name" required="required">
						</div>
						<div class="form-group" style="display: none">
							<label for="updatepassword">Password</label> <input type="password"
								class="form-control" id="updatepassword" name="password"
								path="password" placeholder="Enter password" required="required">
						</div>
						<div class="form-group">
							<label for="updaterole">Role</label> <select id="updaterole"
								name="roles" path="roles" class="form-control" required="required">
								<option value="ROLE_MANAGER">MANAGER</option>
								<option value="ROLE_USER">USER</option>
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