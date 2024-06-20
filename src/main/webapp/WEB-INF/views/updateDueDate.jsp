<%@page import="java.util.List"%>
<%@page import="com.Dinesh.model.PolicyTable"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insurance Agent App - Update Due Date</title>
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
}

.form-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding: 20px;
            margin-bottom: 20px;
            max-width: 500px;
            margin: 0 auto;
            margin-top: 80px;
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container input {
            width: 100%;
        }

        .form-container button {
            width: 100%;
            background-color: #17a2b8;
            color: #ffffff;
            margin-top: 10px;
        }

.sidebar {
	height: 100%;
	position: fixed;
	padding-top: 20px;
	width: 18%;
	background-color: #1c1c1c; /* Dark background color for the sidebar */
}

.sidebar a {
	padding: 15px;
	text-decoration: none;
	font-size: 18px;
	color: #ffffff;
	display: block;
	margin-bottom: 10px;
	padding-left: 20px; /* Add left padding for better alignment */
	transition: background-color 0.3s;
	/* Add smooth transition for background color */
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
			<a href="updatePolicyHolder">Update Policy Holder</a> <a href="addPolicy">Add Policy</a> <a
			href="viewAllPolicy">View Policy</a> 
			<a href="viewNearByPolicy">View nearBy expiry Policies</a>
			<a href="viewExpiredPolicy">View Expired policies Policy</a>
			<a class="active" href="updateDueDate">Update due date of Policy</a>
	</div>


	    <!-- Form Container -->
    <div class="container">
        <div class="form-container">
            <form action="openUpdateDueDate" method="post">
                <div class="form-group">
                    <label for="policyId">Policy ID:</label>
                    <input type="text" class="form-control" id="policyId" name="policyId" required>
                </div>
                <div class="form-group">
                    <label for="newDueDate">New Due Date:</label>
                    <input type="date" class="form-control" id="newDueDate" name="newDueDate" required>
                </div>
                <button type="submit" class="btn btn-primary">Update Due Date</button>
            </form>
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
