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
        <title>Create User - Hỏi Dân IT</title>
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
                        <h1 class="mt-4">Creat User</h1>
                        <hr />
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-md-6 col-12 mx-auto">
                                    <form:form
                                        action="/admin/user/create"
                                        method="post"
                                        modelAttribute="newUser"
                                        class="row"
                                        enctype="multipart/form-data"
                                    >
                                        <div class="mb-3 col-12 col-md-6">
                                            <c:set var="emailError">
                                                <form:errors
                                                    path="email"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <label
                                                for="email"
                                                class="form-label"
                                                >Email address</label
                                            >
                                            <form:input
                                                type="email"
                                                class="form-control ${not empty emailError? 'is-invalid':''}"
                                                path="email"
                                            />
                                            ${emailError}
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <c:set var="passwordError">
                                                <form:errors
                                                    path="password"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <label
                                                for="exampleInputPassword1"
                                                class="form-label"
                                                >Password</label
                                            >
                                            <form:input
                                                type="password"
                                                class="form-control ${not empty passwordError? 'is-invalid':''}"
                                                path="password"
                                            />
                                            ${passwordError}
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <c:set var="phoneError">
                                                <form:errors
                                                    path="phone"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <label
                                                for="phone"
                                                class="form-label"
                                                >Phone Number</label
                                            >
                                            <form:input
                                                type="phone"
                                                class="form-control ${not empty phoneError? 'is-invalid':''}"
                                                path="phone"
                                            />
                                            ${phoneError}
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="fullName"
                                                class="form-label"
                                                >Full Name</label
                                            >
                                            <c:set var="fullNameError">
                                                <form:errors
                                                    path="fullName"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <form:input
                                                type="fullName"
                                                class="form-control ${not empty fullNameError? 'is-invalid':''}"
                                                path="fullName"
                                            />
                                            ${fullNameError}
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label
                                                for="address"
                                                class="form-label"
                                                >Address</label
                                            >
                                            <c:set var="addressError">
                                                <form:errors
                                                    path="address"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <form:input
                                                type="address"
                                                class="form-control ${not empty addressError? 'is-invalid':''}"
                                                path="address"
                                            />
                                            ${addressError}
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="role" class="form-label"
                                                >Role</label
                                            >
                                            <form:select
                                                class="form-select"
                                                id="role"
                                                path="role.name"
                                            >
                                                <form:option value="admin">
                                                    Admin
                                                </form:option>
                                                <form:option value="user">
                                                    User
                                                </form:option>
                                            </form:select>
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="avatarFile"
                                                class="form-label"
                                                >Avatar</label
                                            >
                                            <input
                                                name="hoidanitFile"
                                                class="form-control"
                                                type="file"
                                                id="avatarFile"
                                                accept="image/png, image/gif, image/jpeg"
                                            />
                                        </div>
                                        <div class="col-12 mb-3">
                                            <img
                                                id="avatarPreview"
                                                style="
                                                    max-height: 250px;
                                                    display: none;
                                                "
                                                alt="avatar-preview"
                                            />
                                        </div>
                                        <button
                                            type="submit"
                                            class="btn btn-primary mt-3"
                                        >
                                            Create
                                        </button>
                                    </form:form>
                                </div>
                            </div>
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
        <script>
            $(document).ready(() => {
                const avatarFile = $("#avatarFile");
                avatarFile.change(function (e) {
                    const imgURL = URL.createObjectURL(e.target.files[0]);
                    $("#avatarPreview").attr("src", imgURL);
                    $("#avatarPreview").css({ display: "block" });
                });
            });
        </script>
    </body>
</html>
