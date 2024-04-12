<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <!-- Latest compiled and minified CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
        />
        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <!-- <link rel="stylesheet" href="/css/demo.css" /> -->
    </head>
    <body>
        <div class="container mt-5">
            <div
                class="d-flex flex-row justify-content-between mb-5 align-items-center"
            >
                <h3>Table Users</h3>
                <a href="/admin/user/create">
                    <button type="button" class="btn btn-primary btn-lg">
                        Create
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
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${usersList}">
                        <tr class="align-middle">
                            <th scope="row">${user.id}</th>
                            <td>${user.email}</td>
                            <td>${user.fullName}</td>
                            <td>
                                <div
                                    class="d-flex flex-row justify-content-start gap-3"
                                >
                                    <a href="/admin/user/${user.id}"
                                        ><button
                                            type="button"
                                            class="btn btn-success"
                                        >
                                            View
                                        </button></a
                                    >

                                    <a href="/admin/user/delete/${user.id}">
                                        <button
                                            type="button"
                                            class="btn btn-danger"
                                        >
                                            Delete
                                        </button>
                                    </a>
                                    <a href="/admin/user/edit/${user.id}">
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
    </body>
</html>
