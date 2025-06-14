package model;

public class LoginLogic {
	public boolean execute(User user) {
		if(user.getName() != null && !user.getName().isEmpty() && user.getPass().equals("1234")) {
			return true;
		}
		return false;
	}

}
