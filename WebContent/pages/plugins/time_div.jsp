<%@ page pageEncoding="UTF-8"%>
<div>
	<div><%=request.getParameter("msg")%></div>
	<div><span id="mytime">5</span>秒后跳转到<a href="<%=request.getParameter("url")%>">首页</a>！</div>
</div>
<script type="text/javascript">
	var goUrl = "<%=request.getParameter("url")%>" ;
	goTime() ;
</script>