window.cv = {
	dealer_SFTY: {
		'营业中': '营业中',
		'已停业': '已停业'
	},
	dealer_QY: {
		"东北":"东北",
		"中南":"中南",
		"华北":"华北",
		"山东":"山东",
		"川渝":"川渝",
		"广东":"广东",
		"河南":"河南",
		"苏沪":"苏沪",
		"蒙晋":"蒙晋",
		"西北":"西北",
		"西南":"西南",
		"闽浙":"闽浙"
	},
	dealer_SYB:{
		"东区":"东区",
		"北区":"北区",
		"南区":"南区"
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
