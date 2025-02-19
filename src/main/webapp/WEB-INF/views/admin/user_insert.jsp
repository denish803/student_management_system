<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link rel="stylesheet" href="<c:url value='/css/aside.css' />" />

    <title>Student insert</title>
</head>

<body>

<jsp:include page="../navbar.jsp"/>

<section class="section-1 container-fluid">
    <div class="row">

        <jsp:include page="../aside.jsp"/>

        <main class="col-sm-10">

            <div style="color:red;"> ${msg} </div>


            <form:form action="/user/jsp/insert" method="post">

                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" required name="username" id="username"
                           placeholder="Enter Username" />
                </div>
                <div class="form-group">
                    <label  for="fName">First Name</label>
                    <input type="text" class="form-control" required name="fName" id="fName"
                           placeholder="Enter First Name">
                </div>
                <div class="form-group">
                    <label for="lName">Last Name</label>
                    <input type="text" class="form-control" required name="lName" id="lName"
                           placeholder="Enter Last Name">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" required name="email" id="exampleInputEmail1"
                           aria-describedby="emailHelp"
                           placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                        else.</small>
                </div>
                <div class="form-group  ">
                    <label for="password1">Password</label>
                    <input type="password" class="form-control" name="password" required id="password1"
                           placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="password2">Confirm Password</label>
                    <input type="password" class="form-control" name="password2" required id="password2"
                           placeholder="Confirm Password">
                </div>
                <div class="form-group">
                    <label for="bod">Date Of Birthday : </label>
                    <input type="date" class="form-control col-sm-2" name="bod" id="bod">
                </div>
                <div class="input-field row">
                    <label for="department" class="col-sm-4">Last Name : </label>
                    <select name="department" id="department">
                        <option value="">-- select department --</option>
                        <option value="bca">BCA</option>
                        <option value="bba">BBA</option>
                        <option value="b.com">B.com</option>
                    </select>
                </div>

                <div class="input-field row">
                    <label for="status" class="col-sm-4">Status : </label>
                    <select name="status" id="status">
                        <option value="">-- select department --</option>
                        <c:if test="${sessionScope.role == 1}" >
                            <option value="approval">approval</option>
                        </c:if>
                        <option value="initiate" selected >initiate</option>
                    </select>
                </div>
                
                <div class="input-field row">
                    <label for="fees" class="col-sm-4">Fees : </label>
                    <select name="fees" id="fees">
                        <option value="">-- select fees --</option>
                        <option value="16500">BCA 16,500</option>
                        <option value="15500">BBA 15,500</option>
                        <option value="6000">B.com 6,000</option>
                    </select>
                </div>

                <div class="row">
                    <button type="submit" class="btn btn-primary col-sm-3 m-1 btn-sm text-light">Submit</button>
                    <a href="/student/jsp/get-list"
                       class="btn btn-primary col-sm-3 m-1 btn-sm text-light">Back</a>
                </div>
            </form:form>
        </main>
    </div>
</section>

<jsp:include page="../footer.jsp"/>

<script src="/js/autoLogOut.js"></script>

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