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

import cn.guoyukun.demo.cts.service.CarService;

/**
 * 
 * @author GuoYukun (<a href="mailto:gyk001@gmail.com">Gyk001@gmail.com</a>)
 * @version 2013-12-26
 */
@Controller
@RequestMapping("/car")
public class CarController {
	//日志对象
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);

	@Resource
	private CarService carService;
	
	@RequestMapping("/list")
	@ResponseBody
	public Map<String,Object> list(HttpServletRequest req,
			@RequestParam(required=true) Integer page,
			@RequestParam(required=true) Integer rows
			){
		
		final List<Map<String,Object>> list = carService.getList(page, rows, processParams(req));
		
		return new HashMap<String,Object>(){
			private static final long serialVersionUID = 1L;
		{
			put("total",carService.getDealerCount());
			put("success",true);
			put("rows", list);
		}};
	}
	
	@RequestMapping("/delete/{id}")
	@ResponseBody
	public Map<String,Object> delete(HttpServletRequest req, 
			@PathVariable String id){
		carService.delete(id);
		
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
