<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link rel="stylesheet" type="text/css" href="/css/aside.min.css">

    <link rel="stylesheet" type="text/css" href="/css/note.css">

    <title>Student Attendance Tracker</title>

    <style>

    </style>

</head>
<body>

<jsp:include page="navbar.jsp" />

<section class="section-1 container-fluid">

    <div class="row">

        <jsp:include page="aside.jsp" />

        <main class="col-sm-10" id="main">

            <form id="note-form">
                <label for="student-name">Your Name:</label>
                <input type="text" id="student-name" name="student-name" required>

                <label for="note-title">Title:</label>
                <input type="text" id="note-title" name="note-title" required>

                <label for="note-content">Note:</label>
                <textarea id="note-content" name="note-content" rows="5" required></textarea>

                <button type="submit" class="btn btn-info">Post Note</button>
            </form>

        </main>

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
