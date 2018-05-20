LG = {};
var generalIP = "http://172.25.175.28:8080/myFirstServletTest";

// function init(){
//     var userAuthority="<%=session.getAttribute('userAuthority')%>";
//     if(userAuthority !== null){
//         alert(userAuthority);
//     }
//     // alert(myName);
// }
//
// window.onload = function() {
//     init();
//
// }





LG.signIn = function () {
    var usernameValue = $("#signInUserName").val();
    var passwordValue = $("#signInPassword").val();

    $.post('http://localhost:8080/login', {
            operation: "login",
            username: usernameValue,
            password: passwordValue
        },
        function (data) {
            if (data.status == 1) {
                console.log("test");
                alert("Login Successfully! " + "Welcome " + data.userAuthority + " : " + data.userName);
                window.location.replace("index.jsp");

            } else {
                alert("Login fail, Please check your username and password!");
            }
        });

}

LG.logOut = function () {

    $.post('http://localhost:8080/login', {
            operation: "logOut"
        },
        function () {
            window.location.reload();
        });

}


LG.checkSignUp = function () {
    var username = $("#signUpUserName").val();
    var password1 = $("#signUpPassword").val();
    var password2 = $("#signUpPassword2").val();
    var telephone = $("#signUpTelephone").val();

    var regPhone = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;

    if (username.length === 0 || username.length > 8) {
        alert("Please Input Valid Username！");
        $("#signUpUserName").val("");
        $("#signUpUserName").focus();
        return;
    } else if (password1 !== password2) {
        alert("Two Passwords are not consistent");
        $("#signUpPassword").val("");
        $("#signUpPassword2").val("");
        $("#signUpPassword").focus();
        return;
    } else if (password1.length === 0 || password2.length === 0) {
        alert("Please Input Password");
    } else if (telephone.length === 0 || !telephone.match(regPhone)) {
        alert("Please Input Valid Telephone Number！");
        $("#signUpTelephone").val("");
        $("#signUpTelephone").focus();
        return;
    } else {
        $.post('http://localhost:8080/login', {
                operation: "signup",
                username: username,
                password: password1,
                telephone: telephone
            },
            function (data) {
                if(data.duplicate == 1){
                    alert("Duplicate username, try another one");
                }
                else if (data.status == 1) {
                    console.log("应该刷新了");
                    alert("SignUp Successfully! " + "Welcome " + data.userAuthority + " : " + data.userName);
                    window.location.reload();
                }
            });
    }
}




