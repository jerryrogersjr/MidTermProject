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
<title>Insert title here</title>
<%@include file="/WEB-INF/nav.jsp"%>
</head>
<body>

	<br>
	<div class=" container form-goup jumbotron">
		<c:choose>
			<c:when test="${not empty event}">

				<h3>
					<strong>Event</strong>
				</h3>
				<ul style="list-style: none">
					<li>Event Id: ${event.id}</li>
					<li>Event Name: ${event.eventName}</li>
					<li>Host: ${event.hostId}</li>
					<li>${event.location.address}</li>
					<li>${event.location.address2}</li>
					<li>${event.location.city}</li>
					<li>${event.location.state}</li>
					<li>${event.location.zipCode}</li>
					<li>Event Date: ${event.eventDate}</li>
					<li>Start Time: ${event.startTime}</li>
					<li>End Time: ${event.endTime}</li>
					<li>People Needed: ${event.peopleNeeded}</li>
					<li>Date Created: ${event.dateCreated}</li>
					<li>POC Phone: ${event.pocPhone}
					<li>POC Email: ${event.pocEmail }
					<li>Description: ${event.description }
					<li>${event.photoUrl}</li>
				</ul>
				<hr>
				<!-- <div></div> -->
				<!-- Modal Testing Begin -->
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-danger" data-toggle="modal"
					data-target="#deleteEvent">Delete Event</button>

				<!-- Modal -->
				<div class="modal fade" id="deleteEvent" tabindex="-1"
					role="dialog" aria-labelledby="deleteEventLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="deleteEventLabel">Delete
									Confirmation</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<strong>Are you sure that you'd like to delete the
									selected Event?</strong>
							</div>

							<div class="modal-footer">
								<form action="deleteEvent.do" method="POST">
									<input type="hidden" value="${event.id}" name="id">
									<button class="btn btn-danger" type="submit">Delete
										Event</button>
								</form>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<!-- <button type="button" class="btn btn-primary">Save
									changes</button>  -->
							</div>
						</div>
					</div>
				</div>

				<!-- Modal Testing End -->
			</c:when>
			<c:otherwise>
				<h4 align="center">Event Not Found</h4>
			</c:otherwise>
		</c:choose>
	</div>
	<hr>
	<footer class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<p>Copyright © FluffyCarnage. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer>
	
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars.bower/jquery/3.3.1/dist/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/popper.js/1.15.0/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>