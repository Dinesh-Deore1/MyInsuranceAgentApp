<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Agent App - Agent Registration</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

        .navbar-brand,
        .navbar-text {
            color: #ffffff;
            padding-left: 20px; /* Added padding to the left of the brand */
        }

        .navbar-dark .navbar-toggler-icon {
            background-color: #ffffff;
        }

        .container {
            margin-top: 80px; /* Adjusted margin to accommodate fixed navbar */
            margin-bottom: 50px; /* Added margin at the bottom */
        }

        .register-form {
            background-color: #ffffff;
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
        <a class="navbar-brand" href="#">Insurance Agent App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin">Admin</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="agent">Agent</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="policyHolder">Policy Holder</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Agent Registration Form -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="register-form">
                    <h2 class="text-center mb-4">Agent Registration</h2>
                    <form action="agentRegister" method="post">
                        <div class="form-group">
                            <label for="inputName">Name</label>
                            <input type="text" class="form-control" id="inputName" placeholder="Enter your name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="inputDOB">Date of Birth</label>
                            <input type="date" class="form-control" id="inputDOB" name="dob">
                        </div>
                        <div class="form-group">
                            <label for="inputContact">Contact</label>
                            <input type="text" class="form-control" id="inputContact"
                                placeholder="Enter your contact number" name="contact">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Address</label>
                            <textarea class="form-control" id="inputAddress" rows="2"
                                placeholder="Enter your address" name="address"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail">Email</label>
                            <input type="email" class="form-control" id="inputEmail" placeholder="Enter your email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input type="password" class="form-control" id="inputPassword"
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
