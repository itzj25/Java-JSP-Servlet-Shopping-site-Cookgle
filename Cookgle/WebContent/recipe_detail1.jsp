<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./css/style_recipe_detail.css">
</head>
<body>
	<section id="banner">
		<%@ include file="common/header_css.jsp"%>

		<main>
		<section class="presentation">

			<table width="85%" height="100%" id="recipe">
				<tr>
					<td width="400" height="500" id="text"><img id="pic" src=".\img\food\aspara.jpg" width="500" height="500"></td>

					<td width="500">
						<div class="intro-text">
							<h1>One-Pan Balsamic Chicken and Asparagus </h1>
						</div>
						<br>
						<div class="intro-text">
							<p>Ingredients</p>
						</div>
						<br><br>
						
						<div id = "dontent_bt">
						 <h1> Ingredients of the Dish 
						<a onclick="showID('content1');" class="plus" style="float:right;">+</a></h1>
						</div>
						<div id = "content1" style="display:none;">
						<ul>
							<li><a>1/4 c. balsamic vinegar</a></li>
							<li><a>1/4 c. extra-virgin olive oil, divided</a></li>
							<li><a>1 tbsp. honey</a></li>
						</ul>
						</div>
						
						<div id = "dontent_bt">
						 <h1> Order of Cooking
						<a onclick="showID('content2');" class="plus" style="float:right;">+</a></h1>
						</div>
						<div id = "content2" style="display:none;">
						<ul>
							<li><a> In a small bowl, whisk together balsamic</a></li>
							<li><a> In a large skillet over medium heat, heat remaining oil</a></li>
							<li><a> To pan, add asparagus and tomatoes,<br> season with more salt and pepper </a></li>
						</ul>
						</div>
			</table>


		</section>

		</main>
		<%@ include file="common/footer_css.jsp"%>
	</section>

	<script>

		function showID(id)
		{
			obj=document.getElementById(id);
			if(obj.style.display == "none"){
			obj.style.display = "inline";
			}else {
			obj.style.display="none";
		}
		}
	</script>
</body>
</html>