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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="/">Home</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link disabled" href="#"
				tabindex="-1" aria-disabled="true">Disabled</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>

<!-- js files for bootstap -->
<script
	src="https://cdn.jsdelivr.net/webjars/org.webjars.bower/jquery/3.3.1/dist/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="https://cdn.jsdelivr.net/webjars/org.webjars/popper.js/1.15.0/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</html>