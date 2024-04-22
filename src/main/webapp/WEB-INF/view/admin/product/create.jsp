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
        <title>Create Product - Hỏi Dân IT</title>
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
                        <h1 class="mt-4">Creat Product</h1>
                        <hr />
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-md-6 col-12 mx-auto">
                                    <form:form
                                        modelAttribute="newProduct"
                                        action="/admin/product/create"
                                        method="post"
                                        class="row"
                                        enctype="multipart/form-data"
                                    >
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="name" class="form-label"
                                                >Name</label
                                            >
                                            <form:input
                                                type="text"
                                                class="form-control"
                                                path="name"
                                            />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="price"
                                                class="form-label"
                                                >Price</label
                                            >
                                            <form:input
                                                type="text"
                                                class="form-control"
                                                path="price"
                                            />
                                        </div>

                                        <div class="mb-3 col-12">
                                            <label
                                                for="detailDesc"
                                                class="form-label"
                                                >Detail description</label
                                            >
                                            <form:input
                                                type="text"
                                                class="form-control"
                                                path="detailDesc"
                                            />
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="shortDesc"
                                                class="form-label"
                                                >Short description</label
                                            >
                                            <form:input
                                                type="text"
                                                class="form-control"
                                                path="shortDesc"
                                            />
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="quantity"
                                                class="form-label"
                                                >Quantity</label
                                            >
                                            <form:input
                                                type="text"
                                                class="form-control"
                                                path="quantity"
                                            />
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="factory"
                                                class="form-label"
                                                >Factory</label
                                            >
                                            <form:select
                                                class="form-select"
                                                id="role"
                                                path="target"
                                            >
                                                <form:option value="admin">
                                                    Gaming
                                                </form:option>
                                                <form:option value="user">
                                                    Office
                                                </form:option>
                                                <form:option value="user">
                                                    Design Graphics </form:option
                                                ><form:option value="user">
                                                    Business
                                                </form:option>
                                            </form:select>
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="factory"
                                                class="form-label"
                                                >Factory</label
                                            >
                                            <form:select
                                                class="form-select"
                                                id="role"
                                                path="factory"
                                            >
                                                <form:option value="admin">
                                                    Apple
                                                </form:option>
                                                <form:option value="user">
                                                    Dell
                                                </form:option>
                                                <form:option value="user">
                                                    LG </form:option
                                                ><form:option value="user">
                                                    Asus
                                                </form:option>
                                                <form:option value="user">
                                                    HP
                                                </form:option>
                                            </form:select>
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="avatarFile"
                                                class="form-label"
                                                >Image</label
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
                const avatarFile = $('#avatarFile');
                avatarFile.change(function (e) {
                    const imgURL = URL.createObjectURL(e.target.files[0]);
                    $('#avatarPreview').attr('src', imgURL);
                    $('#avatarPreview').css({ display: 'block' });
                });
            });
        </script>
    </body>
</html>