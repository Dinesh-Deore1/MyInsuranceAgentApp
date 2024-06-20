<%@page import="com.Dinesh.model.PolicyHolder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Agent App - policy Holder Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
        }

        .navbar,
        .sidebar,
        .footer {
            background-color: #17a2b8; /* Blue-green shade */
            color: #ffffff;
        }

        .navbar {
            padding: 15px 0;
        }

        .navbar-brand,
        .navbar-text,
        .sidebar a {
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
            width: 250px;
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
        }

        .sidebar a:first-child {
            padding-top: 30px; /* Add top padding for the first button */
        }

        .sidebar a:hover {
            background-color: #117a8b; /* Darker shade on hover */
        }

        .main-content {
            margin-left: 250px; /* Adjust the margin to leave space for the sidebar */
            padding: 20px;
        }

        .profile-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding: 20px;
            margin-bottom: 20px;
            max-width: 400px; /* Set max-width for a more compact profile */
            margin: 0 auto; /* Center the profile container */
        }

        .profile-container h2 {
            margin-bottom: 20px;
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
        <a class="navbar-brand" href="openPolicyHolderDashboard">Insurance Agent App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar">
        
        <a href="viewOwnPolicy">View own policy</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">

        <!-- Profile Container (Sample Data - Replace with Actual Data and Logic) -->
        <div class="profile-container">
        	<p>Policy Holder</p>
             <%
                PolicyHolder policyHolder = (PolicyHolder) request.getAttribute("policyHolder");

                if (policyHolder != null) {
            %>
                    <p><strong>ID:</strong> <%= policyHolder.getpId()%></p>
                    <p><strong>Name:</strong> <%= policyHolder.getName() %></p>
                    <p><strong>Date of Birth:</strong> <%= policyHolder.getDob() %></p>
                    <p><strong>Contact:</strong> <%= policyHolder.getContact() %></p>
                    <p><strong>Address:</strong> <%= policyHolder.getAddress() %></p>
                    <p><strong>Email:</strong> <%= policyHolder.getEmail() %></p>
                    <!-- Add more details as needed -->
            <%
                } else {
            %>
                    <p>Error in fetching profile.</p>
            <%
                }
            %>
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
