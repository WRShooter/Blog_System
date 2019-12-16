<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="login.DataMethod" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人资料</title>
<link type="text/css" rel="stylesheet" href="css/personal_data.css">
</head>
<body>
	<%
		DataMethod method = new DataMethod();
	%>
	<%
		Connection conn = method.DataConn();
		PreparedStatement stmlt = null;
		ResultSet rs = null;
	%>
	<%	
		int i = 1;
		String username = (String) request.getSession().getAttribute("user_name");
		String sql = "select intro,name,gender,birthday,location,occupational from profile where user_name=?";
		stmlt = conn.prepareStatement(sql);
		stmlt.setString(1, username);
		rs = stmlt.executeQuery();
		if(rs.next()){
			rs.getString(i);
			i++;
		}
	%>
	<h2>个人资料</h2>
	<div class="line"></div>
	<div class="content clearfix">
		<div class="left">
		
			<div class="avatar"></div>
			<a href="profile_change.jsp">修改资料</a>
		</div>
		<div class="right">
			<div class="right-top">
				<ul>
					<li>账号：&nbsp;<%=request.getSession().getAttribute("user_name") %></li>
					<li>签名：&nbsp; <%=rs.getString(1)%></li>				
				</ul>
			</div>
			<div class="right-bottom">
				<ul>
					<li>昵称：&nbsp; <%=rs.getString(2)%></li>
					<li>性别：&nbsp; <%=rs.getString(3)%></li>	
					<li>生日：&nbsp; <%=rs.getString(4)%></li>	
					<li>地区：&nbsp; <%=rs.getString(5)%></li>	
					<li>职业：&nbsp; <%=rs.getString(6)%></li>	
				</ul>
			</div>
		</div>
		
		
	</div>
</body>
</html>