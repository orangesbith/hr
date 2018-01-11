package cn.mldn.exception;

@SuppressWarnings("serial")
public class InvalidateRoleException extends MemberLoginException {

	public InvalidateRoleException(String msg) {
		super(msg);
	}

}
