<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My cart</title>
<link rel=" shortcut icon" href="./img/favicon.ico">
<link rel="icon" href="./img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap" rel="stylesheet">

<%
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
%>

<script type="text/javascript">
	function f1() {
		return confirm("Do you want to delete the item?")
	}
</script>

<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
#customers {
  font-family: 'Poppins', sans-serif;
  border-collapse: collapse;
  width: 60%;
  margin: auto;
  font-weight: 300;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  vertical-align: middle;
  text-align: center;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #7BA6B4;
  color: white;
}

.tab{
	position: absolute;
	display: flex;
	float: left;
	left: 3%;
}
#f1{
	margin-top: 5%;
	
}
.products{
	width:100%;
	position: relative;
    display: inline-block;
    text-align: center;
    font-size: 20px;   
    min-height: 81vh;
}
.presentation{
    display: flex;
    width: 100%;
    min-height: 83vh;
    align-items: center;
}
#delbtn{
  	width: 80px;
	border-style: solid;
	cursor: pointer;
	font-size: 20px;
	background: transparent;
	color: white;
	font-weight: bold;
}
#timg{
	width: 125px;
	height: 125px;
}
</style>

</head>
<body>

<%@ include file="common/header_css.jsp" %>

	<section class="presentation">

	<div class="products">		
		
	<a class="tab">My Cart</a>
		
	<form action="deleteProduct.do" id="f1">
								
		<table id="customers">
			<tr>
				<th>Name</th>
				<th>Category</th>
				<th>Price</th>
				<th>Preview</th>
				<th><input type="submit" id="delbtn" value="Delete" onclick="return f1()"></th>
			</tr>
			<c:forEach var="data" items="${productlist}">
			<tr>
				<td>${data.pname}</td>
				<td>${data.category}</td>
				<td>${data.price}</td>
				<td><img src="${data.img}" alt="!" id="timg"></td>
				<td><input type="checkbox" name="pid" value="${data.pid}"></td>
			</tr>
			</c:forEach>
		</table>
		
		<input type="hidden" name="userid" value="${login}">
			
	</form>
	</div>

	</section>

		
<%@ include file="common/footer_css.jsp" %>

</body>
</html>