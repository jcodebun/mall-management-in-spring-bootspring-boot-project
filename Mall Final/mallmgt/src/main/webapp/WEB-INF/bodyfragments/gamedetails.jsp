<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

<h1>${game.gameName}</h1>
<img alt="" src="${pageContext.request.contextPath}/getGameImage/${game.id}" class="card-img-top" height="300px">
<div style="padding: 20px">
<h5 class="text-dark mb-0">Price: ${game.pricePerHour} </h5>
</div>
<div style="padding: 20px">
<h5 class="text-dark mb-0">Instructions: ${game.instructions}</h5>
</div>
</div>
</body>
</html>