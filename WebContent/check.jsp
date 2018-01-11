<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cn.mldn.vo.*" %>
<%@ page import="cn.mldn.util.factory.*" %>
<%@ page import="cn.mldn.util.*" %>
<%@ page import="cn.mldn.service.*" %>
<%@ page import="cn.mldn.service.impl.*" %>
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
	String mid = request.getParameter("mid") ;
	String salt = "bWxkbmphdmE=" ;
	String password = new MD5Code().getMD5ofStr(request.getParameter("password") + "{!(" + salt + ")!}") ;
%>
<%
	IMemberService memberService = ServiceFactory.getInstance(MemberServiceImpl.class) ;
	Map<String,Object> map = null ;
	boolean flag = false ;
	String msg = "用户登录失败！" ;
	String url = basePath + "login.jsp" ;
	try {
		map = memberService.login(mid, password) ;
		flag = (Boolean) map.get("flag") ;
		if (flag) {	// 登录成功
			session.setAttribute("member", map.get("member")) ;
			msg = "用户登录成功！" ;
			url = basePath + "pages/index.jsp" ;
		}
	} catch (Exception e) {
		e.printStackTrace() ;
	}
%>
<jsp:include page="/pages/plugins/time_div.jsp">
	<jsp:param value="<%=url%>" name="url"/>
	<jsp:param value="<%=msg%>" name="msg"/>
</jsp:include>
</body>
</html>