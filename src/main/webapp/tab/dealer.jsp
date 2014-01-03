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
                        
                        <label for="search_SYB">事业部:</label>
                        <input type="text" class="combo-text" id="search_SYB" style="width: 60px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="search_QY">区域:</label>
                        <input type="text" class="combo-text" id="search_QY" style="width: 100px;" />

                        <label for="search_SFTY">是否停业:</label>
                        <input type="text" class="combo-text" id="search_SFTY" style="width: 60px;" />
						&nbsp;&nbsp;
                        <a id="btn_search" href="javascript:void(0);" class="easyui-linkbutton" iconcls="icon-search"> 查询 </a>
                        &nbsp;&nbsp;
                        <a id="btn_add" href="javascript:void(0);" class="easyui-linkbutton" iconcls="icon-add"> 添加 </a>
                    </td>
                </tr>
            </table>
        </div>
        <table id="tbl_list"></table>
        <div id="edit_dlg" class="easyui-dialog" title="经销商信息" data-options="iconCls:'icon-save',closed:true" style="width:400px;height:300px;padding:10px">
           <form id="edit_form" method="post" action="dealer/edit">
	            <table>
	                <tr>
	                    <td>经销商代码:</td>
	                    <td><input class="easyui-validatebox" type="text" name="JXSDM" data-options="required:true"></input></td>
	                </tr>
	                <tr>
	                    <td>经销商名称:</td>
	                    <td><input class="easyui-validatebox" type="text" name="JXSMC" data-options="required:true"></input></td>
	                </tr>
	                <tr>
	                    <td>事业部:</td>
	                    <td><input class="easyui-combobox" type="text" name="SYB" data-options="data:cv2combo(cv.dealer_SYB, false)"></input></td>
	                </tr>
	                <tr>
	                    <td>区域:</td>
	                    <td><input class="easyui-combobox" type="text" name="QY" data-options="data:cv2combo(cv.dealer_QY, false)"></input></td>
	                </tr>
	                <tr>
	                    <td>所在省:</td>
	                    <td><input class="easyui-validatebox" type="" name="SHENG"></input></td>
	                </tr>
					<tr>
	                    <td>所在市:</td>
	                    <td><input class="easyui-validatebox" type="" name="SHI"></input></td>
	                </tr>
	                <tr>
	                    <td>是否停业:</td>
	                    <td>
	                        <select class="easyui-combobox" name="SFTY">
	                        		<option value="营业中">营业中</option>
	                        		<option value="已停业">已停业</option>
	                       </select>
	                    </td>
	                </tr>
	            </table>
	        </form>
	        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">保存</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清空</a>
        </div>
        </div>
    </body>

</html>