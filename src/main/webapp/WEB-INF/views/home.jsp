<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Agent App - Home</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

        .navbar-brand,
        .navbar-text {
            color: #ffffff;
            padding-left: 20px; /* Added padding to the left of the brand */
        }

        .navbar-dark .navbar-toggler-icon {
            background-color: #ffffff;
        }

        .navbar-nav {
            margin-left: auto;
        }

        .navbar-nav li {
            margin-right: 10px;
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

        .container {
            margin-top: 50px;
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Insurance Agent App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin">Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="agent">Agent</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="policyHolder">Policy Holder</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Home Content -->
    <div class="container">
        <h1 class="text-center">Welcome to the Insurance Agent App</h1>
        <p class="text-center">Explore our services and manage your insurance needs.</p>
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
