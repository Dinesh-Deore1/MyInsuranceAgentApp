<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insurance Agent App - Add Policy</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
body {
	background-color: #f4f4f4;
	font-family: 'Arial', sans-serif;
	margin: 0; /* Remove default margin */
	padding: 0; /* Remove default padding */
	overflow-x: hidden; /* Hide horizontal scrollbar */
}

.navbar {
	background-color: #17a2b8; /* Blue-green shade */
	padding: 15px 0;
	position: fixed;
	width: 100%;
	top: 0; /* Stick to the top */
	z-index: 1000; /* Ensure navbar stays on top */
}

.navbar-brand, .navbar-text {
	color: #ffffff;
	padding-left: 20px; /* Added padding to the left of the brand */
}

.navbar-dark .navbar-toggler-icon {
	background-color: #ffffff;
}

.container {
	margin-top: 50px; /* Adjusted margin to accommodate fixed navbar */
	margin-bottom: 50px; /* Added margin at the bottom */
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

.active {
	background-color: #117a8b;
}

.footer {
	background-color: #17a2b8; /* Matched with the navbar color */
	color: #ffffff;
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
	<nav class="navbar navbar-expand-lg navbar-dark">
		<a class="navbar-brand" href="openAgentDashboard">Insurance Agent
			App</a>
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
		<a href="PolicyHolderRegister">Add Policy Holder</a> <a
			href="viewAllPolicyHolders">View Policy Holders</a> 
			<a href="updatePolicyHolder">Update Policy Holder</a>
			<a class="active" href="addPolicy">Add Policy</a>
			<a href="viewAllPolicy">View Policy</a> 
			<a href="viewNearByPolicy">View	nearBy expiry Policies</a>
			<a href="viewExpiredPolicy">View Expired policies Policy</a>
			<a href="updateDueDate">Update due date of Policy</a>
	</div>

	
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="register-form">
					<h2 class="text-center mb-4">Add Policy</h2>
					<form action="addPolicy" method="post">
						<div class="form-group">
							<label for="policyHolderName">Policy Holder Name:</label> <input
								type="text" class="form-control" id="policyHolderName"
								placeholder="Enter policy holder name" name="policyHolderName"
								required>
						</div>
						<div class="form-group">
							<label for="dob">Date of Birth:</label> <input type="date"
								class="form-control" id="dob" name="policyHolderDob" required>
						</div>
						<div class="form-group">
							<label for="contact">PolicyHolder Contact:</label> <input
								type="text" class="form-control" id="contact"
								placeholder="Enter policy holder contact number"
								name="policyHolderContact" required>
						</div>
						<div class="form-group">
							<label for="contact">Contact:</label> <input type="text"
								class="form-control" id="contact"
								placeholder="Enter your contact number" name="agentContact"
								required>
						</div>
						<div class="form-group">
							<label for="address">Address:</label> <input type="text"
								class="form-control" id="address"
								placeholder="Enter policy holder Address"
								name="policyHoldercAddress" required>
						</div>
						<div class="form-group">
							<label for="email">Email:</label> <input type="email"
								class="form-control" id="email"
								placeholder="Enter policy holder email"
								name="policyHoldercEmail" required>
						</div>
						<div class="form-group">
							<label for="policyTitle">Policy Title:</label> <select
								class="form-control" id="policyTitle" name="policyTitle"
								required>
								<option value="life Insurance">Life Insurance</option>
								<option value="Health Insurance">Health Insurance</option>
								<option value="Motor Insurance">Motor Insurance</option>
								<option value="Home Insurance">Home Insurance</option>
								<option value="Travel Insurance">Travel Insurance</option>
							</select>
						</div>
						<div class="form-group">
							<label for="policyDetails">Policy Details:</label>
							<textarea class="form-control" id="policyDetails" rows="4"
								name="policyDetails" required></textarea>
						</div>
						<div class="form-group">
							<label for="dueDate">Due Date:</label> <input type="date"
								class="form-control" id="dueDate" name="dueDate" required>
						</div>
						<button type="submit" class="btn btn-primary register-btn">Submit</button>
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
