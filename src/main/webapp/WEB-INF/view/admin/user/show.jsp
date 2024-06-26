<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
pageEncoding="UTF-8" %>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />
        <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
        <meta name="author" content="Hỏi Dân IT" />
        <title>User - Hỏi Dân IT</title>
        <link
            href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
            rel="stylesheet"
        />
        <link rel="stylesheet" href="/css/style.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
        />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script
            src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
            crossorigin="anonymous"
        ></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="../layout/header.jsp" />
        <div id="layoutSidenav">
            <jsp:include page="../layout/sidebar.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manage User</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">
                                <a href="/admin/dashboard">Dashboard</a> / User
                            </li>
                        </ol>
                        <div class="mt-5">
                            <div
                                class="d-flex flex-row justify-content-between mb-5 align-items-center"
                            >
                                <h3>Table Users</h3>
                                <a href="/admin/user/create">
                                    <button
                                        type="button"
                                        class="btn btn-primary btn-lg"
                                    >
                                        Create User
                                    </button>
                                </a>
                            </div>
                            <table class="table table-hover table-bordered">
                                <caption>
                                    List of users
                                </caption>
                                <thead class="table-light">
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">FullName</th>
                                        <th scope="col">Role</th>

                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="user" items="${usersList}">
                                        <tr class="align-middle">
                                            <th scope="row">${user.id}</th>
                                            <td>${user.email}</td>
                                            <td>${user.fullName}</td>
                                            <td>${user.role.name}</td>
                                            <td>
                                                <div
                                                    class="d-flex flex-row justify-content-start gap-3"
                                                >
                                                    <a
                                                        href="/admin/user/${user.id}"
                                                        ><button
                                                            type="button"
                                                            class="btn btn-success"
                                                        >
                                                            View
                                                        </button></a
                                                    >

                                                    <a
                                                        href="/admin/user/delete/${user.id}"
                                                    >
                                                        <button
                                                            type="button"
                                                            class="btn btn-danger"
                                                        >
                                                            Delete
                                                        </button>
                                                    </a>
                                                    <a
                                                        href="/admin/user/edit/${user.id}"
                                                    >
                                                        <button
                                                            type="button"
                                                            class="btn btn-warning"
                                                        >
                                                            Edit
                                                        </button>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </main>
                <jsp:include page="../layout/footer.jsp" />
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"
        ></script>
        <script src="/js/scripts.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
            crossorigin="anonymous"
        ></script>
        <script src="/js/chart-area-demo.js"></script>
        <script src="/js/chart-bar-demo.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
            crossorigin="anonymous"
        ></script>
        <script src="/js/datatables-simple-demo.js"></script>
    </body>
</html>
