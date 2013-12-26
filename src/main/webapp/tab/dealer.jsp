<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <title>经销商维护</title>
        <%-- 包含通用js等头部资源 --%>
        <%@include file="/common-head.jsp" %>
        <%-- 引用页面自己的js和css --%>
        <script type="text/javascript" src="biz/dealer.js" charset="UTF-8"></script>
    </head>

    <body>
        <div id="toolbar">
            <table>
                <tr>
                    <td>
                        <label for="search_code">经销商代码:</label>
                        <input type="text" class="combo-text" id="search_code" style="width: 90px;" />

                        <label for="search_name">经销商名称:</label>
                        <input type="text" class="combo-text" id="search_name" style="width: 120px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="search_SYB">事业部:</label>
                        <input type="text" class="combo-text" id="search_SYB" style="width: 60px;" />

                        <label for="search_QY">区域:</label>
                        <input type="text" class="combo-text" id="search_QY" style="width: 100px;" />

                        <label for="search_SFTY">是否停业:</label>
                        <input type="text" class="combo-text" id="search_SFTY" style="width: 60px;" />
						&nbsp;&nbsp;
                        <a id="btn_search" href="javascript:void(0);" class="easyui-linkbutton" iconcls="icon-search"> 查询 </a>
                    </td>
                </tr>
            </table>

        </div>
        <table id="tbl_list"></table>
    </body>

</html>