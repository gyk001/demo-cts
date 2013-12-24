(function($){
	'use strict';
	/**
	 * 判断iframe是否跨域
	 */
	var isCrossDomain=function(iframe){
		// 框架页全路径
		var iframeUrl ;
		try{
			iframeUrl = iframe.contentWindow.location.href;
		}catch(e){
			// 非WebKit浏览器跨域，
			return true;
		}
		if(!iframeUrl && console && console.log){
			console.log('WebKit无法捕获跨域异常，会打印报错信息！');
			return true;
		}
		return false;
	};
	
	/**
	 * 框架加载以后更新hash
	 * 如果跨域的话就不更新了（无法获取框架的URL，所以没法更新）
	 */
	var fixHashWhenIframeLoad = function(event){
		var iframe = event.currentTarget;
		if(isCrossDomain(iframe)){
			return;
		}
		// 没有跨域，开始处理。。。
		var iframeUrl = iframe.contentWindow.location.href;
		var windowBase = $.address.baseURL()+'/';
		var iframeBase = iframe.baseURI;
		// 框架内网页和浏览器页面属于同一应用
		if( iframeUrl.indexOf(windowBase)!==0){
			return;
		}
		// 框架页路径，不包含应用上下文，如： ["tab", "module", "res", "jsp"]
		var pathArray = iframeUrl.substring(iframeBase.length).split(/\W/);
		if(pathArray.shift()!=='tab' || pathArray.pop()!=='jsp'){
			return;
		}
		$.address.history(false).value(pathArray.join('/'));
		// 业务路径有多层
		if(pathArray.length>1){
			// 拼接页面标题
			var subTitle = iframe.contentDocument.title;
			var titles = $.address.title().split(' | ');
			titles[2] = subTitle;
			titles.length=3;
			var title = titles.join(' | ');
			$.address.title(title);
		}
	};
	
	/**
	 * 校验框架内的页面地址是否是url
	 */
	var fixIframeUrl = function(iframe,url){
		if(isCrossDomain(iframe)){
			return;
		}
		var iframeUrl = iframe.contentWindow.location.href;
		// 框架短地址
		var shortUrl = iframeUrl.substring(iframeUrl.length-url.length);
		// 目标地址和原地址一样
		if(url===shortUrl){
			return;
		}
		// 目标地址和原地址不一样，切换到目标地址
		$(iframe).attr('src',url);
	};
	
	/**
	 * 创建新选项卡
	 * @param tabId    选项卡id
	 * @param title    选项卡标题
	 * @param url      选项卡远程调用路径
	 */
	var addBizTab = function(tabId,title,url,closable){
		//如果当前id的tab不存在则创建一个tab
		if($("#"+tabId).length ==0){
			var name = 'iframe_'+tabId;
			$('#layout_tabs').tabs('add',{
				title: title,         
				closable:closable ,
				cache : false,
				//注：使用iframe即可防止同一个页面出现js和css冲突的问题
				content : '<iframe name="'+name+'" id="'+tabId+'" src="'+url+'" width="100%" height="100%" frameborder="0" scrolling="auto" ></iframe>'
			});
			//框架页切换后修正地址栏hash
			$('#'+tabId).load(fixHashWhenIframeLoad);
		}else{
			fixIframeUrl($('#'+tabId).get(0), url);
			$('#layout_tabs').tabs('select',title);
		}
		return true;
	};
	
	/**
	 * 动态更新底栏的服务器时间和启动时间
	 */
	var updateTime = function(lastServerMoment, appStartMoment){
		var time = lastServerMoment;
		var sec = moment.duration(1, 's');
		setInterval(function(){
			time.add(sec);
			$('#footer_server_time').text(time.format('YYYY-MM-DD HH:mm:ss'));
			$('#footer_start_time').text(appStartMoment.from(time)+' ('+appStartMoment.format('YYYY-MM-DD HH:mm:ss')+')');
		},1000);
	};


	var clickMenuLink = function($link, targetUrl){
		// 锚点信息不对会发生$link不存在的情况
		if(!$link || $link.length===0){
			// 直接忽略，也就是显示空白框架
			return;
		}
		var title = $link.text();
		
		if(! targetUrl){
			targetUrl = $link.data('url');
			if(!targetUrl){
				targetUrl = 'tab/'+$link.attr('id').replace(/^menu_/,'')+'.jsp';
			}
		}		
		var id = $link.attr('id').replace(/^menu_/,'tab_');
		addBizTab(id,title,targetUrl,true);
		
	}; 
	var clickMenuLinkBySelecter = function(sel,targetUrl){
		clickMenuLink($(sel),targetUrl);
	};
	
	var enableDeepLink = function(){
		// Initializes plugin features
	    $.address.strict(false).wrap(true);
	    
	    if ($.address.value() == '') {
	        $.address.history(false).value('dealer').history(true);
	    }

		 $.address.init(function(event) {
	         //插件初始化,一般这里调用 $('.nav a').address(); 实现链接单击监听
	     }).change(function(event) {
	    	 //alert(3);
	    	 var module = event.value.split(/\W/)[0];
	        //当页面地址更改的时候调用,即#号之后的地址更改
	    	 var current = $('#menu_'+module);
	        // 更新页面标题
	        $.address.title($.address.title().split(' | ')[0] + ' | ' + current.text());
	     }).internalChange(function(event) {
	         //内部地址更改,即非通过手动更改URL#号后的内容
	    	 //alert(1);
	     }).bind('externalChange',function(event) {
	    	 //alert(2);
	         //外部地址更改,手动修改URL#号后的内容
	    	 var sel = '#menu_'+event.pathNames[0];
	    	 if(event.pathNames.length>1){
	    		 var url = 'tab/'+event.path+'.jsp';
	    		 clickMenuLinkBySelecter(sel,url);
	    	 }else{
	    		 clickMenuLinkBySelecter(sel);
	    	 }
	     });	
	};
	 
	$(function() {
		
		moment.lang('zh-cn');
		// 开启
		enableDeepLink();
		//左侧菜单点击事件
		$('#layout_left_menu ul a').click(function(){
			clickMenuLink($(this));
		});
		
		window.addBizTab = addBizTab;
		window.updateTime=updateTime;
	});
})(jQuery);
