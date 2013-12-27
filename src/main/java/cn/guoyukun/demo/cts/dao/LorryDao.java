package cn.guoyukun.demo.cts.dao;

import org.springframework.stereotype.Repository;

@Repository
public class LorryDao  extends BaseDao{
	private static  final String _TABLE_NAME  = "lorry";
	private static  final String _PK_NAME  = "ID";
	
	@Override
	protected String getTableName() {
		return _TABLE_NAME;
	}

	@Override
	protected String getPKName() {
		return _PK_NAME;
	}
	
}
