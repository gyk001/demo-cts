package cn.guoyukun.demo.cts.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.guoyukun.demo.cts.service.DealerService;

/**
 * 
 * @author GuoYukun (<a href="mailto:gyk001@gmail.com">Gyk001@gmail.com</a>)
 * @version 2013-12-26
 */
@Controller
@RequestMapping("/dealer")
public class DealerController {
	//日志对象
	private static final Logger logger = LoggerFactory.getLogger(DealerController.class);

	@Resource
	private DealerService dealerService;
	
	@RequestMapping("/list")
	@ResponseBody
	public Map<String,Object> list(HttpServletRequest req,
			@RequestParam(required=true) Integer page,
			@RequestParam(required=true) Integer rows
			){
		Map<String,Object> result =  new HashMap<String,Object>();
		try{
			final Map<String,Object> params = processParams(req);
			final List<Map<String,Object>> list = dealerService.getDealerList(page, rows, params);
			final long total = dealerService.getDealerCount(params);
			result.put("total",total);
			result.put("rows", list);
			result.put("success",true);
		}catch(Exception e){
			result.put("success",false);
		}
		return result;
	}
	
	@RequestMapping("/delete/{jxsdm}")
	@ResponseBody
	public Map<String,Object> delete(HttpServletRequest req, 
			@PathVariable(value="jxsdm") String jxsdm){
		dealerService.deleteDealer(jxsdm);
		
		return new HashMap<String,Object>(){
			private static final long serialVersionUID = 1L;
		{
			put("success",true);
		}};
	}
	
	
	@SuppressWarnings("unchecked")
	Map<String,Object> processParams(HttpServletRequest req){
		
		Map<String,Object> all = new HashMap<String,Object>();
		
		for(Entry<String,String[]> param: ((Map<String,String[]>)req.getParameterMap()).entrySet()){
			String[] value = param.getValue();
			if(value.length<1 || value[0].trim().isEmpty()){
				continue;
			}
			all.put(param.getKey(), value[0].trim());
		}
		return all;
	}
}
