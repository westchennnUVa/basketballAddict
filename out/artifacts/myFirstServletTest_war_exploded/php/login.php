<?php
/**
 * Created by PhpStorm.
 * User: Westchennn
 * Date: 3/13/18
 * Time: 4:13 PM
 */
header('Access-Control-Allow-Origin: *');
//login
//if(!isset($_POST['submit'])){
//    exit('invalid visit!');
//}
$username = htmlspecialchars($_POST['username']);
$password = htmlspecialchars($_POST['password']);

//包含数据库连接文件
include('conn.php');
//检测用户名及密码是否正确
$check_query = mysqli_query("select userid from userInfo where username='$username' and password='$password' limit 1");
if($result = mysqli_fetch_array($check_query)){
    //登录成功
    session_start();
    $_SESSION['username'] = $username;
    $_SESSION['userid'] = $result['userid'];
    header("Location:index.html");
    echo("successful");

//    echo $username,' 欢迎你！进入 <a href="my.php">用户中心</a><br />';
//    echo '点击此处 <a href="login.php?action=logout">注销</a> 登录！<br />';
//    exit;
} else {
    echo("fail");
}



//logout
if($_GET['action'] == "logout"){
    unset($_SESSION['userid']);
    unset($_SESSION['username']);
    header("Location:index.html");
//    echo 'Successfully logout！Click here <a href="login.html">Login</a>';
//    exit;
}

?>
