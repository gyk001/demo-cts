(function($){
	//总记录数
	//取消总数记忆，修改查询条件会使结果不正确
	var total = null;
	
	//查询前，如果有总数的话把总数添加的查询参数里，后台就不需要查询count了
	var beforLoad = function(param){
		if(! param.total && total){
			//param.total=total;
		}
		param.VIN = $('#search_id').val();
		param.logistics = $('#search_logistics').combobox('getValue');
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
		var btn = '&nbsp;&nbsp;<a href="javascript:deleteCar(&apos;'+code+'&apos;);" class="easyui-linkbutton" data-options="iconCls:&apos;icon-cancel&apos;">删除</a>';
		return btn;
	};
	var formatLogistics = function(val, row){
		if(val){
			return cv.logistics[val];
		}else{
			return '--';
		}
	};
	//操作列
	var formatAction = function (val,row){
		return makeDeleteBtn(row.VIN);
	};
	
	var opt = {
			singleSelect:true,
			rownumbers:true,
			pagination:true,
			onBeforeLoad: beforLoad,
			onLoadSuccess: loadSuccess, 
			onLoadError:loadError,
			toolbar:'#toolbar', 
			url:'lorry/list',
			//pageList:[3,6,12],
			columns:[
						[
						 	{field:'id',width:90,title:'物流车编码'},
							{field:'logistics',width:120,title:'物流公司',formatter:formatLogistics},
							{field:'action',width:160,title:'操作',formatter:formatAction}
					 	]
					]
	};
	
	var search = function(){
		$('#tbl_list').datagrid(opt);
	};
	
	
	
	var deleteCar = function (vin){
        $.messager.confirm('提示','确认删除物流公司('+vin+')?',function(r){
            if (r){
                $.get('car/delete/'+vin,function(){
                    search();
                }).fail(function(){
                	 $.messager.alert('错误','删除物流公司'+vin+'失败!','error');
                });
            }
        });
    };
    
	
	$(function(){
		// 初始化下拉框：区域
		$('#search_logistics').combobox({
			url: 'logistics/list?page=1&rows=10',
			loadFilter:function(data){return data.rows},
	        method: 'get',
	        valueField: 'CODE',
	        textField: 'NAME',
	        panelHeight:'auto'
		});
		
		// 查询按钮绑定click事件，并click
		$('#btn_search').click(search).click();
		
		window.deleteCar = deleteCar;
	});
})(jQuery);