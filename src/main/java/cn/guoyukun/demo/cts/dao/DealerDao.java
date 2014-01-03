package cn.guoyukun.demo.cts.dao;

import java.util.Map;
import java.util.Map.Entry;

import org.springframework.stereotype.Repository;

@Repository
public class DealerDao  extends BaseDao{
	private static  final String _TABLE_NAME  = "dealer";
	private static  final String _PK_NAME  = "JXSDM";
	
	@Override
	protected String getTableName() {
		return _TABLE_NAME;
	}

	@Override
	protected String getPKName() {
		return _PK_NAME;
	}
	
	public void add(Map <String,Object> info){
		super.getJdbcTemplate().update("insert into dealer (" +
				"JXSDM," +
				"JXSMC," +
				"SYB," +
				"SHENG," +
				"SHI," +
				"QY," +
				"SFTY" +
				") values(?,?,?,?,?,?,?)", 
			info.get("JXSDM"),
			info.get("JXSMC"),
			info.get("SYB"),
			info.get("SHENG"),
			info.get("SHI"),
			info.get("QY"),
			info.get("SFTY")
		);
	}
	
	public void edit(Map <String,Object> info){
		super.getJdbcTemplate().update("update dealer set "+
				"JXSMC=?,"+
				"SYB=?,"+
				"SHENG=?,"+
				"SHI=?,"+
				"QY=?,"+
				"SFTY=?"+
				" where JXSMC=?", 
			info.get("JXSMC"),
			info.get("SYB"),
			info.get("SHENG"),
			info.get("SHI"),
			info.get("QY"),
			info.get("SFTY"),
			info.get("JXSDM")
		);
	}
	
}
