<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookgle's reviews</title>

<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
#list {
  font-family: 'Poppins', sans-serif;
  border-collapse: collapse;
  width: 60%;
  margin: auto;
  font-weight: 300;
}

#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  vertical-align: middle;
  text-align: center;
}

#list sc{
	width: 50px;
}

#list tr:nth-child(even){background-color: #f2f2f2;}

#list tr:hover {background-color: #ddd;}

#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #7BA6B4;
  color: white;
}

.products{
	width:100%;
	position: relative;
    display: inline-block;
    text-align: center;
    font-size: 20px;   
    min-height: 81vh;
    align-content: center;
}
.presentation{
    display: flex;
    width: 100%;
    min-height: 83vh;
    align-items: center;
}
#comment{
	padding: 5px 10px;
  	width: 20%;
  	background-color: #7BA6B4;
	border-style: none;
	cursor: pointer;
	font-size: 18px;
	color: white;
}

</style>

</head>

<body>

<%@ include file="common/header_css.jsp" %>

	<section class="presentation">

	<div class="products">	
	<br>
	<h2 align="center">True Reviews</h2>
	<br>
		<table id="list">
		<tr>
			<th width="10%">User ID</th>
			<th width="70%">Review</th>
			<th width="40%">Posted Date</th>

		</tr>
		
		<c:forEach var="data" items="${Boardlist}">
		<tr>
			<td>${data.userid}</td>
			<td>${data.content}</td>
			<td>${data.wdate}</td>
		</tr>
		</c:forEach>
		</table>
		<br><br>

		<form action="boardmain2.jsp" method="post">
			<input id="comment" type="submit" value="Click to write a Review!"> 
			<input type="hidden" name="userid" value="${login}">
		</form>


	</div>

	</section>
		
<%@ include file="common/footer_css.jsp" %>
</body>
</html>