<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap" rel="stylesheet">
<title>About Cookgle</title>

<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">

<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
#main{

    min-height: 67.6vh;
    align-items: center;
}
.img{

width: 500px;
height: 320px;
}
body{
    font-family: 'Poppins', sans-serif;
}

.context{
top:30px; 
height: 100px; 
width:70%;
font-size: 16px;
}

.title{
margin: 18px 0 5px 45px;
font-size: 25px;
font-weight: bold;
}
.conclusion{
	background-color: #E87F4D;
	width: 100%;
	height: 20%;
	position: absolute;
	display: flex;
}
small {
    font-family: 'Poppins', sans-serif;
    align-content: center;
    color: white;
    margin: auto;
    font-size: 17px;
    color: white;
    text-decoration: none;
}

.small_img {
	width: 20px;
	height: 20px;
	cursor: pointer;
}
#sm1 {
	font-size: 30px;
    font-weight: 300;
    font-family: 'Patua One', cursive;
    align-content: center;
    color: white;
    margin-left: 50px;
    margin-top: 40px;
    height : 70px;
}
#subsite {
	font-size: 17px;
    font-weight: 300;
    font-family: 'Patua One', cursive;
    align-content: center;
    color: white;
    margin-top: auto;
    height : 70px;
}
.picture{
	margin-top: 15px;
}
</style>
</head>
<body>
	<section id="banner">

		<%@ include file="common/header_css.jsp"%>

		<section id="main">
		<div class = "title">
		About...</div>
			<center><div class="context">
				<p>Cookgle is a website designed to provide a well-being meal plan for those living their busy lives. 
				Try cooking yourself with the recipes from the "Recipe" tab 
				where we have selected the easiest, healthiest, and the most delicious meals just for you! 
				You can also purchase necessary products for cooking from our "Products" tab when you sign up to our website!</p>
			</div></center>
			<div class ="picture">
			<center><img class= "img" src = "./img/salad.jpg" alt="그림업다"></center>
			</div>
		</section>

		<footer id="footer">
    	<div class="conclusion">
             <br>
    		<small id = "sm1"> Cookgle | En &nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		
    		<small class="contact">Follow us around the web – &nbsp;
    		<img class = "small_img" src="./img/sns/facebook.png" onclick="location.href='https://www.facebook.com/'"> &nbsp;
    		<img class = "small_img" src="./img/sns/instagram.png" onclick="location.href='https://www.instagram.com/'"> &nbsp;
    		<img class = "small_img" src="./img/sns/youtube.png" onclick="location.href='https://www.youtube.com/'"> &nbsp;
    		<img class = "small_img" src="./img/sns/twitter.png" onclick="location.href='https://twitter.com/'"> <br>
            <small id= "subsite"> &copy; 2019 Group 5 of Bitcamp </small>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    		<small class="contact"> Phone : 02-3453-5404 &nbsp; / &nbsp; website : http://gn.bitcamp.co.kr </small>
    		</small>
            
            <br>
    		<small></small>
			<small></small>
    		</small>
    	</div>
    </footer>
	</section>
</body>
</html>