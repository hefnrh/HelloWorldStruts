package org.nibonn.helloworldstruts;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class UserLogin {
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String login() {
		ActionContext context = ActionContext.getContext();
		context.put("from", "struts");
		context.put("reqMethod", ServletActionContext.getRequest().getMethod());
		if (username.equals(password))
			return Action.SUCCESS;
		else
			return Action.LOGIN;
	}
}
