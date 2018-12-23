package member.model;

public class Member {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String addr;
	private String phone;
	
	
	public Member(String id, String pw, String name, String email, String addr, String phone) {

		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
	}	

	//濡쒓렇�씤 �깮�꽦�옄
	public Member(String id, String pw) {
		
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public boolean matchPassword(String pwd) {
		return pw.equals(pwd);
	}

	public void changePassword(String newPwd) {
		this.pw = newPwd;
	}
	public void changeinfo(String name, String email,String addr,String phone,String pw){
		this.name = name;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.pw=pw;
	}

}
