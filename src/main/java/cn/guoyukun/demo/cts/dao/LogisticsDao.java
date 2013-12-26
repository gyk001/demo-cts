package cn.guoyukun.demo.cts.dao;

import org.springframework.stereotype.Repository;

@Repository
public class LogisticsDao  extends BaseDao{
	private static  final String _TABLE_NAME  = "logistics";
	private static  final String _PK_NAME  = "CODE";
	
	@Override
	protected String getTableName() {
		return _TABLE_NAME;
	}

	@Override
	protected String getPKName() {
		return _PK_NAME;
	}
	
}
