<%@page import="java.util.List"%>
<%@page import="com.Dinesh.model.Agent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Agent App - Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
        }

        .navbar {
            background-color: #17a2b8; /* Blue-green shade */
            padding: 15px 0;
        }

        .navbar-brand, .navbar-text {
            color: #ffffff;
            padding-left: 20px; /* Added padding to the left of the brand */
        }

        .navbar-dark .navbar-toggler-icon {
            background-color: #ffffff;
        }

        .container {
            margin-top: 50px;
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
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .agent-table th {
            background-color: #17a2b8;
            color: #ffffff;
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
            transition: background-color 0.3s; /* Add smooth transition for background color */
        }

        .sidebar a:first-child {
            padding-top: 30px; /* Add top padding for the first button */
        }

        .sidebar a:hover {
            background-color: #117a8b; /* Darker shade on hover */
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
                <li class="nav-item"><a class="nav-link" href="home">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar">
        <a href="viewAll">All Agents</a>
        <a href="allPendingAgent">Pending Agents</a>
        <a href="allApprovedAgent">Approved Agents</a>
        <a href="allDisapprovedAgent">Disapproved Agents</a>
    </div>

    <!-- Agent Table (Sample Data - Replace with Actual Data and Logic) -->
    <div class="container" style="margin-left: 300px;">
        <div class="agent-table">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Date of Birth</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        List<Agent> agent = (List<Agent>) request.getAttribute("agentList");

                        for (Agent a : agent) {
                    %>
                        <tr>
                            <th scope="row"><%=a.getAgentId()%></th>
                            <td><%=a.getName()%></td>
                            <td><%=a.getDob()%></td>
                            <td><%=a.getContact()%></td>
                            <td><%=a.getAddress()%></td>
                            <td><%=a.getEmail()%></td>
                            <td><%=a.getStatus()%></td>
                            <td>
                              <a href="deleteAgent/<%= a.getAgentId()%>?action=delete" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                    <%
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
