package cn.guoyukun.demo.cts.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public abstract class BaseDao {
	//日志对象
	private static final Logger logger = LoggerFactory.getLogger(BaseDao.class);
	protected String tableName;
	private final String TRUE_CON= " WHERE 1=1 ";
	private final String SEL_COUNT = "SELECT COUNT(*) FROM "+getTableName()+TRUE_CON;
	private final String SEL_LIST = "SELECT * FROM "+getTableName()+TRUE_CON ;
	private final String PAGING = " LIMIT ?,?";
	private final String DEL = "DELETE FROM "+getTableName()+" WHERE "+getPKName()+"=?";
	
	@Resource
	private JdbcTemplate jdbcTemplate;
	
	public void deleteById(String id){
		jdbcTemplate.update(DEL, id);
	}
	
	public long getDealerCount(){
		return getDealerCount(null);
	}
	
	@SuppressWarnings("deprecation")
	public long getDealerCount(Map<String,Object> cond){
		List<Object> values = new ArrayList<Object>();
		StringBuffer sql = new StringBuffer(SEL_COUNT);
		if(cond!=null){
			cond.remove("rows");
			cond.remove("page");
			for(Entry<String,Object> entry: cond.entrySet()){
				String name = entry.getKey();
				Object value = entry.getValue();
				if(name==null || value==null ){
					continue;
				}
				if(value instanceof String && ((String)value).trim().isEmpty()){
					continue;	
				}
				sql.append(" AND ").append(name).append(" like ? ");
				values.add("%"+value+"%");
			}	
		}
		logger.debug("SQL:[{}],values:{}",sql, values.toArray());
		return jdbcTemplate.queryForLong(sql.toString(),values.toArray());
	}

	public List<Map<String, Object>> getDealerList(int page,int rows){
		return getDealerList(page, rows, null);
	}
	
	public List<Map<String, Object>> getDealerList(int page,int rows, Map<String,Object> cond){
		int start = (page-1) * rows;
		List<Object> values = new ArrayList<Object>();
		StringBuffer sql = new StringBuffer(SEL_LIST);
		if(cond!=null){
			cond.remove("rows");
			cond.remove("page");
			for(Entry<String,Object> entry: cond.entrySet()){
				String name = entry.getKey();
				Object value = entry.getValue();
				if(name==null || value==null ){
					continue;
				}
				if(value instanceof String && ((String)value).trim().isEmpty()){
					continue;	
				}
				sql.append(" AND ").append(name).append(" like ? ");
				values.add("%"+value+"%");
			}	
		}
		sql.append(PAGING);
		values.add(start);
		values.add(rows);
		logger.debug("SQL:[{}],values:{}",sql, values.toArray());
		return jdbcTemplate.queryForList(sql.toString(), values.toArray());
	}
	
	private String makeSelectSQL(String select, Map<String,Object> cond, boolean paging, long start, long stop){
		List<Object> values = new ArrayList<Object>();
		StringBuffer sql = new StringBuffer(select);
		if(cond!=null){
			cond.remove("rows");
			cond.remove("page");
			for(Entry<String,Object> entry: cond.entrySet()){
				String name = entry.getKey();
				Object value = entry.getValue();
				if(name!=null && value!=null){
					sql.append(" AND ").append(name).append("=? ");
					values.add(value);
				}
			}	
		}
		if(paging){
			sql.append(PAGING);
			values.add(start);
			values.add(stop);
		}
		logger.debug("SQL:[{}],values:{}",sql, values.toArray());
		return sql.toString();
	}
	
	protected abstract String getTableName();
	protected abstract String getPKName();
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
}
