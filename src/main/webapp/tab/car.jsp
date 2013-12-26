<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <title>物流公司维护</title>
        <%-- 包含通用js等头部资源 --%>
        <%@include file="/common-head.jsp" %>
        <%-- 引用页面自己的js和css --%>
        <script type="text/javascript" src="biz/car.js" charset="UTF-8"></script>
    </head>

    <body>
        <div id="toolbar">
			<label for="search_vin">车辆识别码:</label>
			<input type="text" class="combo-text" id="search_vin" style="width: 90px;" />
			
			<label for="search_logistics">物流公司:</label>
			<input type="text" class="combo-text" id="search_logistics" style="width: 120px;" />
			&nbsp;&nbsp;
            <a id="btn_search" href="javascript:void(0);" class="easyui-linkbutton" iconcls="icon-search"> 查询 </a>

        </div>
        <table id="tbl_list"></table>
    </body>

</html>