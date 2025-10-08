package model;

import java.util.Date;

public class IssueRecord {
    private int id;
    private int bookId;
    private int memberId;
    private Date issueDate;
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	public double getFine() {
		return fine;
	}
	public void setFine(double fine) {
		this.fine = fine;
	}
	public IssueRecord(int id, int bookId, int memberId, Date issueDate, Date returnDate, double fine) {
		super();
		this.id = id;
		this.bookId = bookId;
		this.memberId = memberId;
		this.issueDate = issueDate;
		this.returnDate = returnDate;
		this.fine = fine;
	}
	private Date returnDate;
    private double fine;
    // constructors, getters, setters
}
