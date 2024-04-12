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
                <div class="col-12">
                    <h3>Delete User</h3>
                    <div>UserID: ${user.id}</div>
                    <hr />
                    <form action="/admin/user/delete/${user.id}" method="post">
                        <div class="alert alert-danger" role="alert">
                            Are you sure to delete this user
                        </div>
                        <button type="submit" class="btn btn-outline-danger">
                            Confirm
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
