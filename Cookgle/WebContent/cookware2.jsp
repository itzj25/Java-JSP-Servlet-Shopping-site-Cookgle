<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookwares</title>
<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style_kitchenware.css">

<script type="text/javascript">
	function info(pname, category, price, img) {

		const result = confirm("Add product to my cart");

		if (result) {
			document.getElementById("pname").value = pname;
			document.getElementById("category").value = category;
			document.getElementById("price").value = price;
			document.getElementById("img").value = img;
		} else {
			return;
		}
	};
</script>

</head>
<body>

<%@ include file="common/header_css.jsp" %>

<main>
	<section class="presentation">
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("id");
%>

		<div class="products">		
		
		<a href="Products.jsp" class="tab">Products</a><a class="tab1"> > Cookware</a>
		
			<form action="insertProduct.do" method="post" enctype="multipart/form-data">
								
				<div class="cart">
				<input type="image" class="cartimg" alt="cart" src="./img/bcart.png">
				</div>
			
				<div class="cook">
					<a href="#"><img class="img" src="./img/cookware/cook_board.PNG" onclick="info('cutting board','cookware','$35','./img/cookware/cook_board.PNG');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">				
					<p>Cutting Board</p>
				</div>
				
				<div class="cook">
					<a href="#"><img class="img" src="./img/cookware/cook_frypan.png" onclick="info('frying pan','cookware','$50','./img/cookware/cook_frypan.png');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">				
					<p>Frying Pan</p>
				</div>
				<div class="cookr">
					<a href="#"><img class="img" src="./img/cookware/cook_knives.PNG" onclick="info('knife','cookware','$27','./img/cookware/cook_knives.PNG');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">					
					<p>Knife</p>
				</div>
			
				<div class="cook">
					<a href="#"><img class="img" src="./img/cookware/cook_ladle.PNG" onclick="info('dipper','cookware','$25','./img/cookware/cook_ladle.PNG');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">					
					<p>Dipper</p>
				</div>
				<div class="cook">
					<a href="#"><img class="img" src="./img/cookware/cook_plates.PNG" onclick="info('plates','cookware','$65','./img/cookware/cook_plates.PNG');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">				
					<p>Plates</p>
				</div>
				<div class="cookr">
					<a href="#"><img class="img" src="./img/cookware/cook_pot.PNG" onclick="info('pot','cookware','$55','./img/cookware/cook_pot.PNG');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" name = "userid" id="userid" value="${login}">
									
					<p>Cooking Pot</p>
				</div>
				
				<br>
				
			</form>
			</div>

	</section>

</main>
		
<%@ include file="common/footer_css.jsp" %>

</body>
</html>