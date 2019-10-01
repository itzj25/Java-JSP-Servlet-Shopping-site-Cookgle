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
    <%@ include file="common/header_css.jsp" %>

        <section class="presentation">
            <div class="products">
            
            <div class="cookware">
            	<a href="cookware2.jsp"><img class="img" src="./img/kitch.jpg"></a>
            	<p>Cookwares</p>            
            </div>
            
            <div class="pantry">
                <a href="pantry2.jsp"><img class="img" src="./img/spices.jpg"></a>
            	<p>Pantry Staples</p>    
            </div>
            
            <div class="package">
            	<a href="#"><img class="img" src="./img/cookbooks.jpg"></a>
            	<p>Recipe Packages</p>
            </div>
               
            </div>
           
        </section>

<%@ include file="common/footer_css.jsp" %>


</body>
</html>