package model;

public class Member {
    private int memberId;
    private String name;
    private String address;
    public Member(int memberId, String name, String address, String phone) {
		super();
		this.memberId = memberId;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	private String phone;
    // constructors, getters, setters
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
