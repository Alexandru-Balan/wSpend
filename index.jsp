<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>wSpend</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg"
        crossorigin="anonymous">
    <link rel="icon" href="Front_End/res/icons/logo.png">
    <link rel="stylesheet" href="Front_End/styles/master.css">
    <link rel="stylesheet" href="Front_End/styles/index.css">
</head>

<body>

    <header>
        <!--This is the navbar on the top of the screen-->
        <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand" href="index.jsp">wSpend</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#content" aria-controls="content">
                <span>
                    <i class="fas fa-bars"></i>
                </span>
            </button>

            <div class="collapse navbar-collapse" id="content">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Front_End/sources/team.jsp">Team</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Front_End/sources/pricing.jsp">Pricing</a>
                    </li>
                    <li class="nav-item" id="login-item">
                        <a href="#" class="nav-link" id="login" data-toggle="modal" data-target="#loginModal">LogIn</a>
                    </li>
                    <li class="nav-item" id="signup-item">
                        <a href="#" class="nav-link" id="signup" data-toggle="modal" data-target="#signupModal">SignUp</a>
                    </li>
                </ul>
            </div>
        </nav>

        <!--Modals launched from the login/signup links in the navbar are placed here.-->
        <!--Login modal launched from login link-->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalTitle1">Welcome back!</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                            <span aria-hidden="true">&times;</span>
                    </div>
                    <form action="login" id="logForm" method="post">
                        <div class="modal-body">
                            <div class="row mr-auto ml-auto">
                                <input type="email" name="email" class="form-control" placeholder="Email" required>
                            </div>
                            <div class="row mr-auto ml-auto">
                                <input type="password" name="password" class="form-control" placeholder="Password" required>
                            </div>
                            <p class="text-center">Or
                                <br>Log in with</p>
                            <div class="row socialMedia ml-auto mr-auto">
                                <div class="col">
                                    <button class="btn btn-primary fab fa-facebook-square"></button>
                                </div>
                                <div class="col">
                                    <button class="btn btn-danger fab fa-google"></button>
                                </div>
                                <div class="col">
                                    <button class="btn btn-info fab fa-twitter"></button>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <a class="mr-auto" href="#signup" data-toggle="modal" data-target="#signupModal" data-dismiss="modal">Sign Up</a>
                            <a id="forgot" href="#">Forgot your password?</a>
                            <button type="submit" class="btn btn-primary">Log In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--Signup modal launched from signup screen-->
        <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalTitle">Sign up for free</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                            <span aria-hidden="true">&times;</span>
                    </div>
                    <form action="signup" id="signForm" method="post">
                        <div class="modal-body">

                            <div class="row mr-auto ml-auto sign-row">
                                <div class="col">
                                    <input id="firstName" name="firstName" type="text" class="form-control" placeholder="First Name" required>
                                </div>
                                <div class="col">
                                    <input id="lastName" name="lastName" type="text" class="form-control" placeholder="Last Name" required>
                                </div>
                            </div>
                            <div class="row sign-row2 ml-auto mr-auto">
                                <input id="email" name="email" type="email" class="form-control" placeholder="Email" required>
                            </div>
                            <div class="row sign-row2 ml-auto mr-auto">
                                <input id="password" name="password" type="password" class="form-control" placeholder="Password" required>
                            </div>
                        </div>
                        <p class="text-center">Or
                            <br>Sign up with</p>
                        <div class="row mr-auto ml-auto socialMedia">
                            <div class="col">
                                <button class="btn btn-primary fab fa-facebook-square"></button>
                            </div>
                            <div class="col">
                                <button class="btn btn-danger fab fa-google"></button>
                            </div>
                            <div class="col">
                                <button class="btn btn-info fab fa-twitter"></button>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <a href="#login" class="mr-auto" data-toggle="modal" data-target="#loginModal" data-dismiss="modal">Already a member? Log In instead.</a>
                            <button type="submit" class="btn btn-primary">Sign Up</button>
                        </div>
                    </form>
                    <script>
                        function processSignData(){
                            var form = document.getElementById("signForm");
                            form.submit();
                        }
                    </script>
                </div>
            </div>
        </div>
    </header>

    <main>
        <!--This is the carousel section which provides the user with a nice intro about our webapp.-->
        <div id="carouselBanner" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselBanner" class="active" data-slide-to="0"></li>
                <li data-target="#carouselBanner" class="" data-slide-to="1"></li>
                <li data-target="#carouselBanner" class="" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Front_End/res/photos/index/budgeting.jpg">
                    <div class="carousel-caption d-md-block">
                        <h4>Technology at its work</h4>
                        <p class="font-weight-bold">Let technology aid you in managing your personal finances so you have time for what really matters
                            to you</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Front_End/res/photos/index/ion.jpg">
                    <div class="carousel-caption d-md-block">
                        <h4>Meet I.O.N.</h4>
                        <p class="font-weight-bold">Our powerful assistant ready to give you the best tips in managing your money.
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Front_End/res/photos/index/hasslefree.jpg">
                    <div class="carousel-caption d-md-block">
                        <h4>Don't stress</h4>
                        <p class="font-weight-bold">Never again worry about not having enough money to make your dreams come true.
                        </p>
                    </div>
                </div>
            </div>
            <a href="#carouselBanner" class="carousel-control-prev" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a href="#carouselBanner" class="carousel-control-next" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </a>
        </div>

        <div class="card-deck">
            <div class="card">
                <img class="card-img-top" src="Front_End/res/photos/index/glance.jpg">
                <div class="card-body">
                    <h5 class="card-title">At a glance statistics</h5>
                    <p class="card-text">We provide you with all the data you need at a glance so you can check your current status faster and
                        takecare of what really matters to you.</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="Front_End/res/photos/index/family.jpg">
                <div class="card-body">
                    <h5 class="card-title">More time & money</h5>
                    <p class="card-text">We know that money is a very powerful force nowadays, but there are things in life not even money can
                        buy. We make sure you have the money! You make sure to live your life at the fullest!</p>
                    <p class="card-text">
                        <small class="text-muted">with our new smart tips on how to save money</small>
                    </p>
                </div>
            </div>
        </div>
        <div class="card-deck">
            <div class="card">
                <img class="card-img-top" src="Front_End/res/photos/index/boss.jpg">
                <div class="card-body">
                    <h5 class="card-title">We work for you</h5>
                    <p class="card-text">Think of us like your personal financial advisor. You are the real boss!</p>
                    <p class="card-text">
                        <small class="text-muted">Sign up and let the power of wSpend tackle down your financial problems</small>
                    </p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="Front_End/res/photos/index/bank.jpg">
                <div class="card-body">
                    <h5 class="card-title">Bank integration</h5>
                    <p class="card-text">Would you like to never track a single spending again, but you still want our smart tips and statistics?
                        Let your bank do the work for you.
                    </p>
                    <p class="card-text">
                        <small class="text-muted">Comming soon</small>
                    </p>
                </div>
            </div>
        </div>
    </main>

    <!--Scripts part-->



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>

    <!--<script>
        (function () {
            ('#logForm').on('submit', function (e) {
                e.preventDefault();
                post('C:\Users\balan\Documents\GitHub\wSpend\post.txt',
                    ('#logForm').serialize(),
                );
            });
        });
    </script>-->

</body>

</html>