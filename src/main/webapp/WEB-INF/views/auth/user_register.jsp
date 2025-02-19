<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .register-container {
            max-width: 700px;
            width: 100%;
            height: 100vh;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .register-container h2 {
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-custom:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        form {
            height: 85vh;
            overflow-x: scroll;
        }
    </style>
</head>

<body>

<div class="register-container">
    <h2 class="text-center">Register</h2>
    <form action="/register/user" method="post">
        <div class="text-danger">
            <p>${msg}</p>
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" name="username" id="username" placeholder="Enter Username" required>
        </div>
        <div class="form-group">
            <label for="fName">First Name</label>
            <input type="text" class="form-control" name="fName" id="fName" placeholder="Enter First Name" required>
        </div>
        <div class="form-group">
            <label for="lName">Last Name</label>
            <input type="text" class="form-control" name="lName" id="lName" placeholder="Enter Last Name" required>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Enter email" required>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="password1">Password</label>
            <input type="password" class="form-control" name="password" id="password1" placeholder="Password" required>
        </div>

        <div class="form-group">
            <label for="password2">Confirm Password</label>
            <input type="password" class="form-control" name="password2" id="password2" placeholder="Confirm Password" required>
        </div>

        <div class="input-field row">
            <label for="role" class="col-sm-4">Role : </label>
            <select name="role" id="role">
                <option value="">-- select fees --</option>
                <option value="1">Admin</option>
                <option value="2">Teacher</option>
                <option value="3">Student</option>
            </select>
        </div>

        <div class="form-group row mt-2">
            <label for="bod" class="col-sm-4">Date Of Birthday : </label>
            <input type="date" class="form-control col-sm-2" name="bod" id="bod">
        </div>

        <p>I have account..<a href="/log-in/user"> click hear</a></p>
        <button type="submit" class="btn btn-custom btn-block">Submit</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

</body>

</html>
