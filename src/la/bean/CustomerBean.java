package la.bean;

import java.io.Serializable;

public class CustomerBean implements Serializable {
	private int code;
	private String name;
	private String address;
	private String tel;
	private String email;

	public CustomerBean(int code, String name, String address, String tel,
			String email) {
		this.code = code;
		this.name = name;
		this.address = address;
		this.tel = tel;
		this.email = email;
	}

	public CustomerBean() {

	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
