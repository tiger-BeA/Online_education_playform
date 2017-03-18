<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,java.sql.*"
    pageEncoding="utf-8" %>
 
<%-- 获取路径 --%>   
<% String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>"> 
<title>用户登录</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String connectString = "jdbc:mysql://172.18.59.232:3306/web"
					+ "?autoReconnect=true&useUnicode=true"
					+ "&characterEncoding=UTF-8"; 
	String DBuser = "admin";
	String DBpswd = "admin";
	Boolean isValid = false;
	Boolean isAdmin = false;
	String msg = "";
	String userName = request.getParameter("userName");
	String passWord = request.getParameter("passWord");

	try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection(connectString, 
	                 DBuser, DBpswd);
	  Statement stmt=con.createStatement();
	  String sqlSentence = "select * from usertable where userName = '" + userName + "' and passWord = '" + passWord + "';";
	  //String sqlSentence = "select * from usertable where userName = 'user';";
	  
	  ResultSet rs=stmt.executeQuery(sqlSentence);
	  isValid = rs.next();
	  isAdmin = userName.equals("admin");
	  rs.close();
	  stmt.close();
	  con.close();
	}
	catch (Exception e){
	  msg = e.getMessage();
	}

    if(isValid&&(!isAdmin)){%>
        <script language = "javascript">
           var hint = alert("登录成功！您的身份是：普通用户");
           <% response.setHeader("refresh","0.5;url=index.jsp?normal-user");%> 
        </script>
    <%}
    else if(isValid&&isAdmin){%>
        <script language = "javascript">
        var hint = alert("登录成功！您的身份是：管理员");
        <% response.setHeader("refresh","0.5;url=index.jsp?admin");%> 
     </script>	
    <%}
    else if(!isValid){%>
    	<% response.setHeader("refresh","1;url=login_fail.jsp");%>
    <%}%>
</body>
</html>