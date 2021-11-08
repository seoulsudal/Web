package login;

import java.sql.Date;

public class membershipVO {
	
	private String name;
	private Date birthday;
	private String calendar;
	private String id;
	private String pwd;
	private String email;
	private String notice;
	private String hometel;
	private String phone;
	private String message;
	private String address;
	private String job;
	private String root;
	
	public membershipVO() {
		super();
		System.out.println("membershipVO 생성자 호출");
	}

	public membershipVO(String name, Date birthday, String calendar, String id, String pwd, String email, String notice,
			String hometel, String phone, String message, String address, String job, String root) {
		super();
		this.name = name;
		this.birthday = birthday;
		this.calendar = calendar;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.notice = notice;
		this.hometel = hometel;
		this.phone = phone;
		this.message = message;
		this.address = address;
		this.job = job;
		this.root = root;
		System.out.println("membershipVO 생성자 호출");
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getCalendar() {
		return calendar;
	}

	public void setCalendar(String calendar) {
		this.calendar = calendar;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getHometel() {
		return hometel;
	}

	public void setHometel(String hometel) {
		this.hometel = hometel;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}
	
}
