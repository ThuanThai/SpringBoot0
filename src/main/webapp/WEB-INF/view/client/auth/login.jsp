<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Laptopshop - login</title>
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

        <!-- Customized Bootstrap Stylesheet -->
        <link href="/client/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="/client/css/style.css" rel="stylesheet" />
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div
                                    class="card shadow-lg border-0 rounded-lg mt-5"
                                >
                                    <div class="card-header">
                                        <h3
                                            class="text-center font-weight-light my-4"
                                        >
                                            Login
                                        </h3>
                                    </div>
                                    <div class="card-body">
                                        <form method="post" action="/login">
                                            <c:if test="${param.error != null}">
                                                <div
                                                    class="my-2"
                                                    style="color: red"
                                                >
                                                    Invalid email or password.
                                                </div>
                                            </c:if>

                                            <c:if
                                                test="${param.logout != null}"
                                            >
                                                <div
                                                    class="my-2"
                                                    style="color: darkgrey"
                                                >
                                                    Sign out successfully
                                                </div>
                                            </c:if>

                                            <div class="form-floating mb-3">
                                                <input
                                                    class="form-control"
                                                    type="email"
                                                    placeholder="name@example.com"
                                                    name="username"
                                                />
                                                <label>Email address</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input
                                                    class="form-control"
                                                    type="password"
                                                    placeholder="Password"
                                                    name="password"
                                                />
                                                <label>Password</label>
                                            </div>
                                            <div>
                                                <input
                                                    type="hidden"
                                                    name="${_csrf.parameterName}"
                                                    value="${_csrf.token}"
                                                />
                                            </div>

                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                    <button
                                                        class="btn btn-primary btn-block"
                                                    >
                                                        Login
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small">
                                            <a href="/register"
                                                >Need an account? Sign up!</a
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
        <script src="/js/scripts.js"></script>
    </body>
</html>
