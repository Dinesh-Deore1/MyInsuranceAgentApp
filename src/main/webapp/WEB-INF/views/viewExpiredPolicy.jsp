<%@page import="java.util.List"%>
<%@page import="com.Dinesh.model.PolicyTable"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insurance Agent App - View Expired Policy</title>
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
		<a class="navbar-brand" href="#">Insurance Agent App</a>
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
        <a href="PolicyHolderRegister">Add Policy Holder</a>
        <a href="viewAllPolicyHolders">View Policy Holders</a>
        <a href="updatePolicyHolder">Update Policy Holder</a>
        <a href="addPolicy">Add Policy</a>
        <a href="viewAllPolicy">View Policy</a>
        <a href="viewNearByPolicy">View nearBy expiry Policies</a>
        <a class="active" href="viewExpiredPolicy">View Expired policies Policy</a>
        <a href="updateDueDate">Update due date of Policy</a>
    </div>

	
	
		<!-- policy Table (Sample Data - Replace with Actual Data and Logic) -->
    <div class="container" style="margin-left: 300px;">
        <div class="agent-table">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>PolicyHolder Name</th>
                        <th>PolicyHolder Date of Birth</th>
                        <th>PolicyHolder Contact</th>
                        <th>Agent Contact</th>
                        <th>PolicyHolder Address</th>
                        <th>PolicyHolder Email</th>
                        <th>Policy Title</th>
                        <th>Policy Details</th>
                        <th>Due Date</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        List<PolicyTable> policyList = (List<PolicyTable>) request.getAttribute("policyList");

                        for (PolicyTable p : policyList) {
                        	// Parse the Due Date string to a Date object (assuming Due Date is in a date format)
                            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                            Date dueDate = dateFormat.parse(p.getDueDate());

                            // Compare Due Date with the current date
                            if (dueDate.before(new Date())) {
                    %>
                        <tr>
                            <th scope="row"><%=p.getPolicyId()%></th>
                            <td><%=p.getPolicyHolderName()%></td>
                            <td><%=p.getPolicyHolderDob()%></td>
                            <td><%=p.getPolicyHolderContact()%></td>
                            <td><%=p.getAgentContact()%></td>
                            <td><%=p.getPolicyHoldercAddress()%></td>
                            <td><%=p.getPolicyHoldercEmail()%></td>
                            <td><%=p.getPolicyTitle()%></td>
                            <td><%=p.getPolicyDetails()%></td>
                            <td style="color: red;font-weight: bold;"><%=p.getDueDate()%></td>
                        </tr>
                    <% 
                            }
                        }
                    %>
                    <!-- Add more rows as needed -->
                </tbody>
            </table>
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
