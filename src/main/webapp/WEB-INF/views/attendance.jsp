<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link rel="stylesheet" type="text/css" href="/css/attendance.min.css">

    <link rel="stylesheet" type="text/css" href="/css/aside.min.css">

    <title>Student Attendance Tracker</title>
</head>
<body>

<jsp:include page="navbar.jsp" />

<section class="section-1 container-fluid">

    <div class="row">

        <jsp:include page="aside.jsp" />

        <main class="col-sm-10">

                <form id="attendance-form">
                    <label for="date">Date:</label>
                    <input type="date" id="date" name="date" required>

                    <table class="responsive">
                        <thead>
                            <tr>
                                <th>Roll Number</th>
                                <th>username</th>
                                 <th>f name</th>
                                 <th>l name</th>
                                <th>Present</th>
                                <th>Absent</th>
                                <th>Late</th>
                            </tr>
                        </thead>
                        <tbody id="students-container">
                            <!-- Example rows, adjust as needed -->
                            <tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr><tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Doe</td>
                                <td>John</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-1" value="Late"></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Smith</td>
                                <td>Jane</td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Present"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Absent"></td>
                                <td class="checkbox-group"><input type="radio" name="attendance-2" value="Late"></td>
                            </tr>
                            <!-- Add more students as needed -->
                        </tbody>
                    </table>

                    <button type="submit" class="btn btn-info mt-2">Submit</button>
                </form>
            </div>
    </div>
</section>

<div><jsp:include page="footer.jsp" /></div>


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
