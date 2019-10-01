<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="">
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round|Patua+One&display=swap"
	rel="stylesheet">

<%
request.setCharacterEncoding("UTF-8"); 
String userid = request.getParameter("userid");
%>

<script type="text/javascript">
	function f1() {
		return confirm("정말 삭제할거니?")
	}
</script>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

	<%@ include file="common/header_css.jsp"%>

	<section id="output">

		<h3>My Cart</h3>
			
		<form action="deleteProduct.do">
			
			<table id="customers">
				<tr>
					<th>pname</th>
					<th>category</th>
					<th>price</th>
					<th>img</th>
					<th><input type="submit" id="" value="삭제" onclick="return f1()"></th>
				</tr>
				<c:forEach var="data" items="${productlist}">
				<tr>
					<td>${data.pname}</td>
					<td>${data.category}</td>
					<td>${data.price}</td>
					<td><img src="${data.img}" alt="!"></td>
					<td><input type="checkbox" name="pid" value="${data.pid}"></td>
				</tr>
				</c:forEach>
			</table>
		
			<input type="hidden" name="userid" value="${login}">
			
		</form>

	</section>

</body>
</html>