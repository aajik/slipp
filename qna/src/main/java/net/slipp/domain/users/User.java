package net.slipp.domain.users;

public class User {
	private String userId;
	private String password;
	private String name;
	private String emil;
	
	public User() {
		
	}
	
	public User(String userId, String password, String name, String emil) {
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.emil = emil;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmil() {
		return emil;
	}
	public void setEmil(String emil) {
		this.emil = emil;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", password=" + password + ", name=" + name + ", emil=" + emil + "]";
	}
	
}
