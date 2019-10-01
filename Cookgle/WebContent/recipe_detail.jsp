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
					<td width="500" height="500" id="text"><img id="pic" src=".\img\밀푀유나베.jpg" width="500" height="500"></td>

					<td width="600">
						<div class="intro-text">
							<h1>A Balanced Diet</h1>
						</div>

						<div class="intro-text">
							<p>is what we aim to provide our customers.</p>
						</div> <br> <br>
						<div class="intro-text">
							<p id="aaa">Ingredients</p>
						</div>
						
						<div id = "dontent_bt">
						 <h1> Ingredients of the Dish 
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
						<a onclick="showID('content1');" class="plus">+</a></h1>
						</div>
						<div id = "content1" style="display:none;">
						<ul>
							<li><a>Tomato</a></li>
							<li><a>Apple</a></li>
							<li><a>Orange</a></li>
						</ul>
						</div>
						
						<div id = "dontent_bt">
						 <h1> Order of Cooking
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a onclick="showID('content2');" class="plus">+</a></h1>
						</div>
						<div id = "content2" style="display:none;">
						<ul>
							<li><a> 물 끓이기</a></li>
							<li><a> 오이 썰기</a></li>
							<li><a> 먹기 </a></li>
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