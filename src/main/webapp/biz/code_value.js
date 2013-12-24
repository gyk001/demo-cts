window.cv = {
	dealer_state: {
		'open': '营业中',
		'close': '已停业'
	},
	dealer_region: {
		'华北': '华北',
		'苏沪': '苏沪'
	}
};
function cv2combo(cv, hasAll){ 
	var arr =  $.map(cv, function(text,value){
		return {
			value:value,
			text:text
		};
	});
	if(hasAll){
		//添加[全部]选项(value不能为空字符串，必须有空格，否则会被忽略)
		arr.unshift({
			value:' ',
			text:'全部',
			selected:true
		});
	}
	return arr;
}
