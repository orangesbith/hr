package cn.mldn.exception;

@SuppressWarnings("serial")
public class MemberInvalidatePasswordException extends MemberLoginException {

	public MemberInvalidatePasswordException(String msg) {
		super(msg);
	}

}
