<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Параметры прямоугольника</title>
	<link rel="stylesheet" href="styles/w3.css">
</head>

<body class="w3-light-grey">

<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
	<h1>Новый прямоугольник</h1>
</div>

<div class="w3-container w3-padding">

	<%
		if (request.getAttribute("test") != null) {
			out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                    "   <h5>Прямоугольник '" + request.getAttribute("test") + "' добавлен!</h5>\n" +
                    "</div>");
		}
	%>

	<div class="w3-card-4">
		<div class="w3-container w3-center w3-green">
			Добавь прямоугольник здесь!
		</div>
	
	<form method="post" class="w3-selection w3-light-grey w3-padding">
	    <p><label>Сторона 'a':
	        <input type="number" class="w3-input w3-animate-input w3-border w3-round-large" name="sideA" step="1" min="1" max="100"><br/>
	    </label>		
	    <label>Сторона 'b':
	        <input type="number" class="w3-input w3-animate-input w3-border w3-round-large" name="sideB" step="1" min="1" max="100"><br/>
	    </label></p>
		    <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Принять</button>
	</form>
	</div>

	<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
	    <button class="w3-btn w3-round-large" onclick="location.href='/ProjectWithJSP'">Назад</button>
    </div>
</div>

</body>
</html>