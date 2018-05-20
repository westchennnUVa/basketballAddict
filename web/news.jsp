<%--
  Created by IntelliJ IDEA.
  User: Westchennn
  Date: 4/28/18
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>News</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="news.html"></jsp:include>--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>News</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap-grid.min.css">
    <!--CSS-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="main.css">

    <!--<script src="js/jquery-1.12.0.min.js"></script>-->
    <!--<script src="js/jquery.min.js"></script>-->

    <!--&lt;!&ndash;    customize js&ndash;&gt;-->
    <!--<script type="text/javascript" src="js/top.js"></script>-->

    <!--<script type="text/javascript" src="js/customize.js"></script>-->
    <!--<script type="text/javascript" src="js/login.js"></script>-->
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <!-- jQuery Library -->
    <script src="js/jquery-1.12.0.min.js"></script>
    <script src="js/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>


    <!-- customize js-->
    <script type="text/javascript" src="js/top.js"></script>

    <script type="text/javascript" src="js/customize.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
</head>

<body onload="init()">
<div class="container-fluid">

    <nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse">
        <img class="img-fluid" src="assets/basketball_header.png">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active myNavItem">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item myNavItem">
                    <a class="nav-link" href="news.jsp">News</a>
                </li>
                <li class="nav-item myNavItem">
                    <a class="nav-link" href="forum.jsp">Forum</a>
                </li>
                <li class="nav-item dropdown myNavItem">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Market
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="marketBuy.jsp">Buy</a>
                        <a class="dropdown-item" href="marketSell.jsp">Sell</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link" id="navUserName" href="#"></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="navSignInPhp" href="signup.php"><i class="fa fa-user-plus fa-1x"></i>Sign Up (Simple Vr.)</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="navSignIn" href="#" data-toggle="modal" data-target="#myModal1"><i class="fa fa-user fa-1x"></i>Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="navSignUp" href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-user-plus fa-1x"></i>Sign Up</a>
                </li>
            </ul>
        </div>
    </nav>



    <div class="sectionLight">
        <div class="row">
            <div class="col-sm-12">
                <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <h1 class="display-4">All the basketball News Here</h1>
                        <p class="lead">Check it out</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="newsSection">
        <div class="row">
            <div class="col-sm-12">
                <div class="newsTitle">
                    <h2><b>NBA Power Rankings: Rockets, Warriors continue battle for No. 1</b></h2>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-sm-12 col-md-6 newsVideo">
                <center><iframe width="640" height="360" src="http://www.espn.com/core/video/iframe?id=22581834&endcard=false" allowfullscreen frameborder="0"></iframe></center>
            </div>
            <div class="col-sm-12 col-md-6 newsContent">
                <div class="row">
                    <div class="col-sm-12 newsDetails">
                        <p>It's a debate that has been held most Mondays since the Golden State Warriors and Houston Rockets started separating themselves from the rest of the Power Rankings pack. <br>Best team or best season?<br><a href="http://www.espn.com/nba/story/_/page/powerrankings-20/nba-power-rankings-our-expert-panel-unveils-rankings-week-20" target="_blank">Learn More?</a></p>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>

    <div class="newsSection">
        <div class="row">
            <div class="col-sm-12">
                <div class="newsTitle">
                    <h2><b>
                        Patty Mills subjected to racial taunts during Sunday's game against Cavs</b></h2>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-sm-12 col-md-6 newsVideo">
                <center><iframe width="640" height="360" src="http://www.espn.com/core/video/iframe?id=22587541&endcard=false" allowfullscreen frameborder="0"></iframe></center>
            </div>
            <div class="col-sm-12 col-md-6 newsContent">
                <div class="row">
                    <div class="col-sm-12 newsDetails">
                        <p>Spurs guard Patty Mills was subjected to racially insensitive taunts Sunday during San Antonio's road game in Cleveland.
                            <a href="http://www.espn.com/nba/story/_/id/22586341/@#correx" target="_blank"><br>Learn More?</a></p>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>

</div>


<!--    Footer-->
<footer class="footer bg-inverse">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-lg-3">
                <img class="img-fluid footerImg" src="assets/uva_basketball_logo.jpg">
            </div>
            <div class="col-sm-12 col-lg-9 socialWrapper">
                <a href="https://facebook.com" target="_blank">
                    <i class="fa fa-facebook-square fa-3x" aria-hidden="true"></i></a>
                <a href="https://accounts.google.com/ServiceLogin" target="_blank">
                    <i class="fa fa-google-plus-square fa-3x" aria-hidden="true"></i></a>
                <a href="https://instagram.com" target="_blank">
                    <i class="fa fa-instagram fa-3x" aria-hidden="true"></i></a>
            </div>
        </div>
    </div>
</footer>



<!-- Modal -->
<!--    myModal1 signInModal-->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="contentLabel">Sign In</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <img class="img-fluid" src="assets/sign-in-logo.jpg">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="modalFormWrapper">
                                <form>
                                    <div class="form-group">
                                        <label for="formName">UserName</label>
                                        <input type="text" class="form-control" id="signInUserName" placeholder="UserName">
                                    </div>
                                    <div class="form-group">
                                        <label for="formPassword">Password</label>
                                        <input type="password" class="form-control" id="signInPassword" placeholder="Password">
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" id="showPwd" type="checkbox"> Show Password
                                        </label><a href="forgetPassword.jsp" class="signInModalForget">Forget Password?</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Sign In</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>



<!--    myModal2 signUpModal-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="contentLabel">Sign Up</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <img class="img-fluid" src="assets/sign-in-logo.jpg">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="modalFormWrapper">
                                <form>
                                    <div class="form-group mySignUpForm">
                                        <label for="formName">UserName</label>
                                        <input type="text" class="form-control" id="signUpUserName" placeholder="UserName Length<=8">
                                    </div>
                                    <div class="form-group mySignUpForm">
                                        <label for="formPassword">Password</label>
                                        <input type="password" class="form-control" id="signUpPassword" placeholder="Password">
                                    </div>
                                    <div class="form-group mySignUpForm">
                                        <label for="formPassword2">Confirm Password</label>
                                        <input type="password" class="form-control" id="signUpPassword2" placeholder="Password">
                                    </div>
                                    <div class="form-group mySignUpForm">
                                        <label for="formTelephone">Telephone</label>
                                        <input type="text" class="form-control" id="signUpTelephone" placeholder="Telephone">
                                    </div>
                                    <div class="form-check mySignUpForm">
                                        <label class="form-check-label">
                                            <input class="form-check-input" id="signUpCheckUsername" type="checkbox"> Check this username validation.
                                        </label>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="modalSignUpBtn" class="btn btn-primary" onclick="LG.checkSignUp();">Sign Up</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<!--&lt;!&ndash; jQuery first, then Tether, then Bootstrap JS. &ndash;&gt;-->
<!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>-->
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>-->
<!--<script src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>-->

<!--<script type="text/javascript" src="js/customize.js"></script>-->
<!--<script type="text/javascript" src="js/login.js"></script>-->

<!--&lt;!&ndash; jQuery Library &ndash;&gt;-->
<!--<script src="js/jquery-1.12.0.min.js"></script>-->
<!--<script src="js/jquery.min.js"></script>-->

<!--&lt;!&ndash;    customize js&ndash;&gt;-->
<!--<script type="text/javascript" src="js/top.js"></script>-->

<!--<script type="text/javascript" src="js/customize.js"></script>-->
<!--<script type="text/javascript" src="js/login.js"></script>-->

<script type="text/javascript">
    function init() {
        var userAuthority='<%=session.getAttribute("userAuthority")%>';
        var userName='<%=session.getAttribute("userName")%>';
        if(userAuthority === "user" || userAuthority === "administrator"){
            $('#navSignIn').hide();
            $('#navSignUp').hide();
            $('#navSignInPhp').hide();
//            $('#myModal1').modal('hide');
            $('#navUserName').text('Welcome! ' +  userName);
        }
    }
    window.onload = function() {
        init();

    }
</script>

</body>



</html>

