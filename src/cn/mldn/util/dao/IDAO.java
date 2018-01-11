package cn.mldn.util.dao;

import java.sql.SQLException;

/**
 * 公共的DAO方法描述
 * @author mldn
 * @param <K> 主键类型
 * @param <V> VO类型
 */
public interface IDAO<K, V> {
	/**
	 * 根据ID取得数据的完整内容
	 * @param id 表的ID
	 * @return 对象以VO的形式返回，如果没有数据则返回null
	 * @throws SQLException
	 */
	public V findById(K id) throws SQLException ;
}
