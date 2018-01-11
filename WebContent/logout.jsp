<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	request.setCharacterEncoding("UTF-8") ;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/pages/plugins/include_javascript.jsp" /> 
<title>用户登录检测</title>
</head>
<body>
<%
	session.invalidate() ;
	String url = basePath + "login.jsp" ;
	String msg = "注销成功，欢迎再来！" ;
%>
<jsp:include page="/pages/plugins/time_div.jsp">
	<jsp:param value="<%=url%>" name="url"/>
	<jsp:param value="<%=msg%>" name="msg"/>
</jsp:include>
</body>
</html>