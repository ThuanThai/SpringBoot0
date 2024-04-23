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
        <title>Update Product - Hỏi Dân IT</title>
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
                        <h3 class="mt-4">Update Product</h3>
                        <hr />
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-md-6 col-12 mx-auto">
                                    <form:form
                                        modelAttribute="newProduct"
                                        action="/admin/product/edit"
                                        method="post"
                                        class="row"
                                        enctype="multipart/form-data"
                                    >
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="name" class="form-label"
                                                >Name</label
                                            >
                                            <c:set var="nameError">
                                                <form:errors
                                                    path="name"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <form:input
                                                type="name"
                                                class="form-control ${not empty nameError? 'is-invalid':''}"
                                                path="name"
                                                value="${newProduct.name}"
                                            />
                                            ${nameError}
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="price"
                                                class="form-label"
                                                >Price</label
                                            >
                                            <c:set var="priceError">
                                                <form:errors
                                                    path="price"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <form:input
                                                type="price"
                                                class="form-control ${not empty priceError? 'is-invalid':''}"
                                                path="price"
                                                value="${newProduct.price}"
                                            />
                                            ${priceError}
                                        </div>

                                        <div class="mb-3 col-12">
                                            <label
                                                for="detailDesc"
                                                class="form-label"
                                                >Detail description</label
                                            >
                                            <c:set var="detailDescError">
                                                <form:errors
                                                    path="detailDesc"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <form:textarea
                                                type="detailDesc"
                                                class="form-control ${not empty detailDescError? 'is-invalid':''}"
                                                path="detailDesc"
                                                value="${newProduct.detailDesc}"
                                            />
                                            ${detailDescError}
                                        </div>
                                        <div
                                            class="mb-3 col-12"
                                            style="display: none"
                                        >
                                            <label for="id" class="form-label"
                                                >Detail description</label
                                            >
                                            <form:input
                                                type="id"
                                                class="form-control ${not empty detailDescError? 'is-invalid':''}"
                                                path="id"
                                                value="${newProduct.id}"
                                            />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="shortDesc"
                                                class="form-label"
                                                >Short description</label
                                            >
                                            <c:set var="shortDescError">
                                                <form:errors
                                                    path="shortDesc"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <form:textarea
                                                type="shortDesc"
                                                class="form-control ${not empty shortDescError? 'is-invalid':''}"
                                                path="shortDesc"
                                                value="${newProduct.shortDesc}"
                                            />
                                            ${shortDescError}
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="quantity"
                                                class="form-label"
                                                >Quantity</label
                                            >
                                            <c:set var="quantityError">
                                                <form:errors
                                                    path="quantity"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <form:input
                                                type="quantity"
                                                class="form-control ${not empty quantityError? 'is-invalid':''}"
                                                path="quantity"
                                                value="${newProduct.quantity}"
                                            />
                                            ${quantityError}
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
                                                value="${newProduct.target}"
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
                                                id="factory"
                                                path="factory"
                                                value="${newProduct.factory}"
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
                                                src="/images/product/${newProduct.image}"
                                                id="avatarPreview"
                                                style="
                                                    max-height: 250px;
                                                    display: block;
                                                "
                                                alt="avatar-preview"
                                            />
                                        </div>
                                        <button
                                            type="submit"
                                            class="btn btn-warning mt-3"
                                        >
                                            Update
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
