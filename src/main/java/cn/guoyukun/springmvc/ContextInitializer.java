package cn.guoyukun.springmvc;

import java.io.IOException;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.core.env.AbstractEnvironment;
import org.springframework.web.context.ConfigurableWebApplicationContext;

/**
 * 
 * @author GuoYukun (<a href="mailto:gyk001@gmail.com">Gyk001@gmail.com</a>)
 * @version 2014-1-3
 */
public class ContextInitializer implements ApplicationContextInitializer<ConfigurableWebApplicationContext> {
	//日志对象
	private static final Logger logger = LoggerFactory.getLogger(ContextInitializer.class);
	@Override
	public void initialize(ConfigurableWebApplicationContext applicationContext) {
		logger.debug("==========init=======");
		Properties prop = new Properties();
		try {
			prop.load(ContextInitializer.class.getResourceAsStream("/config.properties"));
			String profileActive = prop.getProperty("profile.active");
			logger.debug("激活配置:{}",profileActive);
			System.setProperty(AbstractEnvironment.ACTIVE_PROFILES_PROPERTY_NAME, profileActive);
			logger.debug("==========init=======");
		} catch (IOException e) {
			logger.error("读取主配置文件失败！",e);
		}
		
		
	}  


}
