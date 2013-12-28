package cn.guoyukun.demo.cts.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PremController {

	@RequestMapping("/unauth")
	@ResponseBody
	public Map<String,Object> unAuth(HttpServletRequest req,
			HttpServletResponse resp){
		resp.setStatus(403);
		Map<String ,Object> result = new HashMap<String,Object>();
		result.put("success", false);
		return result;
	}
	
	@RequestMapping("/role")
	@ResponseBody
	public Map<String,Object> getPerm(HttpServletRequest req){
		Map<String,Object> perm = new HashMap<String,Object>();
		perm.put("role", (String)req.getAttribute("role"));
		return perm;
	}
}
