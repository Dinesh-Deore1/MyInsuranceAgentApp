<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Agent App - Policy Holder Login</title>
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

        .container {
            margin-top: 50px;
        }

        .login-form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        .login-btn {
            width: 100%;
            margin-top: 20px;
            background-color: #17a2b8; /* Blue-green shade */
            color: #ffffff;
            border: none;
        }

        .login-btn:hover {
            background-color: #117a8b; /* Darker shade on hover */
        }

        .register-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }

        .register-link a {
            color: #007bff; /* Blue link color */
            text-decoration: underline;
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
                <li class="nav-item">
                    <a class="nav-link" href="agent">Agent</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="policyHolder">Policy Holder</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Policy Holder Login Form -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="login-form">
                    <h2 class="text-center mb-4">Policy Holder Login</h2>
                    <form action="policyHolderDashboard" method="post">
                        <div class="form-group">
                            <label for="inputEmail">Email</label>
                            <input type="email" class="form-control" id="inputEmail" placeholder="Enter your email" name="email" required="required">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input type="password" class="form-control" id="inputPassword"
                                placeholder="Enter your password" name="password" required="required">
                        </div>
                        <button type="submit" class="btn btn-primary login-btn">Login</button>
                    </form>
                    <p class="register-link">Don't have an account? contact your insurance agent.</p>
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
