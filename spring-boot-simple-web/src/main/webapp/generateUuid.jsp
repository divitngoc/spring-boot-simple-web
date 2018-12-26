<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Spring Boot Web JSP</h1>
		<h2 id="uuid-container">${uuid}</h2>
	</div>

	<div class="btn-generate">
		<button type="button" onclick="generateUuid()">Generate new
			UUID</button>
	</div>
</body>
<script type="text/javascript">
	function generateUuid() {
		$.ajax({
			type : "GET",
			url : '/generateUuid',
			success : function(result) {
				document.getElementById("uuid-container").innerHTML = result;
			},
			error : function(result) {
				console.log("Error fetching UUID");
			}
		});
	}
</script>
