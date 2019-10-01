package vo;

import java.util.Date;

public class BoardVO {

	String userid;
	String bid;
	
	String content;
	String wdate;

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}


	public BoardVO(String userid, String name, String password,  String content, String wdate) {
		super();
		this.userid = userid;

		this.content = content;
		this.wdate = wdate;
	}

	public BoardVO() {
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	@Override
	public String toString() {
		return "BoardVO [userid=" + userid +  ", content=" + content + ", wdate=" + wdate
				+ "]";
	}



}
