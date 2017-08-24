<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<link rel="Shortcut Icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/images/favicon.ico" />
<link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css"/> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blog.css">
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>
<title>${pageTitle }</title>
<style type="text/css">
	body {
	padding-top: 10px;
	padding-bottom: 40px;
}
</style>
</head>
<body >
<div class="container" >
  <jsp:include page="${pageContext.request.contextPath }/foreground/common/head.jsp"/>	
  <jsp:include page="${pageContext.request.contextPath }/foreground/common/menu.jsp"/>	
	<div class="row">
	  <div class="col-md-9" >
	  	 <jsp:include page="${mainPage }"/>	
	  </div>
	  <div class="col-md-3" >
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath }/static/images/user_icon.png"/>
					博主信息
				</div>
				<div class="user_image">
					<img src="${pageContext.request.contextPath }/static/userImages/${blogger.imageName}"/>
				</div>
				<div class="nickName">${blogger.nickName }</div>
				<div class="userSign">(${blogger.sign })</div>
			</div>
	 	    <div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath }/static/images/byType_icon.png"/>
					按日志类别
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="blogTypeCount" items="${blogTypeCountList }">
							<li><span><a href="${pageContext.request.contextPath }/index.html?typeId=${blogTypeCount.id }">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath }/static/images/byDate_icon.png"/>
					按日志日期
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="blogCount" items="${blogCountList }">
							<li><span><a href="${pageContext.request.contextPath }/index.html?releaseDateStr=${blogCount.releaseDateStr}">${blogCount.releaseDateStr }(${blogCount.blogCount })</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath }/static/images/link_icon.png"/>
					友情链接
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="link" items="${linkList }">
							<li><span><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>	
  	</div>
  	<jsp:include page="${pageContext.request.contextPath }/foreground/common/foot.jsp"/>	
</div>

 <!--SyntaxHighlighter的基本脚本-->  
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shCore.js"></script>  
  	<script type="text/javascript">
  		 SyntaxHighlighter.all();
	</script>
  	
    <!--SyntaxHighlighter的对各个编程语言解析的脚本-->  
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushBash.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushCss.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushJava.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushJavaFX.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushJScript.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushPowerShell.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushPython.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushSql.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ueditor/third-party/SyntaxHighlighter/shBrushXml.js"></script> 

</body>
</html>