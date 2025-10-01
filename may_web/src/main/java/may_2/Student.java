package may_2;

public class Student {
	private String fullName;
	private String email;
	private String password;
	private String course;
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public Student(String fullName, String email, String password, String course) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.course = course;
	}
	
	

}
