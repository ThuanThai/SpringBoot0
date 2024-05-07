<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Laptopshop - register</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
            rel="stylesheet"
        />

        <!-- Icon Font Stylesheet -->
        <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
            rel="stylesheet"
        />

        <!-- Libraries Stylesheet -->
        <link
            href="/client/lib/lightbox/css/lightbox.min.css"
            rel="stylesheet"
        />
        <link
            href="/client/lib/owlcarousel/assets/owl.carousel.min.css"
            rel="stylesheet"
        />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="/client/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="/client/css/style.css" rel="stylesheet" />
    </head>

    <body class="bg-dark">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div
                                    class="card shadow-lg border-0 rounded-lg mt-5"
                                >
                                    <div class="card-header">
                                        <h3
                                            class="text-center font-weight-light my-4"
                                        >
                                            Create Account
                                        </h3>
                                    </div>
                                    <div class="card-body">
                                        <form:form
                                            modelAttribute="registerUser"
                                            method="post"
                                            action="/register"
                                        >
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div
                                                        class="form-floating mb-3 mb-md-0"
                                                    >
                                                        <form:input
                                                            path="firstName"
                                                            class="form-control"
                                                            id="inputFirstName"
                                                            type="text"
                                                            placeholder="Enter your first name"
                                                        />
                                                        <label
                                                            for="inputFirstName"
                                                            >First name</label
                                                        >
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <form:input
                                                            path="lastName"
                                                            class="form-control"
                                                            id="inputLastName"
                                                            type="text"
                                                            placeholder="Enter your last name"
                                                        />
                                                        <label
                                                            for="inputLastName"
                                                            >Last name</label
                                                        >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <c:set var="emailError">
                                                    <form:errors
                                                        path="email"
                                                        cssClass="invalid-feedback"
                                                    />
                                                </c:set>
                                                <form:input
                                                    type="email"
                                                    class="form-control ${not empty emailError? 'is-invalid':''}"
                                                    path="email"
                                                />
                                                ${emailError}
                                                <label for="inputEmail"
                                                    >Email address</label
                                                >
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div
                                                        class="form-floating mb-3 mb-md-0"
                                                    >
                                                        <form:input
                                                            path="password"
                                                            class="form-control"
                                                            id="inputPassword"
                                                            type="password"
                                                            placeholder="Create a password"
                                                        />
                                                        <label
                                                            for="inputPassword"
                                                            >Password</label
                                                        >
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div
                                                        class="form-floating mb-3 mb-md-0"
                                                    >
                                                        <c:set
                                                            var="confirmPasswordError"
                                                        >
                                                            <form:errors
                                                                path="confirmPassword"
                                                                cssClass="invalid-feedback"
                                                            />
                                                        </c:set>

                                                        <form:input
                                                            class="form-control ${not empty confirmPasswordError? 'is-invalid':''}"
                                                            path="confirmPassword"
                                                            id="inputPasswordConfirm"
                                                            type="password"
                                                            placeholder="Confirm password"
                                                        />
                                                        <label
                                                            for="inputPasswordConfirm"
                                                            >Confirm
                                                            Password</label
                                                        >
                                                        ${confirmPasswordError}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                    <button
                                                        type="submit"
                                                        class="btn btn-dark btn-block"
                                                        href="login.html"
                                                    >
                                                        Create Account
                                                    </button>
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small">
                                            <a href="login.html"
                                                >Have an account? Go to login</a
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"
        ></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
