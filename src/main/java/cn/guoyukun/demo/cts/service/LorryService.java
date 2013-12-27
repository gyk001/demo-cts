package cn.guoyukun.demo.cts.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.guoyukun.demo.cts.dao.LorryDao;

/**
 * 
 * @author GuoYukun (<a href="mailto:gyk001@gmail.com">Gyk001@gmail.com</a>)
 * @version 2013-12-26
 */
@Service
public class LorryService {

	@Resource
	private LorryDao lorryDao;
	
	public List<Map<String, Object>> getList(int page, int rows){
		return lorryDao.getList(page, rows);
	}
	public long getCount(){
		return lorryDao.getCount();
	}
	
	public List<Map<String, Object>> getList(int page, int rows, Map<String,Object> params){
		return lorryDao.getList(page, rows, params);
	}
	
	public long getCount(Map<String,Object> params){
		return lorryDao.getCount(params);
	}
	
	public void delete(String id){
		lorryDao.deleteById(id);
	}
	
	
}
