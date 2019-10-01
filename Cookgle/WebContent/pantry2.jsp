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
		
		<a href="Products.jsp" class="tab">Products</a><a class="tab1"> > Pantry Staples</a>
		
			<form action="insertProduct.do" method="post" enctype="multipart/form-data">
								
				<div class="cart">
				<input type="image" class="cartimg" alt="cart" src="./img/bcart.png">
				</div>
			
				<div class="cook">
					<a href="#"><img class="img" src="./img/pantry/balsamic.jpg" onclick="info('balsamic vinegar','pantry staples','$40','./img/pantry/balsamic.jpg');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">			
					<p>Balsamic Vinegar</p>
				</div>
				
				<div class="cook">
					<a href="#"><img class="img" src="./img/pantry/chilli.jpg" onclick="info('Chilli Paste','pantry staples','$35','./img/pantry/chilli.jpg');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">				
					<p>Chilli Paste (Gochujang)</p>
				</div>
				<div class="cookr">
					<a href="#"><img class="img" src="./img/pantry/olive.jpg" onclick="info('olive oil','pantry staples','$27','./img/pantry/olive.jpg');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">			
					<p>Olive Oil (Organic)</p>
				</div>
			
				<div class="cook">
					<a href="#"><img class="img" src="./img/pantry/pepper.jpg" onclick="info('black pepper','pantry staples','$25','./img/pantry/pepper.jpg');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">				
					<p>Black Pepper</p>
				</div>
				<div class="cook">
					<a href="#"><img class="img" src="./img/pantry/sesame.jpg" onclick="info('sesame oil','pantry staples','$65','./img/pantry/sesame.jpg');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">			
					<p>Sesame Oil (Chamgireum)</p>
				</div>
				<div class="cookr">
					<a href="#"><img class="img" src="./img/pantry/soy.jpg" onclick="info('soybean paste','pantry staples','$55','./img/pantry/soy.jpg');"></a>
					<input type = "hidden" id="pname" name="pname">
					<input type = "hidden" id="category" name="category">
					<input type = "hidden" id = "price" name = "price">
					<input type = "hidden" id = "img" name = "img">
					<input type = "hidden" name = "userid" id="userid" value="${login}">	
					<p>Soybean Paste (Doenjang)</p>
				</div>
			
				
			</form>
			</div>

	</section>

</main>
		
<%@ include file="common/footer_css.jsp" %>

</body>
</html>