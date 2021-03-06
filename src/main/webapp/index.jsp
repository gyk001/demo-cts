<%@page import="cn.guoyukun.demo.cts.service.LoginService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- 包含通用js等头部资源 --%>
<%@include file="/common-head.jsp" %>
<%-- 引用页面自己的js和css --%>
<script type="text/javascript" src="biz/main.js"></script>
<%
	final Date timeStart = new Date();
%>
<script type="text/javascript">
$(function(){
	window.userRole = '<%=request.getSession().getAttribute("role") %>';
	var serverTime = <%= new Date().getTime()%>;
	var startTime = <%= timeStart.getTime()%>;
	
	updateTime(moment(serverTime),moment(startTime));
});
</script>
<title>整车物流在途监控系统</title>
</head>
<body class="easyui-layout" style="margin: 1px;" data-options="
fit:true
">
	<!-- north logo区域  -->
	<div data-options="region:'north'" style="height: 80px;overflow:hidden;">
		<div style="background-color: rgb(76, 197, 232);">
			<img alt="" src="static/img/b.jpg"/>
		</div>
	</div>
	<!-- south 底边栏 -->
	<div data-options="region:'south'" style="height:26px;padding: 5px 5px;">
		<span><strong>应用编号：</strong><span>demo-cts</span></span>
		&nbsp;&nbsp;|&nbsp;&nbsp;
		<span><strong>服务器时间：</strong><span id="footer_server_time"></span></span>
		&nbsp;&nbsp;|&nbsp;&nbsp;
		<span><strong>启动时间：</strong><span id="footer_start_time"></span></span>
	</div>
	<!-- East 右边栏 -->
	<!-- 
		<div data-options="region:'east',split:true" title="East" style="width:180px;">
			<ul class="easyui-tree" data-options="url:'data/tree_data1.json',animate:true,dnd:true"></ul>
		</div>
	 -->
	<!-- west 左边栏 -->
	<div data-options="region:'west',split:true,iconCls:'icon-sum'" title="<%=session.getAttribute("username") %>[<%=LoginService.getLoginRoleName(request) %>]" style="width: 200px;">
	
		<div id="layout_left_menu" class="easyui-accordion" data-options="fit:true,border:false">  
		    <div title="信息管理" data-options="iconCls:'icon-sum',selected:true" style="overflow:auto;padding:10px;">  
		        <ul style="font-size:12px;margin-left:14px;">
		        	<li><a id="menu_dealer" href="#dealer">经销商查询</a></li>
					<li><a id="menu_car" href="#car">整车在途查询</a></li>
					<li><a id="menu_logistics" href="#logistics">物流公司查询</a></li>
					<li><a id="menu_lorry" href="#lorry">物流车查询</a></li>
					<li><a id="menu_map" href="#map">地图实时跟踪</a></li>
					<!-- 
					<li><a id="menu_changpwd" href="#changpwd">修改密码</a></li>
					<li><a id="menu_init" href="#init">系统初始化</a></li>
					 -->
					<li><a id="menu_logout" href="logout">退出</a></li>
				</ul>
		    </div>  
		    <!-- 
		    <div title="统计报表" data-options="iconCls:'icon-sum'" style="padding:10px;">  
		        <ul style="font-size:12px;margin-left:14px;">
					<li><a id="menu_report_year" href="#report_year">年报表</a></li>
					<li><a id="menu_report_month" href="#report_month">月报表</a></li>
					<li><a id="menu_report_day" href="#report_day">日报表</a></li>
					
				</ul>
		    </div>
		     -->  
		</div>  
	</div>
	
	<div data-options="region:'center'">
		<div id="layout_tabs" class="easyui-tabs"
			data-options="fit:true,border:false,plain:true">
		</div>
	</div>
 
	<script type="text/javascript">
		$(function(){
			//$('#menu_module').click();
		});
	</script>
</body>
</html>
