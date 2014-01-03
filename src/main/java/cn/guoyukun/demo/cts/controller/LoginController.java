package cn.guoyukun.demo.cts.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import cn.guoyukun.demo.cts.service.LoginService;
import cn.guoyukun.demo.cts.shiro.CtsRealm;

@Controller
public class LoginController {
	//日志对象
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	public static final String PATH_LOGIN= "login";
	public static final String PATH_DOLOGIN= "dologin";
	public static final String PATH_LOGOUT= "logout";
	
	@Resource
	LoginService loginService;
	
	/**
	 * 登录页面
	 * @return
	 */
	@RequestMapping("/"+PATH_LOGIN)
	public ModelAndView login(){
		if(loginService.isLogin()){
			//如果已经登录则直接进入系统，即登录后不退出是不应该看到登录界面的
			return goMainPage();
		}
		return new ModelAndView(PATH_LOGIN);
	}
	
	/**
	 * 表单方式登录
	 * @param request
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping("/"+PATH_DOLOGIN)
	public ModelAndView doLogin4Form(HttpServletRequest request,
			@RequestParam(required=false) String username,
			@RequestParam(required=false)  String password,
			@RequestParam(required=false)  String role){
		try {
			loginService.login(username, password);
			// 用户名
			request.getSession().setAttribute("username", username);
			// 角色
			request.getSession().setAttribute("roleType", role);
			if("admin".equals(role)){
				List<String> roles = new ArrayList<String>(){{
					add("dealer");
					add("logistics");
				}};
				CtsRealm.setSession("role",roles);
			}else{
				CtsRealm.setSession("role",role);
			}
		} catch (AuthenticationException e) {
			return goLoginPage(); 
		}
		return goMainPage();
	}
	
	/**
	 * 用户登出
	 */
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request){
		 SecurityUtils.getSubject().logout();
		 return goLoginPage();
	}
	
	/*
	@RequestMapping(value="/"+PATH_DOLOGIN)
	public Map<String,Object> doLogin(HttpServletRequest request,
			@RequestParam(required=false) String username,
			@RequestParam(required=false)  String password){
		Map<String,Object> result = new HashMap<String,Object>();
		
		result.put("success", false);
		return result;
		//return new ModelAndView(InternalResourceViewResolver.FORWARD_URL_PREFIX+PATH_LOGIN);
	}
	*/
	
	/**
	 * 跳转主页面
	 * @return
	 */
	private ModelAndView goMainPage(){
		return new ModelAndView(new RedirectView(""));
	}
	
	/**
	 * 跳转登录视图
	 * @param error
	 * @return
	 */
	private ModelAndView goLoginPage(){
		return new ModelAndView(new RedirectView(PATH_LOGIN));
	}

}