<%@ page pageEncoding="UTF-8" %>
<%
	String _cxtPath = request.getContextPath();
	String _basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ _cxtPath + "/";
	String _easyui = "1.3.4";
%>
<base href="<%=_basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="static/img/icon.jpg" mce_href="static/img/icon.jpg" type="image/x-icon"/>
<!-- jquery -->
<script type="text/javascript" src="static/jquery-1.9.1/jquery.min.js"></script>
<!-- jquery老版本兼容补丁 --> 
<script type="text/javascript" src="biz/disable-migrate-output.js"></script>
<script type="text/javascript" src="static/migrate-1.2.1/jquery-migrate-1.2.1.min.js"></script>

<!-- underscore -->
<script type="text/javascript" src="static/underscore-1.5.2/underscore-min.js"></script>
<!-- easyui -->
<script type="text/javascript" src="static/easyui-<%=_easyui %>/jquery.easyui.min.js"></script>
<script type="text/javascript" src="static/easyui-<%=_easyui %>/locale/easyui-lang-zh_CN.js"></script>
<!-- moment -->
<script type="text/javascript" src="static/moment-2.4.0/moment.min.js"></script>
<script type="text/javascript" src="static/moment-2.4.0/zh-cn.js"></script>
<!-- deeplink -->
<script type="text/javascript" src="static/address-1.5/jquery.address-1.5.min.js"></script>
<!-- easyui风格 -->
<link rel="stylesheet" type="text/css" href="static/easyui-<%=_easyui %>/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="static/easyui-<%=_easyui %>/themes/icon.css">
<!-- 自定义通用css -->
<link rel="stylesheet" type="text/css" href="style/index.css">
<!-- easyui自定义扩展 -->
<script type="text/javascript" src="biz/easyui-ext.js"></script>
<!-- 业务类型定义 -->
<script type="text/javascript" src="biz/code_value.js"></script>
