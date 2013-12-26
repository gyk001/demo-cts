package cn.guoyukun.demo.cts.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.guoyukun.demo.cts.dao.DealerDao;

/**
 * 
 * @author GuoYukun (<a href="mailto:gyk001@gmail.com">Gyk001@gmail.com</a>)
 * @version 2013-12-26
 */
@Service
public class DealerService {

	@Resource
	private DealerDao dealerDao;
	
	public List<Map<String, Object>> getDealerList(int page, int rows){
		return dealerDao.getList(page, rows);
	}
	public long getDealerCount(){
		return dealerDao.getCount();
	}
	
	public List<Map<String, Object>> getDealerList(int page, int rows, Map<String,Object> params){
		return dealerDao.getList(page, rows, params);
	}
	
	public long getDealerCount(Map<String,Object> params){
		return dealerDao.getCount(params);
	}
	
	public void deleteDealer(String jxsdm){
		dealerDao.deleteById(jxsdm);
	}
	
	
}
