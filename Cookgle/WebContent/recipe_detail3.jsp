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
					<td width="400" height="500" id="text"><img id="pic" src=".\img\food\tex.jpg" width="500" height="500"></td>

					<td width="600">
						<div class="intro-text">
							<h1>Tex-Mex Meatballs</h1>
						</div>
						<br>
						<div class="intro-text">
							<p id="aaa">Ingredients</p>
						</div> <br><br>
						
						<div id = "dontent_bt">
						<h1> Ingredients of the Dish <a onclick="showID('content1');" class="plus" style="float:right;">+</a></h1>
						</div>
						<div id = "content1" style="display:none;">
						<ul>
							<li><a>1 1/2 lb. ground beef</a></li>
							<li><a>2 c. shredded Mexican cheese blend, divided</a></li>
							<li><a>1/2 c. panko bread crumbs</a></li>
						</ul>
						</div>
						
						<div id = "dontent_bt">
						 <h1> Order of Cooking
						<a onclick="showID('content2');" class="plus" style="float:right;">+</a></h1>
						</div>
						<div id = "content2" style="display:none;">
						<ul>
							<li><a>Mix until combined, then form into meatballs. </a></li>
							<li><a>In a large skillet over medium-high heat, heat oil.</a></li>
							<li><a>Cover and simmer until meatballs are cooked through,<br> about 10 minutes. </a></li>
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