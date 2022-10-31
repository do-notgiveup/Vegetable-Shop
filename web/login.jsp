<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="login-form-02/css/owl.carousel.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="login-form-02/css/bootstrap.min.css">

        <!-- Style -->
        <link rel="stylesheet" href="login-form-02/css/style.css">

        <title>Login Page</title>
    </head>

    <body>
        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('images/bg_1login_1.jpg');"></div>
            <div class="contents order-2 order-md-1">

                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7">
                            <h3>Login to <strong>Vegetable Store</strong></h3>
                            <form action="MainController" method="post">
                                <div class="form-group first">
                                    <label for="userID">UserID</label>
                                    <input type="text" class="form-control" name="userID">
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password">
                                </div>

                                <div class="d-flex mb-5 align-items-center">
<!--                                    <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                                        <input type="checkbox" checked="checked"/>
                                        <div class="control__indicator"></div>
                                    </label>-->
                                    <span class="ml-auto"><a href="home.jsp" class="forgot-pass">Home</a></span>
                                </div>
                                <input type="submit" name="action" value="Login" class="btn btn-block btn-primary">
                            </form><br/>
                            ${ERROR}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>