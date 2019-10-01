<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="./js/jquery-3.4.1.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/style_signup.css">

<title>Sign Up to Cookgle</title>



</head>
<body>

	<section id="banner">

		<%@include file="common/header_black.jsp"%>

		<section class="presentation">

			<section class="signup-page">
				<form class="signup-form" action="AddUser.do" method="post">
					<div class="container">
						<h1>Sign Up</h1>
						<p>
							Already a member? <a href="login_jsp.jsp"
								style="color: dodgerblue">Login</a>
						</p>

						<label for="id"><b>ID</b></label><br> <input type="text"
							placeholder="Enter ID" id="id" name="id" required value="${id}">
						<input type="button" value="Check ID" id="id1" name="id1"
							onclick="idcheck()"><br> <span style="color: red;"></span>

						<label for="name"><b>Name</b></label><br> <input type="text"
							placeholder="Enter Name" id="name" name="name" required>

						<label for="pw"><b>Password</b></label> <input type="password"
							placeholder="Enter Password" id="pw" name="pw" required>
						
						<label for="pwCheck"><b>Password_Check &nbsp;&nbsp;</b></label> 
						<input type="password" placeholder="Enter Password" id="pw1" name="pw1" required>						
						<p id="pwcheck_2" style="color: red;"></p>
						 	
						
						<div class="log-btn">
							<button type="submit" class="signupbtn" onclick="check()">Sign Up</button>
							<button type="reset" class="cancelbtn">Cancel</button>
							<span style="color: red;" ${msg}></span>
						</div>
					</div>
				</form>

			</section>
		</section>

	</section>

	<%@ include file="common/footer_css.jsp"%>

	<script>
		function idcheck() {
			$.ajax({
				url : 'json/id_check.jsp',
				dataType : 'json',
				data : {
					id : $('#id').val()
				},
				success : function(data) {
					if (data.id == undefined) {
						alert("사용가능한 ID입니다.")
					} else {
						alert("사용중인 ID입니다.")
					}
				},
				error : function(e) {
					alert("error" + e)
				}
			})
		};

		
		  $(document).ready(function(){
				$('#pw').keyup(function(){
					$('pwcheck_2').text('');
				});
				
			$('#pw1').keyup(function(){
			if($('#pw').val() != $('#pw1').val()) {
				$('#pwcheck_2').text('');
				$('#pwcheck_2').html("<font color='red'> fail </font>"); 
				}else{ $('#pwcheck_2').text('');
				$('#pwcheck_2').html("<font color='blue'> success </font>"); 
				} 
			}); 
			});
		  
		  function check(){
			  if("${result}" == 0){
				  alert("회원가입성공");
			  }
		  }
		  
	</script>

</body>
</html>