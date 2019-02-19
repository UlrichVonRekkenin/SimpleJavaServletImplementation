<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Список известных прямоугольников</title>
	<link rel="stylesheet" href="styles/w3.css">
</head>

<body class="w3-light-grey">

	<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
		<h1>Нужно больше прямоугольников!!!</h1>
	</div>
	
	<div class="w3-container w3-center w3-margin-bottom w3-padding">
	<div class="w3-container w3-light-blue"><h2>Прямоугольники</h2></div>
		<%
			List<String> items = (List<String>)request.getAttribute("items");
		
			if (items != null && !items.isEmpty()){
				out.println("<ul class=\"w3-ul\">");
				for (String s: items) {
					out.println("<li class=\"w3-hover-sand\">" + s + "</li>");
				}
				out.println("</ul>");
			} else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
                    "   <h5>Пока нет прямоугольников...</h5>\n" +
                    "</div>");
		%>

	<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
	    <button class="w3-btn w3-round-large" onclick="location.href='/ProjectWithJSP'">Назад</button>
    </div>
	
</body>
</html>