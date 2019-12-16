<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="login.DataMethod" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人主页</title>
<link type="text/css" rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
			<%
			String name = username;
			if(rs.getString(2) != null){
				name = rs.getString(2);
			}
			System.out.print(name);
		%>
	<div class="header">
		<div class="Blog_Title">个人资料</div>

		<div id="user_name"><a><%=request.getSession().getAttribute("user_name")%></a></div>
		<div id="log_out"><a>注销</a></div>
		<div id="help"><a>帮助</a></div>
	</div>
	<div class="content">
		<div class="left">
				<div data-src="personal_data_forward.jsp"><li>个人资料</li></div>
				<div data-src="my_favorites.jsp"><li>我的收藏</li></div>
				<div data-src="my_follows.jsp"><li>关注的人</li></div>
				<div data-src="my_followers.jsp"><li>我的粉丝</li></div>
				<div data-src="my_blog.jsp"><li>我的博客</li></div>
		</div>
		<div class="right">
			<iframe  src="personal_data.jsp" frameborder="no"  class="iframe"></iframe>
		</div>
	</div>
	<script type="text/javascript">
        $(function(){
            $(".left div").on("click",function(){
                var address =$(this).attr("data-src");
                $("iframe").attr("src",address);
            });
        });
    </script>
</body>
</html>