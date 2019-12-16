<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改头像</title>
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="login_block">
	<%session.setAttribute("user_name",request.getSession().getAttribute("user_name")); %>
	<form action="ChangeServlet" method="POST">
		签名：<input type="text" name="intro"></br> 
		昵称：<input type="text"name="name"></br> 
		性别：<input type="text" name="gender"></br>
		生日：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date"name="birthday"></br> 
		地区：<input type="text" name="location"></br>
		职业：<input type="text" name="occupational"></br>
		<div id="login_control">
			<%-- <a href="ChangeServlet?user_name=<%=request.getSession().getAttribute("user_name")%>>"></a> --%>
			<input type="submit" value="提交">
		</div>
	</form>
	</div>
</body>
</html>