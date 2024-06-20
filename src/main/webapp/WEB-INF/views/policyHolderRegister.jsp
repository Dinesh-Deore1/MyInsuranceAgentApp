<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insurance Agent App - Policy Holder Registration</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
body {
	background-color: #f4f4f4;
	font-family: 'Arial', sans-serif;
}

.navbar, .sidebar, .footer {
	background-color: #17a2b8; /* Blue-green shade */
	color: #ffffff;
}

.navbar {
	padding: 15px 0;
}

.navbar-brand, .navbar-text, .sidebar a {
	color: #ffffff;
}

.navbar-dark .navbar-toggler-icon {
	background-color: #ffffff;
}

.container {
	margin-top: 50px;
	margin-bottom: 50px;
}

 .sidebar {
            height: 100%;
            position: fixed;
            padding-top: 20px;
            width: 18%;
            background-color: #1c1c1c; /* Dark background color for the sidebar */
            margin-top: 20px;
        }

        .sidebar a {
            padding: 15px;
            text-decoration: none;
            font-size: 18px;
            color: #ffffff;
            display: block;
            margin-bottom: 10px;
            padding-left: 20px; /* Add left padding for better alignment */
            transition: background-color 0.3s; /* Add smooth transition for background color */
        }

        .sidebar a:first-child {
            padding-top: 30px; /* Add top padding for the first button */
        }

        .sidebar a:hover {
            background-color: #117a8b; /* Darker shade on hover */
        }
		.active{
			background-color: #117a8b;
		}

.container {
	margin-top: 50px;
	margin-left: 21%;
}

.agent-table {
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

.agent-table table {
	width: 100%;
	border-collapse: collapse;
}

.agent-table th, .agent-table td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

.agent-table th {
	background-color: #17a2b8;
	color: #ffffff;
}

.register-form {
	background-color: #ffffff;
	margin-top: 40px;
	margin-bottom: 30px;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.register-btn {
	width: 100%;
	margin-top: 20px;
	background-color: #17a2b8; /* Blue-green shade */
	color: #ffffff;
	border: none;
}

.register-btn:hover {
	background-color: #117a8b; /* Darker shade on hover */
}

.footer {
	text-align: center;
	padding: 10px 0;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>

</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark  fixed-top">
		<a class="navbar-brand" href="openAgentDashboard">Insurance Agent App</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li>
			</ul>
		</div>
	</nav>

	<!-- Sidebar -->
    <div class="sidebar">
        <a class="active" href="PolicyHolderRegister">Add Policy Holder</a>
        <a href="viewAllPolicyHolders">View Policy Holders</a>
        <a href="updatePolicyHolder">Update Policy Holder</a>
        <a href="addPolicy">Add Policy</a>
        <a href="viewAllPolicy">View Policy</a>
        <a href="viewNearByPolicy">View nearBy expiry Policies</a>
        <a href="viewExpiredPolicy">View Expired policies Policy</a>
        <a href="updateDueDate">Update due date of Policy</a>
    </div>

	<!-- Agent Registration Form -->
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="register-form">
					<h2 class="text-center mb-4">Policy Holder Registration</h2>
					<form action="policyHolderRegister" method="post">
						<div class="form-group">
							<label for="inputName">Name</label> <input type="text"
								class="form-control" id="inputName"
								placeholder="Enter your name" name="name">
						</div>
						<div class="form-group">
							<label for="inputDOB">Date of Birth</label> <input type="date"
								class="form-control" id="inputDOB" name="dob">
						</div>
						<div class="form-group">
							<label for="inputContact">Contact</label> <input type="text"
								class="form-control" id="inputContact"
								placeholder="Enter your contact number" name="contact">
						</div>
						<div class="form-group">
							<label for="inputAddress">Address</label>
							<textarea class="form-control" id="inputAddress" rows="2"
								placeholder="Enter your address" name="address"></textarea>
						</div>
						<div class="form-group">
							<label for="inputEmail">Email</label> <input type="email"
								class="form-control" id="inputEmail"
								placeholder="Enter your email" name="email">
						</div>
						<div class="form-group">
							<label for="inputPassword">Password</label> <input
								type="password" class="form-control" id="inputPassword"
								placeholder="Enter your password" name="password">
						</div>
						<button type="submit" class="btn btn-primary register-btn">Register</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer">
		<p>&copy; 2024 Insurance Agent App. All rights reserved.</p>
	</div>

	<!-- Bootstrap JS and Popper.js (required for Bootstrap) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
