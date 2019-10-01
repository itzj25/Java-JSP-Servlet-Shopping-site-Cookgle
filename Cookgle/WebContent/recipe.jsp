<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style_products2.css">

</head>
<body>
<section id="banner">
    
    <%@ include file="common/header_css.jsp" %>

    <main>
        <section class="presentation">
            <div class="products">
            
            <div class="cookware">
            	<a href="Quick_Easy.jsp"><img class="img" src="./img/recipe/pasta.JPG"></a>
            	<p>Quick&Easy</p>            
            </div>
            
            <div class="pantry">
                <a href="healthy.jsp"><img class="img" src="./img/recipe/healthy.jpg"></a>
            	<p>Healthy</p>    
            </div>
            
            <div class="package">
            	<a href="dessert.jsp"><img class="img" src="./img/recipe/dessert.jpg"></a>
            	<p>Dessert</p>
            </div>
               
            </div>
           
        </section>

    </main>

	<%@ include file="common/footer_css.jsp" %>

    </section>


</body>
</html>