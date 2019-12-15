<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>博客系统后台</title>
<link type="text/css" rel="stylesheet" href="css/houtai.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="header">
		<div class="Blog_Title">博客系统后台</div>
		<div id="Manager_Name"><a><%=request.getSession().getAttribute("Manager_Name") %></a></div>
		<div id="log_out"><a>注销</a></div>
		<div id="help"><a>帮助</a></div>
	</div>
	<div class="content">
		<div class="left" >
			<div class="avatar"></div>
			<li class="administrator">管理员</li>
			<ul class="left-style">
                <li><span class="glyphicon glyphicon-user"></span> <a data-src="User_info.jsp">用户管理</a></li>
                <li><span class="glyphicon glyphicon-file"></span> <a data-src="Blog_info.jsp">博客管理</a></li>
                <li><span class="glyphicon glyphicon-thumbs-up"></span> <a data-src="Recommend_info.jsp">推荐管理</a></li>
                <li><span class="glyphicon glyphicon-comment"></span> <a data-src="Comment_info.jsp">评论管理</a></li>
                <li><span class="glyphicon glyphicon-hdd"></span> <a data-src="Resouce_info.jsp">资源管理</a></li>
            </ul>
		</div>
		<div class="right" style="margin:0 auto;text-align:center;border: medium none;">
			<iframe style="width:80%;height:100%;" src="User_info.jsp" frameborder="no"  id="aa"></iframe>
		</div>
	</div>
	<script type="text/javascript">
        $(function(){
            $(".left-style a").on("click",function(){
                var address =$(this).attr("data-src");
                $("iframe").attr("src",address);
            });
        });
    </script>
</body>
</html>