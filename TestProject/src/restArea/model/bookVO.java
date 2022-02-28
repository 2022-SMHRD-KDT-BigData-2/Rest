package restArea.model;

// book VO (Ã¥ ÃßÃµ)
public class bookVO {
	private int book_seq; 
	private String bname;
	private String bstory;
	private String burl;
	private String buyurl;
	
	public bookVO(int book_seq, String bname, String bstory, String burl, String buyurl) {
		this.book_seq = book_seq;
		this.bname = bname;
		this.bstory = bstory;
		this.burl = burl;
		this.buyurl = buyurl;
	}

	public int getBook_seq() {
		return book_seq;
	}

	public void setBook_seq(int book_seq) {
		this.book_seq = book_seq;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBstory() {
		return bstory;
	}

	public void setBstory(String bstory) {
		this.bstory = bstory;
	}

	public String getBurl() {
		return burl;
	}

	public void setBurl(String burl) {
		this.burl = burl;
	}

	public String getBuyurl() {
		return buyurl;
	}

	public void setBuyurl(String buyurl) {
		this.buyurl = buyurl;
	}
}
