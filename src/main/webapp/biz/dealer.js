(function($){
	//总记录数
	//取消总数记忆，修改查询条件会使结果不正确
	var total = null;
	
	//查询前，如果有总数的话把总数添加的查询参数里，后台就不需要查询count了
	var beforLoad = function(param){
		if(! param.total && total){
			//param.total=total;
		}
		param.JXSDM = $('#search_code').val();
		param.JXSMC = $('#search_name').val();
		param.QY = $('#search_QY').combobox('getValue');
		param.SFTY = $('#search_SFTY').combobox('getValue');
		param.SYB = $('#search_SYB').combobox('getValue');
	};
	

	var loadError = function(){
		alert("加载失败！");	
	};
	
	//加载成功之后将总记录数记住
	var loadSuccess = function(data){
		if( ! data ){
			loadError();
		}
		if( ! data.success){
			loadError();
		}
		if(data.total){
			//total = data.total;
		};
		$('.easyui-linkbutton').linkbutton();
	};
	
	
	var makeDeleteBtn=function(code){
		var btn = '&nbsp;&nbsp;<a href="javascript:deleteDealer(&apos;'+code+'&apos;);" class="easyui-linkbutton" data-options="iconCls:&apos;icon-cancel&apos;">删除</a>';
		return btn;
	};
	
	//操作列
	var formatAction = function (val,row){
		return makeDeleteBtn(row.JXSDM);
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
						 	{field:'JXSDM',width:90,title:'经销商代码'},
							{field:'JXSMC',width:120,title:'经销商名称'},
							{field:'SYB',windth:60,title:'事业部'},
							{field:'SHENG',width:60,title:'所在省'},
							{field:'SHI',width:60,title:'所在市'},
							{field:'QY',width:60,title:'区域'},
							{field:'SFTY',width:60,title:'是否停业'},
							{field:'action',width:160,title:'操作',formatter:formatAction}
					 	]
					]
	};
	
	var search = function(){
		$('#tbl_list').datagrid(opt);
	};
	
	
	
	var deleteDealer = function (code){
        $.messager.confirm('提示','确认删除经销商('+code+')?',function(r){
            if (r){
                $.get('dealer/delete/'+code,function(){
                    search();
                }).fail(function(){
                	 $.messager.alert('错误','删除经销商'+code+'失败!','error');
                });
            }
        });
    };
    
	
	$(function(){
		// 初始化下拉框：区域
		$('#search_QY').combobox({
			data: cv2combo(cv.dealer_QY, true)
		});
		// 初始化下拉框：是否营业
		$('#search_SFTY').combobox({
			data: cv2combo(cv.dealer_SFTY, true)
		});
		// 初始化下拉框：是否营业
		$('#search_SYB').combobox({
			data: cv2combo(cv.dealer_SYB, true)
		});
		// 查询按钮绑定click事件，并click
		$('#btn_search').click(search).click();
		
		window.deleteDealer = deleteDealer;
	});
})(jQuery);