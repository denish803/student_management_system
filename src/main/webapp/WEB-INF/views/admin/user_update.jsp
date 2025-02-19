<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
             integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link rel="stylesheet" href="<c:url value='/css/aside.min.css' />" />

    <title>user Update</title>
</head>

<body class="text-secondary">

<jsp:include page="../navbar.jsp"/>

<section class="section-1 container-fluid">
    <div class="row">

        <jsp:include page="../aside.jsp"/>

        <main  class="col-sm-9">

                <div style="color:red;"> ${msg} </div>

                <form:form action="/user/jsp/update" method="post">

                    <div class="form-group">
                        <input type="hidden" class="col-sm-8" value="${userData.userId}" name="userId">
                    </div>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" name="username" value="${userData.username}"
                               id="username" placeholder="Enter Username">
                    </div>
                    <div class="form-group">
                        <label for="fName">First Name</label>
                        <input type="text" class="form-control" name="fName" value="${userData.getFName()}" id="fName"
                               placeholder="Enter First Name">
                    </div>
                    <div class="form-group">
                        <label for="lName">Last Name</label>
                        <input type="text" class="form-control" name="lName" value="${userData.getLName()}" id="lName"
                               placeholder="Enter Last Name">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" name="email" value="${userData.email}"
                               id="exampleInputEmail1" aria-describedby="emailHelp"
                               placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                            else.</small>
                    </div>

                    <div class="input-field row">
                                <label for="role" class="col-sm-4">Role : </label>
                                <select name="role" id="role">
                                    <option value="">-- select fees --</option>
                                    <option value="1" <c:if test="${userData.role == '1'}">selected</c:if>>Admin</option>
                                    <option value="2" <c:if test="${userData.role == '2'}">selected</c:if>>Teacher</option>
                                    <option value="3" <c:if test="${userData.role == '3'}">selected</c:if> >Student</option>
                                </select>
                            </div>

                    <div class="form-group">
                        <label for="department">Department : </label>
                        <select value="${userData.department}" name="department" id="department">
                            <option value="bca" <c:if test="${userData.department == 'bca'}">selected</c:if> >BCA</option>
                            <option value="bba" <c:if test="${userData.department == 'bba'}">selected</c:if> >BBA</option>
                            <option value="b.com" <c:if test="${userData.department == 'b.com'}">selected</c:if> >B.com</option>
                        </select>

                    </div>
                    <div class="form-group">
                        <label for="fees">Fees : </label>
                        <select value="${userData.fees}" name="fees" id="fees">
                            <option <c:if test="${userData.fees == '16500'}">selected</c:if> value="16500">BCA 16,500</option>
                            <option <c:if test="${userData.fees == '15500'}">selected</c:if> value="15500">BBA 15,500</option>
                            <option <c:if test="${userData.fees == '6000'}">selected</c:if> value="6000">B.com 6,000</option>
                        </select>
                    </div>

                    <div class="input-field row">
                        <label for="status" class="col-sm-4">Status : </label>
                        <select name="status" id="status">
                            <option value="">-- select department --</option>
                            <c:if test="${sessionScope.role == 1}" >
                                <option value="approval" <c:if test="${userData.status=='approval'}">selected</c:if>>approval</option>
                            </c:if>
                            <option value="initiate"  <c:if test="${userData.status=='initiate'}">selected</c:if>>initiate</option>
                        </select>
                    </div>



                    <div class="form-group">
                        <label for="bod">Date Of Birthday : </label>
                        <input type="date" class="col-sm-2" value="${userData.bod}" name="bod" id="bod">
                    </div>
                    <div class="row">
                        <button class="btn btn-primary col-sm-3 m-1 btn-sm">Submit
                        </button>
                        <a href="/user/jsp/get-list"
                           class="btn btn-primary col-sm-3 m-1 btn-sm">Back</a>
                    </div>
                </form:form>
        </main>
    </div>
</section>

<jsp:include page="../footer.jsp"/>

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