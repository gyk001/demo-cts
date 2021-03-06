package cn.guoyukun.demo.cts.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.guoyukun.demo.cts.dao.LogisticsDao;

/**
 * 
 * @author GuoYukun (<a href="mailto:gyk001@gmail.com">Gyk001@gmail.com</a>)
 * @version 2013-12-26
 */
@Service
public class LogisticsService {

	@Resource
	private LogisticsDao logisticsDao;
	
	public List<Map<String, Object>> getList(int page, int rows){
		return logisticsDao.getList(page, rows);
	}
	public long getDealerCount(){
		return logisticsDao.getCount();
	}
	
	public List<Map<String, Object>> getList(int page, int rows, Map<String,Object> params){
		return logisticsDao.getList(page, rows, params);
	}
	
	public long getCount(Map<String,Object> params){
		return logisticsDao.getCount(params);
	}
	
	public void delete(String id){
		logisticsDao.deleteById(id);
	}
	
	
}
