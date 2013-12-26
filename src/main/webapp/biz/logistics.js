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
		var btn = '&nbsp;&nbsp;<a href="javascript:deleteLogistics(&apos;'+code+'&apos;);" class="easyui-linkbutton" data-options="iconCls:&apos;icon-cancel&apos;">删除</a>';
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
			url:'logistics/list',
			//pageList:[3,6,12],
			columns:[
						[
						 	{field:'CODE',width:90,title:'物流公司代码'},
							{field:'NAME',width:120,title:'物流公司名称'},
							{field:'action',width:160,title:'操作',formatter:formatAction}
					 	]
					]
	};
	
	var search = function(){
		$('#tbl_list').datagrid(opt);
	};
	
	
	
	var deleteLogistics = function (code){
        $.messager.confirm('提示','确认删除物流公司('+code+')?',function(r){
            if (r){
                $.get('logistics/delete/'+code,function(){
                    search();
                }).fail(function(){
                	 $.messager.alert('错误','删除物流公司'+code+'失败!','error');
                });
            }
        });
    };
    
	
	$(function(){
		// 查询按钮绑定click事件，并click
		$('#btn_search').click(search).click();
		
		window.deleteLogistics = deleteLogistics;
	});
})(jQuery);