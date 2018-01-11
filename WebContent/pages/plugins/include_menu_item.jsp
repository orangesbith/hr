<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="cn.mldn.vo.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	Member member = (Member) session.getAttribute("member") ;
%>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="upload/emp/nophoto.png" class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">
				<p><%=member.getName()%></p>
			</div> 
		</div>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header"><i class="fa fa-slack"></i> 企业人事管理系统</li>
			<li class="treeview"><a href="<%=basePath%>pages/index.jsp"> <i
					class="fa fa-folder-open"></i> <span>权限管理</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="pages/admin/admin_list.jsp"><i class="fa fa-circle-o"></i>
							管理员列表</a></li>
					<li><a href="pages/admin/admin_add.jsp"><i class="fa fa-circle-o"></i>
							增加管理员</a></li>
				</ul></li>
			<li class="treeview"><a href="<%=basePath%>pages/index.jsp"> <i class="fa  fa-folder-open"></i>
					<span>人事管理</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="pages/dept/dept_list.jsp"><i
							class="fa fa-circle-o"></i> 部门列表</a></li>
					<li><a href="pages/emp/emp_add.jsp"><i
							class="fa fa-circle-o"></i> 增加员工</a></li>
					<li><a href="pages/emp/emp_list.jsp"><i
							class="fa fa-circle-o"></i> 员工列表</a></li>
				</ul></li>
			<li class="treeview"><a href="<%=basePath%>pages/index.jsp"> <i class="fa  fa-folder-open"></i>
					<span>办公用品</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="pages/type/type_list.jsp"><i 
							class="fa fa-circle-o"></i> 用品分类</a></li>
					<li><a href="pages/res/res_list.jsp"><i
							class="fa fa-circle-o"></i> 办公用品列表</a></li>
					<li><a href="pages/res/res_emp_list.jsp"><i
							class="fa fa-circle-o"></i> 领取记录</a></li>
					<li><a href="pages/res/res_preget.jsp"><i
							class="fa fa-circle-o"></i> 待领清单</a></li>
					<li><a href="pages/res/res_prebuy.jsp"><i
							class="fa fa-circle-o"></i> 待购清单</a></li>
					<li><a href="pages/purchase/purchase_list.jsp"><i
							class="fa fa-circle-o"></i> 购入申请</a></li>
					<li><a href="pages/purchase/purchase_apply.jsp"><i
							class="fa fa-circle-o"></i> 我的申请</a></li>
					<li><a href="pages/res/res_audit.jsp"><i
							class="fa fa-circle-o"></i> 领取审批</a></li>
				</ul></li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>