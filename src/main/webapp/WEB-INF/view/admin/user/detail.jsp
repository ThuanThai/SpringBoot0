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
                <div class="col-8">
                    <h3>User Detail</h3>
                    <div>UserID: ${user.id}</div>
                    <hr />
                    <div class="mt-5">
                        <ul class="list-group">
                            <li
                                class="list-group-item active"
                                aria-current="true"
                            >
                                User Detail
                            </li>
                            <li class="list-group-item">${user.fullName}</li>
                            <li class="list-group-item">${user.email}</li>
                            <li class="list-group-item">${user.phone}</li>
                            <li class="list-group-item">${user.address}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
