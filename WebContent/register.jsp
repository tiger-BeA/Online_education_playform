<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,java.sql.*" 
    pageEncoding="utf-8"%>
    
<%-- 获取路径 --%>   
<% String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>ML注册</title>
    <link rel="shortcut icon" href="img/logo/logo_red.png">
    <link rel="stylesheet" href="css/public/myLayout.css">
    <link rel="stylesheet" href="css/register.css">

<base href="<%=basePath%>">
<title>用户注册</title>

<style>
  table,input,h2{font-family:微软雅黑;}
</style>

<script language="javascript">    
function isLegal(form) {
    if (form.userName.value == "") {
        alert("用户名不能为空");
        return false;
    }
    if (form.passWord.value != form.passWord_confirm.value) {
        alert("两次输入的密码不同");
        return false;
    } else if (form.passWord.value == "") {
        alert("密码不能为空");
        return false;
    } else return true;
} 
</script>

</head>

<body style=" background:url(img/register/bg.jpg) repeat">
    <div id="logIn_box" >
        <h1> REGISTER </h1>
        <form action="register_check.jsp" method="post" onSubmit="return isLegal(this);">
        <div id="box">
            <div class="input-group">
                <span class="input-group-addon glyphicon glyphicon-user" ></span>
                <input type="text" class="form-control" placeholder="请输入用户名" name="userName">
            </div>
            <div class="input-group">
                <span class="input-group-addon glyphicon glyphicon-lock" ></span>
                <input type="password" class="form-control" placeholder="请输入密码" name="passWord">
            </div>
            <div class="input-group">
                <span class="input-group-addon glyphicon glyphicon-lock" ></span>
                <input type="password" class="form-control" placeholder="再次输入密码" name="passWord_confirm">
            </div>
        </div>
        <div id="logIn_bottom">
            <input type="submit" value="注册" />
        </div>


        <div id="logIn_box_bottom">
            <div id="join">
                <p>已注册?&nbsp;&nbsp;&nbsp;<a href="login.html">登录</a></p>
            </div>
        </div>
        </form>
    </div>
</body>
</html>