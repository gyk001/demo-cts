package cn.guoyukun.demo.cts.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	//日志对象
	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	public boolean isLogin(){
		//获取当前的Subject
		Subject currentUser = SecurityUtils.getSubject();
		//已经登录过，不用再次认证
		return currentUser.isAuthenticated();
	}
	
	public static String getLoginRoleName(HttpServletRequest req){
		String role = (String) req.getAttribute("role");
		Map<String,String> roles = new HashMap<String,String>(){{
			put("admin","管理员");
			put("dealer","物流公司");
			put("logistics","经销商");
		}};
		return roles.get(role);
	}
	
	public void login(String username, String password) throws AuthenticationException{
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		token.setRememberMe(true);
		logger.trace("为了验证登录用户而封装的token为" + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));
		logger.trace("对用户[" + username + "]进行登录验证..验证开始");
		try {
			//获取当前的Subject
			Subject currentUser = SecurityUtils.getSubject();
			
			//在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查
			//所以这一步在调用login(token)方法时,它会走到MyRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法
			currentUser.login(token);
			logger.debug("用户[{}]进行登录验证通过",username);
			return ;
		}catch(UnknownAccountException e){
			logger.warn("对用户[" + username + "]进行登录验证..验证未通过,未知账户");
			throw e;
		}catch(IncorrectCredentialsException e){
			logger.warn("对用户[" + username + "]进行登录验证..验证未通过,错误的凭证");
			throw e;
		}catch(LockedAccountException e){
			logger.warn("对用户[" + username + "]进行登录验证..验证未通过,账户已锁定");
			throw e;
		}catch(ExcessiveAttemptsException e){
			logger.warn("对用户[" + username + "]进行登录验证..验证未通过,错误次数过多");
			throw e;
		}catch(AuthenticationException e){
			//通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			logger.warn("对用户[" + username + "]进行登录验证..验证未通过");
			throw e;
		}finally{
			token.clear();
		}
	}
}
