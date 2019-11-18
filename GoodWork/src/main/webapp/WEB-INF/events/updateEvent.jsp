<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/css/bootstrap.css"
	rel="stylesheet">
<title>Create Event</title>
<%@include file="/WEB-INF/nav.jsp"%>
</head>
<body>
	<br>
	<div>
		<h2 align="center">Create an Event</h2>
		<br>

		<div class=" container form-goup jumbotron">
			<form action="addEvent.do" method="POST" >
				<div>
					<label for="eventName">Event Title</label> <input type="text"
						class="form-control" name="eventName"
						placeholder="enter event Title" required="required" /><br>
					<!--  -->
					<label for="description">Event Description</label> <input
						type="text" class="form-control" name="description"
						placeholder="enter description of event" required="required" /><br>
					<!--  -->
					<label for="address">Event Address</label> <input type="text"
						class="form-control" name="address"
						placeholder="enter address of event" required="required" /><br>
					<!--  -->
					<label for="address2">Event Address 2</label> <input type="text"
						class="form-control" name="address2"
						placeholder="enter address 2 of event" required="required" /><br>
					<!--  -->
					<label for="city">Event City</label> <input type="text"
						class="form-control" name="city" placeholder="enter city of event"
						required="required" /><br>
					<!--  -->
					<label for="state">Event State</label> <input type="text"
						class="form-control" name="state"
						placeholder="enter state of event" required="required" /><br>
					<!--  -->
					<label for="zipCode">Event Zip Code</label> <input type="text"
						class="form-control" name="zipCode"
						placeholder="enter zip code of event" required="required" /><br>
					<!--  -->
					<label for="eventDate">Event Date</label> <input type="text"
						class="form-control" name="eventDate"
						placeholder="enter event date" required="required" /><br>
					<!--  -->
					<label for="eventDate">Start Time</label> <input type="text"
						class="form-control" name="startTime"
						placeholder="enter start time" required="required" /><br>
					<!--  -->
					<label for="endTime">End Time</label> <input type="text"
						class="form-control" name="endTime" placeholder="enter end time"
						required="required" /><br>
					<!--  -->
					<label for="peopleNeeded">Number of people needed</label> <input
						type="number" class="form-control" name="peopleNeeded"
						placeholder="enter number of people needed" required="required" /><br>
					<!--  -->
					<label for="pointOfContact">Point of Contact</label> <input
						type="text" class="form-control" name="pointOfContact"
						placeholder="enter point of contact" required="required" /><br>
					<!--  -->
					<label for="pocPhone">POC Phone Number</label> <input type="number"
						class="form-control" name="pocPhone"
						placeholder="enter phone number" required="required" /><br>
					<!--  -->
					<label for="pocEmail">POC Email</label> <input type="text"
						class="form-control" name="pocEmail" placeholder="enter email"
						required="required" /><br>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
		<!--  -->
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
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars.bower/jquery/3.3.1/dist/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/popper.js/1.15.0/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/js/bootstrap.js"></script>

</body>
</html>