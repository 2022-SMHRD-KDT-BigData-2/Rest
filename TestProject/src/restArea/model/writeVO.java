package restArea.model;

// write_board VO (±€ ¿€º∫)
public class writeVO {
	private int write_seq;
	private String id;
	private String category;
	private String wdate;
	private String title;
	private String wcontent;
	private int joymsg;
	private int delmsg;
	
	public writeVO(int write_seq, String id, String category, String wdate, String title, String wcontent, int joymsg, int delmsg) {
		this.write_seq = write_seq;
		this.id = id;
		this.category = category;
		this.wdate = wdate;
		this.title = title;
		this.wcontent = wcontent;
		this.joymsg = joymsg;
		this.delmsg = delmsg;	
	}

	public writeVO(String title, String wcontent) {
		this.title = title;
		this.wcontent = wcontent;
	}

	public int getWrite_seq() {
		return write_seq;
	}

	public void setWrite_seq(int write_seq) {
		this.write_seq = write_seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getWcontent() {
		return wcontent;
	}

	public void setWcontent(String wcontent) {
		this.wcontent = wcontent;
	}

	public int getJoymsg() {
		return joymsg;
	}

	public void setJoymsg(int joymsg) {
		this.joymsg = joymsg;
	}

	public int getDelmsg() {
		return delmsg;
	}

	public void setDelmsg(int delmsg) {
		this.delmsg = delmsg;
	}
}
