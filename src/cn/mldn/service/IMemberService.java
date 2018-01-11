package cn.mldn.service;

import java.util.Map;

import cn.mldn.exception.MemberLoginException;

public interface IMemberService {
	/**
	 * 实现用户登录操作处理
	 * @param mid 用户名
	 * @param password 密码
	 * @return 返回的数据包含有如下内容：<br>
	 * 1、key = flag、value = 保存登录成功或失败的标记（boolean型）；<br>
	 * 2、key = member、value = Member对象（包含有姓名、最后一次登录日期）；<br>
	 * @throws MemberLoginException 可能抛出如下的异常信息：<br>
	 * 1、cn.mldn.exception.MemberNoExistsException 用户名不存在；<br>
	 * 2、cn.mldn.exception.MemberInvalidatePasswordException 密码错误；<br>
	 * 3、cn.mldn.exception.InvalidateRoleException 用户没有对应的角色。<br>
	 */
	public Map<String, Object> login(String mid, String password) throws MemberLoginException;
}
