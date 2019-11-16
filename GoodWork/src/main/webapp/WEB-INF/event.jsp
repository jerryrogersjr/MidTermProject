<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/css/bootstrap.css"
	rel="stylesheet">
<title>Event</title>
</head>
<body>
	<br>
	<c:choose>
		<c:when test="${not empty event }">

			<h3>
				<strong>Event</strong>
			</h3>

			<table class="table">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Event Title</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">${event.id}</th>
						<td>${event.eventName}</td>

					</tr>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<h4 align="center">Event Not Found</h4>
		</c:otherwise>
	</c:choose>
	<br>

	<!-- js files for bootstap -->
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars.bower/jquery/3.3.1/dist/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/popper.js/1.15.0/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>