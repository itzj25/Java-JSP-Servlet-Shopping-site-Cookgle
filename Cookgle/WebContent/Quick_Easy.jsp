<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quick & Easy</title>
<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">f="">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style_Quick_Easy.css">

</head>
<body>

<%@ include file="common/header_css.jsp" %>

		<div class="Recipe">		
		
		<a href="recipe.jsp" class="tab">Recipe</a><a class="tab1"> > Quick & Easy</a>
		
			<form action="insertProduct.do" method="post" enctype="multipart/form-data">
								
				<div class="cook">
					<a href="recipe_detail1.jsp"><img class="img" src="./img/food/carbo.jpg"></a>			
					<p>Easy Spaghetti Carbonara</p>
				</div>
				
				<div class="cook">
					<a href="recipe_detail1.jsp"><img class="img" src="./img/food/pork.png"></a>			
					<p>Air Fryer Pork Chops</p>
				</div>
				<div class="cookr">
					<a href="recipe_detail1.jsp"><img class="img" src="./img/food/tex.jpg"></a>				
					<p>Tex-Mex Meatballs</p>
				</div>
			
				<div class="cook">
					<a href="recipe_detail1.jsp"><img class="img" src="./img/food/spa.jpg"></a>
					<p>Baked Spaghetti</p>
				</div>
			
				<br>
				
			</form>
			</div>

	</section>
		
<%@ include file="common/footer_css.jsp" %>

</body>
</html>