<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <div class="row">
                <div class="col-md-6 col-12 mx-auto">
                    <form:form
                        action="/admin/user/create"
                        method="post"
                        modelAttribute="newUser"
                    >
                        <h3>Creat a user</h3>
                        <hr />
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label"
                                >Email address</label
                            >
                            <form:input
                                type="email"
                                class="form-control"
                                aria-describedby="emailHelp"
                                path="email"
                            />
                        </div>
                        <div class="mb-3">
                            <label
                                for="exampleInputPassword1"
                                class="form-label"
                                >Password</label
                            >
                            <form:input
                                type="password"
                                class="form-control"
                                path="password"
                            />
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label"
                                >Phone Number</label
                            >
                            <form:input
                                type="text"
                                class="form-control"
                                path="phone"
                            />
                        </div>
                        <div class="mb-3">
                            <label for="fullName" class="form-label"
                                >Full Name</label
                            >
                            <form:input
                                type="text"
                                class="form-control"
                                path="fullName"
                            />
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label"
                                >Address</label
                            >
                            <form:input
                                type="text"
                                class="form-control"
                                path="address"
                            />
                        </div>
                        <button type="submit" class="btn btn-primary">
                            Submit
                        </button>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
