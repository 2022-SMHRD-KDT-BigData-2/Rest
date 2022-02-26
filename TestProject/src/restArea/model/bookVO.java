package restArea.model;

// book VO (Ã¥ ÃßÃµ)
public class bookVO {
	private int book_seq;
	private String category;
	private String bname;
	private String bstory;
	private String burl;
	
	public bookVO(int book_seq, String category, String bname, String bstory, String burl) {
		super();
		this.book_seq = book_seq;
		this.category = category;
		this.bname = bname;
		this.bstory = bstory;
		this.burl = burl;
		
		
	}

	public int getBook_seq() {
		return book_seq;
	}

	public void setBook_seq(int book_seq) {
		this.book_seq = book_seq;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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
	
	
}
