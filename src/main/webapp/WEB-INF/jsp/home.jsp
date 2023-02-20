<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<jsp:include page="jscss.jsp"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>
<jsp:include page="userlist.jsp"></jsp:include>
<!-- Button trigger modal -->
	<jsp:include page="adduser.jsp" />
	<jsp:include page="updateuser.jsp" />
	<script>
	function setModelAttribute(id,password,email, mobile,
			username, roles) {
		console.log("update:"+roles);
		$('#updateemail').val(email);
		$('#updatemobile').val(mobile);
		$('#updateusername').val(username);
		$('#updateid').val(id);
		$('#updatepassword').val(password);
		$('#updaterole').val(roles);
	}
	function confirmdelete() {
		let text = "Are You Sure You Want to delete this user?.";
		  if (confirm(text) == true) {
		    return true;
		  } else {
		    return false;
		  }
	}
	</script>
</body>
</html>