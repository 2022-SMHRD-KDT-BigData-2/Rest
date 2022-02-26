package restArea.model;

// user_info VO (회원 정보)
public class userVO {
	private String id;
	private String pw;
	private String rcount;
	private String gcount;
	
	public userVO(String id, String pw, String rcount, String gcount) {
		this.id = id;
		this.pw = pw;
		this.rcount = rcount;
		this.gcount = gcount;
	}

	public userVO(String id, String pw) {
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

	public String getRcount() {
		return rcount;
	}

	public void setRcount(String rcount) {
		this.rcount = rcount;
	}

	public String getGcount() {
		return gcount;
	}

	public void setGcount(String gcount) {
		this.gcount = gcount;
	}
}
