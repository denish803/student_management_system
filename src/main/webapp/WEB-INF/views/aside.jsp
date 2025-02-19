 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <aside class="col-sm-2 ">
                <ul class="list-group list-group-flush">
                    <li><a href="/user/jsp/get-list"><span><i
                                    class="fa-solid fa-list-check"></i></span> Student Manage</a>
                    </li>

                    <c:if test="${sessionScope.role != 3}">
                    <li><a href="/attendance"><span><i class="fa-solid fa-clipboard-user"></i></span>Attendance</a>
                    </li>
                    </c:if>

                    <li><a href="/note"><span><i class="fa-solid fa-notes-medical"></i></span>Note</a>
                    </li>

                    <li>
                        <a role="button" class=" dropdown-toggle" id="auth"
                            data-toggle="dropdown"><span><i class="fa-solid fa-shield-halved"></i></span> Auth</a>
                        <ul style="background-color: rgb(152, 136, 136);" aria-labelledby="auth" class="dropdown-menu">

                            <li class="dropdown-list"><a href="/log-in/user"
                                    >Login</a></li>

                                <c:if test="${sessionScope.role == 1}">
                                    <li class="dropdown-list" id="register-link">
                                        <a href="/register/user">Register</a>
                                    </li>
                                </c:if>

                        </ul>
                    </li>

                    <li><a href="/log-out/user" ><span><i
                                    class="fa-solid fa-right-from-bracket"></i></span> Logout</a></li>
                </ul>
            </aside>