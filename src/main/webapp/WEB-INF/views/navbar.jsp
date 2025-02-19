 <nav class="container-fluid">
        <div class="row">
            <div class="logo col-sm-2">
                <h3><img src="/image/student-logo.jpg" width="50" style="border-radius:50%; margin:10%;" /></h3>
            </div>

            <div class="nav-menu col-sm-10">
                <div class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <div class="col-sm-6">
                            <form class="form-inline my-2 my-lg-0" action="/student/jsp/get-list">
                                <input class="form-control mr-sm-2" type="search" name="search" style="width:300px"
                                 placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                            </form>
                        </div>
                        </div class="col-sm-6" >
                            <div class="nav-item text-right">
                                    <a class="nav-link d-inline text-secondary" href="/log-out/user"><span><i
                                                class="fa-solid fa-right-from-bracket"></i></span> Logout</a>
                                                <span>
                                                              <c:out value="${sessionScope.email}" default="Not Logged In"/>  </span>
                                </div>
                        </div>
                </nav>
            </div>

        </div>
    </nav>