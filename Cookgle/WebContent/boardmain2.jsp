<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cookgle Review</title>

<link rel="stylesheet" href="css/style_review_write.css">

</head>
<body>
<section id="banner">

<%@include file="common/header_css.jsp" %>

<section class="presentation">
	
	<div class="review-write">
	
	<form class="review-form" action="insertBoard.do" method="post">
	
		<div class="container">
<%
	SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");
	Date nowTime = new Date();
%>
	<h2 align="center">Write a Review for Cookgle!</h2><br>
	
	<label for="content"><b>Review</b></label><br>
	<input type="text" placeholder="Enter Review" id="content" name="content" required="required" class="form-control">
	
	
	<input type="submit" value="Comment" class="pull-right" />
	
	<input type="hidden" name="userid" value="${login}"> 
	<input type="hidden" name="wdate" value="<%=sf.format(nowTime)%>">
	
		</div>
	</form>
	</div>
</section>
</section>


<%@ include file="common/footer_css.jsp" %>

</body>
</html>


