package cn.mldn.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import cn.mldn.dao.IMemberDAO;
import cn.mldn.util.dao.AbstractDAO;
import cn.mldn.vo.Member;

public class MemberDAOImpl extends AbstractDAO implements IMemberDAO {

	@Override
	public Member findById(String id) throws SQLException {
		Member vo = null ;
		String sql = "SELECT mid,name,password,lastdate FROM member WHERE mid=?" ;
		super.pstmt = super.conn.prepareStatement(sql) ;
		super.pstmt.setString(1, id);
		ResultSet rs = super.pstmt.executeQuery() ;
		if (rs.next()) {
			vo = new Member() ;
			vo.setMid(rs.getString(1));
			vo.setName(rs.getString(2));
			vo.setPassword(rs.getString(3));
			vo.setLastdate(rs.getTimestamp(4));
		}
		return vo;
	}

}
