<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dessert</title>
<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style_Quick_Easy.css">

</head>
<body>

<%@ include file="common/header_css.jsp" %>

	<section class="presentation">
		<div class="Recipe">		
		
		<a href="recipe.jsp" class="tab">Recipe</a><a class="tab1"> > Dessert</a>
		
			<form action="insertProduct.do" method="post" enctype="multipart/form-data">
								
				<div class="cook">
					<a href="recipe_detail2.jsp"><img class="img" src="./img/food/ball.jpg"></a>			
					<p>Chocolate-Covered Cake Balls</p>
				</div>
				
				<div class="cook">
					<a href="recipe_detail2.jsp"><img class="img" src="./img/food/short.jpg"></a>			
					<p>Strawberry Shortcake Fudge</p>
				</div>
				<div class="cookr">
					<a href="recipe_detail2.jsp"><img class="img" src="./img/food/rasp.png"></a>				
					<p>Flourless Chocolate Cake</p>
				</div>
			
				<div class="cook">
					<a href="recipe_detail2.jsp"><img class="img" src="./img/food/heart.jpg"></a>
					<p>Heart-Shaped Cake</p>
				</div>
			
				<br>
				
			</form>
			</div>

	</section>
		
<%@ include file="common/footer_css.jsp" %>

</body>
</html>