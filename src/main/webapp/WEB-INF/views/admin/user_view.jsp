<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link rel="stylesheet" type="text/css" href="<c:url value='/css/aside.min.css' />">

    <title>Student Data</title>

</head>

<body>

<jsp:include page="../navbar.jsp" />

<section class="section-1 container-fluid">

    <div class="row">
        <jsp:include page="../aside.jsp" />

        <c:if test="${msg != ' '}">
            <div class="col-sm-6 center">
                <div class="alert alert-danger alert-dismissible">
                   <a href="<c:url value='/user/jsp/get-list' />" class="close">&times; </a>
                   ${msg}
                </div>
            </div>
        </c:if>

        <main class="col-sm-10">
            <div class="h5">
                <a class="btn btn-outline-primary" style="text-decoration:none; color:#000" href="<c:url value='/user/jsp/insert' />">Add
                    Student</a>
            </div>

            <table class="table table-responsive">
                <thead>
                <tr>
                    <th scope="col">user Id</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Email</th>
                    <th scope="col">Username</th>
                    <th scope="col">department</th>
                    <th scope="col">fees</th>
                    <th scope="col">BOD</th>
                    <th scope="col">Role</th>
                    <th scope="col" colspan="2">Action</th>
                </tr>
                </thead>
                <tbody>

                    <c:forEach items="${userData}" var="user">

                        <c:choose>
                            <c:when test="${user.status == 'approval'}">

                                <tr>
                                    <td><c:out value="${user.userId}" /></td>
                                    <td><c:out value="${user.getFName()}" /></td>
                                    <td><c:out value="${user.getLName()}" /></td>
                                    <td><c:out value="${user.email}" /></td>
                                    <td><c:out value="${user.username}" /></td>
                                    <td><c:out value="${user.department}" /></td>
                                    <td><c:out value="${user.fees}" /></td>
                                    <td><c:out value="${user.bod}" /></td>
                                    <td><c:out value="${user.role}" /></td>

                                    <td class="col-sm-1"><a href="/user/jsp/delete/id=<c:out value='${user.userId}' />">
                                        <i class="fa-solid fa-delete-left"></i></a></td>
                                    <td class="col-sm-1"><a href="/user/jsp/update/id=<c:out value='${user.userId}' />">
                                        <i class="fa-solid fa-pen-nib"></i></a></td>

                                </tr>
                            </c:when>

                            <c:when test="${sessionScope.role == 1 && user.status != 'approval'}">

                                <tr>
                                    <td><c:out value="${user.userId}" /></td>
                                    <td><c:out value="${user.getFName()}" /></td>
                                    <td><c:out value="${user.getLName()}" /></td>
                                    <td><c:out value="${user.email}" /></td>
                                    <td><c:out value="${user.username}" /></td>
                                    <td><c:out value="${user.department}" /></td>
                                    <td><c:out value="${user.fees}" /></td>
                                    <td><c:out value="${user.bod}" /></td>
                                    <td><c:out value="${user.role}" /></td>

                                    <td class="col-sm-1"><a href="/user/jsp/delete/id=<c:out value='${user.userId}' />">
                                        <i class="fa-solid fa-delete-left"></i></a></td>
                                    <td class="col-sm-1"><a href="/user/jsp/update/id=<c:out value='${user.userId}' />">
                                        <i class="fa-solid fa-pen-nib"></i></a></td>

                                    <c:if test="${sessionScope.role == 1 && user.status == 'initiate'}">
                                        <form action="/user/jsp/update-status?id=${user.userId}" method="post">
                                            <td><button type="submit" class="btn btn-danger">Initiate</button></td>
                                        </form>
                                    </c:if>

                                </tr>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </tbody>
            </table>
        </main>
    </div>
</section>

<div><jsp:include page="../footer.jsp" /></div>

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