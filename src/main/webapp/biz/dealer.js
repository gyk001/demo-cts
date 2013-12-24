(function($){
	//总记录数
	//取消总数记忆，修改查询条件会使结果不正确
	var total = null;
	
	//查询前，如果有总数的话把总数添加的查询参数里，后台就不需要查询count了
	var beforLoad = function(param){
		if(! param.total && total){
			//param.total=total;
		}
		param.code = $('#search_code').val();
		param.name = $('#search_name').val();
		param.region = $('#search_region').combobox('getValue');
		param.state = $('#search_state').combobox('getValue');
	};
	//加载成功之后将总记录数记住
	var loadSuccess = function(data){
		if(data.total){
			//total = data.total;
		};
		$('.easyui-linkbutton').linkbutton();
	};
	
	var loadError = function(){
		alert("加载失败！");	
	};
	
	var makeDeleteBtn=function(code){
		var btn = '&nbsp;&nbsp;<a href="javascript:stopModule(&apos;'+code+'&apos;);" class="easyui-linkbutton" data-options="iconCls:&apos;icon-cancel&apos;">删除</a>';
		return btn;
	};
	
	//操作列
	var formatAction = function (val,row){
		return makeDeleteBtn(row.CODE);
	};
	
	var opt = {
			singleSelect:true,
			rownumbers:true,
			pagination:true,
			onBeforeLoad: beforLoad,
			onLoadSuccess: loadSuccess, 
			onLoadError:loadError,
			toolbar:'#toolbar', 
			url:'dealer/list',
			//pageList:[3,6,12],
			columns:[
						[
						 	{field:'CODE',width:90,title:'经销商代码'},
							{field:'NAME',width:120,title:'经销商名称'},
							{field:'REGION',width:60,title:'区域'},
							{field:'STATE',width:60,title:'是否营业'},
							{field:'RESULT_OK',width:60,title:'所在省'},
							{field:'RESULT_FAIL',width:60,title:'所在市'},
							{field:'DKQ',windth:60,title:'DKQ'},
							{field:'XGSJ',windth:60,title:'XGSJ'},
							{field:'DLSJ',windth:60,title:'DLSJ'},
							{field:'action',width:160,title:'操作',formatter:formatAction}
					 	]
					]
	};
	
	var search = function(){
		$('#tbl_list').datagrid(opt);
	};
	
	
	$(function(){
		// 初始化下拉框：区域
		$('#search_region').combobox({
			data: cv2combo(cv.dealer_region, true)
		});
		// 初始化下拉框：是否营业
		$('#search_state').combobox({
			data: cv2combo(cv.dealer_state, true)
		});
		// 查询按钮绑定click事件，并click
		$('#btn_search').click(search).click();
	});
})(jQuery);