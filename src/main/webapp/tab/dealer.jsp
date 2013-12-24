<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>经销商维护</title>
		<%-- 包含通用js等头部资源 --%>
		<%@include file="/common-head.jsp" %>
		<%-- 引用页面自己的js和css --%>
		<script type="text/javascript" src="biz/dealer.js"  charset="UTF-8"></script>
	</head>
<body>
	<div id="toolbar">
		<label for="search_code">经销商代码</label> 
		<input type="text" class="combo-text" id="search_code"  style="width: 90px;"/>
		 
		<label for="search_name">经销商名称</label> 
		<input type="text" class="combo-text" id="search_name"  style="width: 120px;"/>
		
		<label for="search_region">区域</label>
		<input type="text" class="combo-text" id="search_region"  style="width: 100px;" />
		 
		<label for="search_state">是否营业</label>
		<input type="text" class="combo-text" id="search_state"  style="width: 60px;" />
		
		<a id="btn_search" href="javascript:void(0);" class="easyui-linkbutton"
			iconcls="icon-search"> 搜索 </a>
	</div>
	<table id="tbl_list"></table>
</body>
</html>


