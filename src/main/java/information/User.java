package information;

import java.io.Serializable;

public class User implements Serializable{

	// 멤버 변수
	private String name;
	private String email;
	private String id;
	private String pw;
	private String pw_confirm;
	private String phone_num;
	private String person_phone_num;
	
	// 생성자
	public User() { }
	public User(String name, String email, String id, String pw, String pw_confirm, String phone_num,
			String person_phone_num) {
		super();
		this.name = name;
		this.email = email;
		this.id = id;
		this.pw = pw;
		this.pw_confirm = pw_confirm;
		this.phone_num = phone_num;
		this.person_phone_num = person_phone_num;
	}
	
	// getter
	public String getName() { return name;}
	public String getEmail() { return email; }
	public String getId() { return id; }
	public String getPw() { return pw; }
	public String getPw_confirm() { return pw_confirm; }
	public String getPhone_num() { return phone_num; }
	public String getPerson_phone_num() { return person_phone_num; }
	
	// setter
	public void setName(String name) { this.name = name; }
	public void setEmail(String email) { this.email = email; }
	public void setId(String id) { this.id = id; }
	public void setPw(String pw) { this.pw = pw; }
	public void setPw_confirm(String pw_confirm) { this.pw_confirm = pw_confirm; }
	public void setPhone_num(String phone_num) { this.phone_num = phone_num; }
	public void setPerson_phone_num(String person_phone_num) { this.person_phone_num = person_phone_num; }

}