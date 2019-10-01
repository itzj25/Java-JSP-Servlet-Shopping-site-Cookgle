<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style_login2.css">

</head>
<body>

<section id="banner">

<%@include file="common/header_black.jsp" %>


<section class="presentation">

	<section class="login-page">
        <form class="login-form" action="login.do" method="post">
   			<div class="container">
		    	<h1>Login</h1> <br>

		      	<label for="id"><b>ID</b></label><br>
		      	<input type="text" placeholder="Enter ID" name="id" required id="id" value="">
				
				<br>
				
		      	<label for="pw"><b>Password</b></label>
		      	<input type="password" placeholder="Enter Password" id="pw" name="pw" required value="">

           		<p>Not a member? <a href="signup.jsp" style="color:dodgerblue">Join Us</a></p>
		      	<br>
		      	<div class="log-btn">
        			<button type="submit" class="signupbtn">Login</button>
        			<button type="reset" class="cancelbtn">Cancel</button>
      			</div>
    		</div>
  		</form>
           
    </section>

</section>

</section>

<%@ include file="common/footer_css.jsp" %>

</body>
</html>