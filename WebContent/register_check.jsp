<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,java.sql.*" 
    pageEncoding="utf-8"%>
    
<%-- 获取路径 --%>   
<% String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %> 
   
<%!String userName = "";
   String passWord = "";
   Boolean flag = false;%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>">
<title>ML注册信息</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String connectString = "jdbc:mysql://172.18.59.232:3306/web"
					+ "?autoReconnect=true&useUnicode=true"
					+ "&characterEncoding=UTF-8"; 
	String DBuser = "admin";
	String DBpswd = "admin";

	int Response = 0;
	String msg = "";
	userName = request.getParameter("userName");
	passWord = request.getParameter("passWord");
	//out.println(userName);
	//out.println(passWord);

	try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection(connectString, 
	                 DBuser, DBpswd);
	  Statement stmt=con.createStatement();
	  Statement stmt2=con.createStatement();
	  String sqlSentence = "insert into usertable(userName,passWord) values('"+userName+"','"+passWord+"');";
	  String Exist = "select * from usertable where userName = '" + userName + "'";
	  //out.println(sqlSentence);
	  ResultSet rs = stmt2.executeQuery(Exist);
	  if(!rs.next()){
	     Response=stmt.executeUpdate(sqlSentence);
	     flag = true;
	  }
	  else flag = false;
	  stmt.close();
	  stmt2.close();
	  con.close();
	}
	catch (Exception e){
	  msg = e.getMessage();
	}
   if(flag){
	   %>
   <script language = "javascript">
	   var hint = alert("注册成功，请登录！即将返回登录界面...");
	   <% response.setHeader("refresh","10;url=login.html");%> 
	   </script> 
<%   }    
   else{%>
	   <script language = "javascript">
	   var hint = alert("该用户名已被注册"); 
	   <% response.setHeader("refresh","0.5;url=register.jsp");%>
	   </script> 
<%   }%>
    
</body>
</html>