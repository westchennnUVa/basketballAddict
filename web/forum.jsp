<%--
  Created by IntelliJ IDEA.
  User: Westchennn
  Date: 4/28/18
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Forum</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="forum.html"></jsp:include>--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Basketball Addict</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap-grid.min.css">
    <!--CSS-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="main.css">
 

    <%--angular--%>
    <%--<script src="js/angular-1.6.9/angular.js"></script>--%>


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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js"></script>

</head>
<body  data-ng-app="myApp">
<%--onload="init()"--%>
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


    <div ng-controller= "myController">
        <%--<span name="Post" ng-model="Post" value='MochaRoll'></span>--%>
        <div>How are you feeling today: <input ng-model="feeling"><br/>

		I am <font color = red>{{feeling}}</font>
		</div>
        
        <table class="table table-borderless">
  			<thead>
    			<tr>
      				<th scope="col">Topic</th>
     			 	<th scope="col">Content</th>
      				<th scope="col">Post Time</th>
      				<th scope="col">Post By</th>
    			</tr>
  			</thead>
  			<tbody>
  			<div >
  			<tr ng-repeat = "x in tiezi">
      				<th scope="row">{{x.topic}}</th>
      				<td>{{x.Content}}</td>
      				<td>{{x.postTime}}</td>
      				<td>{{x.PostBy}}</td>
    		</tr>
  			</div>
  			</tbody>
		</table>
    </div>
        <!-- Error: {{error}} -->
    <%--<div class="Display clear-float">--%>
        <%--<div class="container">--%>
            <%--<div class="Displaytable" id="Display_table"></div>--%>
            <%--<div class="commentPlace" id="comment_place">--%>

            <%--</div>--%>
            <%--&lt;%&ndash;<table class="Displaytable" id="Display_table">&ndash;%&gt;--%>

            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
        <%--</div>--%>
    <%--</div>--%>




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
            <div class="col-sm-12 col-lg-9">
            <jsp:include page="time.jsp"/>         
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
                                        </label><a href="forgetPassword.html" class="signInModalForget">Forget Password?</a>
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


<script type="text/javascript">
    var app = angular.module('myApp',[]);
    app.controller('myController', function($scope, $http){
    	$scope.feeling = "awesome";
    	$scope.comments;
        var onError = function (data, status)
        {
            $scope.error = status;
        };
        $http.post('comment', { "operation" : 'getAllPost'}).success(
            function (response) {
                var comment;
                $http.post('comment', { "postID" : $scope.postID}).success(
                    function (response2) {
                        $scope.comments = response2;
                        comment = response2;
                        console.log("I can get the value for $scope.comment here");

                    }
                );
                $http.post('http://localhost:8080/realComment', { "postID" : $scope.postID}).error(
                    onError
                );
                $scope.tiezi = response;
                $scope.comments = comment;
                console.log($scope.comments);
                console.log("The value for $scope.comment here is undefined");


            }
        );
        $http.post('http://localhost:8080/comment', { "operation" : 'getAllPost'}).error(
            onError
        );
    });

//    app.controller('commentController', function($scope2, $http){
//        var onError = function (data, status)
//        {
//            $scope2.error = status;
//        };
//        $http.post('comment', { "postID" : $scope2.postID}).success(
//            function (response2) {
//                $scope2.comments = response2;
//            }
//        );
//        $http.post('http://localhost:8080/realComment', { "postID" : $scope2.postID}).error(
//            onError
//        );
//    });





<%--function init() {--%>
        <%--var userAuthority='<%=session.getAttribute("userAuthority")%>';--%>
        <%--var userName='<%=session.getAttribute("userName")%>';--%>
        <%--if(userAuthority === "user" || userAuthority === "administrator"){--%>
            <%--$('#navSignIn').hide();--%>
            <%--$('#navSignUp').hide();--%>
            <%--$('#navSignInPhp').hide();--%>
            <%--&lt;%&ndash;$('#myModal1').modal('hide');&ndash;%&gt;--%>
            <%--$('#navUserName').text('Welcome! ' +  userName);--%>
        <%--}--%>
        <%--$.post('http://localhost:8080/login', {--%>
            <%--operation: "getAllPost"--%>
<%--//            username: username,--%>
<%--//            password: password1,--%>
<%--//            telephone: telephone--%>
        <%--},--%>
            <%--function (data) {--%>
                <%--if(data.status == 1){--%>
                    <%--$("#Display_table").empty();--%>
                    <%--for(var i=0;i<data.postID.length; i++){--%>
                        <%--$("#Display_table").append("<tr><th width='50%'>PostID</th><th width='50%'>Content</th>");--%>
                        <%--$("#Display_table").append("<tr><td id='postID'"+i+" width='50%'>"+data.postID[i] + "</td><td width='50%'>"+ data.Content[i] + "</td></tr>");--%>
                        <%--$("#Display_table").append("<hr>");--%>
                        <%--$.post('http://localhost:8080/login', {--%>
                            <%--operation: "getEachComment",--%>
                            <%--postID : data.postID[i]--%>
                            <%--},--%>
                            <%--function (data2) {--%>
                                <%--if(data2.status == 1){--%>
                                    <%--$("#Display_table").append("<tr><th width='20'>CommentID</th><th width='50%'>Comment</th><th width='30%'>CommentBy</th>");--%>
                                    <%--for(var i=0;i<data2.commentID.length;i++){--%>
                                        <%--$("#Display_table").append("<tr><td id='commentID'"+i+" width='20%'>"+data2.commentID[i] + "</td><td width='50%'>"+ data2.comment[i] + "</td><td width='30%'>" + data2.commentBy[i]+"</td></tr>");--%>
                                    <%--}--%>
                                <%--}--%>
                            <%--});--%>

                    <%--}--%>
                <%--}--%>
            <%--});--%>
        <%--}--%>


    <%--window.onload = function() {--%>
        <%--init();--%>

    <%--}--%>

</script>

</body>

</html>