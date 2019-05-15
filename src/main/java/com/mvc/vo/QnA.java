package com.mvc.vo;

public class QnA {
	String num;
	String id;
	String wdate;
	String title;
	String question;	
	String answer;
	
	public QnA() {
		super();
	}

	public QnA(String num, String id, String wdate, String title, String question) {
		super();
		this.num = num;
		this.id = id;
		this.wdate = wdate;
		this.title = title;
		this.question = question;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getquestion() {
		return question;
	}

	public void setquestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "QnA [num=" + num + ", id=" + id + ", wdate=" + wdate + ", title=" + title + ", question=" + question
				+ ", answer=" + answer + "]";
	}
	
	

}
