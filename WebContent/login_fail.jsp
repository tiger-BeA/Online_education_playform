<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%-- 获取路径 --%>   
<% String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ML登录失败</title>
</head>
<body>
   <script language = "javascript">
      var hint = alert("登录失败，即将返回登录界面，请检查用户名和密码是否正确");
   </script> 
   <% response.setHeader("refresh","1;url=login.html");%> 
</body>
</html>