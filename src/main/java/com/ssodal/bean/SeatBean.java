package com.ssodal.bean;

public class SeatBean {

	private int fk_code;
	private String content_date;
	private int content_seq;
	private int select_line;
	private int select_row;
	private String seat_class;
	private String user_id;
	private String book_date;
	public int getFk_code() {
		return fk_code;
	}
	public void setFk_code(int fk_code) {
		this.fk_code = fk_code;
	}
	public String getContent_date() {
		return content_date;
	}
	public void setContent_date(String content_date) {
		this.content_date = content_date;
	}
	public int getContent_seq() {
		return content_seq;
	}
	public void setContent_seq(int content_seq) {
		this.content_seq = content_seq;
	}
	public int getSelect_line() {
		return select_line;
	}
	public void setSelect_line(int select_line) {
		this.select_line = select_line;
	}
	public int getSelect_row() {
		return select_row;
	}
	public void setSelect_row(int select_row) {
		this.select_row = select_row;
	}
	public String getSeat_class() {
		return seat_class;
	}
	public void setSeat_class(String seat_class) {
		this.seat_class = seat_class;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getBook_date() {
		return book_date;
	}
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
}
