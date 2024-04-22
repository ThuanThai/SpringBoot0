<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page pageEncoding="UTF-8" %>

            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Product Detail - Hỏi Dân IT</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link rel="stylesheet" href="/css/style.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-12">
                                            <h2>Product Detail</h2>
                                            <div>ProductID: ${product.id}</div>
                                            <hr />
                                            <div class="mt-5">
                                                <img class="mb-4" src="/images/product/${product.image}"
                                                    id="avatarPreview" style="
                                                max-height: 250px;
                                                display: block;
                                                border-radius: 10px;
                                            " />
                                                <ul class="list-group col-8">
                                                    <li class="list-group-item active" aria-current="true">
                                                        product Detail
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.name}
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.price}
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.detailDesc}
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.shortDesc}
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.quantity}
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.sold}
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.factory}
                                                    </li>
                                                    </li>
                                                    <li class="list-group-item">
                                                        ${product.target}
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/chart-area-demo.js"></script>
                <script src="/js/chart-bar-demo.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/datatables-simple-demo.js"></script>
            </body>

            </html>