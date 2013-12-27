<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>整车物流在途监控系统</title>
<%-- 包含通用js等头部资源 --%>
<%@include file="/common-head.jsp" %>
<%-- 引用页面自己的js和css --%>
<script type="text/javascript" src="biz/login.js"></script>
</head>
<body>
<center>
<br/>
    <h2>北京现代</h2>
    <div class="demo-info">
        <div class="demo-tip icon-tip"></div>
        <div>整车物流在途监控系统</div>
    </div>
    <div style="margin:10px 0;"></div>
    <div class="easyui-panel" title="请您登录" style="width:400px">
        <div style="padding:10px 0 10px 60px">
        <form id="ff" method="get" action="dologin">
            <table>
                <tr>
                    <td>用户名:</td>
                    <td>
                    	<input class="easyui-validatebox" type="text" name="username" data-options="required:true"></input>
                    </td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td>
                    	<input class="easyui-validatebox" type="password" name="password" data-options="required:true"></input>
                    </td>
                </tr>
                <tr>
                    <td>身份:</td>
                    <td>
                        <select class="easyui-combobox" name="role">
                        	<option value="logistics">经销商</option>
                        	<option value="dealer">物流公司</option>
                        	<option value="admin">管理员</option>
                       	</select>
                    </td>
                </tr>
            </table>
        </form>
        </div>
        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">登录</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清空</a>
        </div>
        <!-- 
        <div class="demo-tip icon-tip"> <%=request.getAttribute("ERROR") %></div>
         -->
    </div>
    <script>
        function submitForm(){
            $('#ff').eq(0).submit();
        }
        function clearForm(){
            $('#ff').form('clear');
        }
    </script>
    </center>
</body>
</html>
