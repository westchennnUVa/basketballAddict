<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> 
    <style>
        .reminder {
            color:red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2> Sign Up Here</h2>
        <form name="mainform" action="<?php $_SERVER['PHP_SELF'] ?>" method="post" >
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="user" id="username" class="form-control" autofocus required/> <br />
            </div>
            
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" name="email" id="email" class="form-control"/> <br />
            </div>
            
            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" name="pwd" id="pws" class="form-control" required/> <br />
                <div class="reminder">
                    <li>Must contain at least an uppercase character, a lowercase character, a number and a special character</li>
                    <li>Must between 6 and 16 characters</li>
                </div>
            </div>
            
            <button type="submit" class="btn btn-default">Sign Up</button>
        </form>
        </div>
    
    <?php
        function checkPwd($pwd) {
            $pattern = '/^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)(?![\W_]+$)\S{6,16}$/';// At least an uppercase letter, a lowercase letter, a number and a special character as well as the length bewtween 6 and 16
            if (!preg_match($pattern, $pwd)) {
                $pwd = NULL;
                echo "<script>alert('Password is incorrect format')</script>";
                return false;
            }
            return true;
        }
         
        $user = $email = $pwd = NULL;

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (empty($_POST['user'])) {
                echo "Please enter your username <br />";
            }
            else {
                $user = trim($_POST['user']);
            }
            
            if (empty($_POST['email'])) {
                echo "Please enter your email address <br />";
            }
            else {
                $email = trim($_POST['email']);
            }
            
            if (empty($_POST['pwd'])) {
                echo "Please enter your password<br />";
            }
            else {
                $pwd = trim($_POST['pwd']);
            }
        }

        if ($user != NULL && $pwd != NULL && $email != NULL) {
            if (checkPwd($pwd)) {
                echo "Welcome to Basketball Addict, $user!<br />";
                echo "The comfirmation letter has been sent to your email, $email.";
            }
        }
    
    ?>
</body>
</html>