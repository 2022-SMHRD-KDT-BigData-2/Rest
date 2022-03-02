package restArea.model;

// answer_board VO (±€ ¥‰¿Â)
public class answerVO {
	private int answer_seq;
	private String id;
	private int write_seq;
	private String acontent;
	private String areport;
	private String sym;

	public answerVO(int answer_seq, String id, int write_seq, String acontent, String areport, String sym) {
		this.answer_seq = answer_seq;
		this.id = id;
		this.write_seq = write_seq;
		this.acontent = acontent;
		this.areport = areport;
		this.sym = sym;
	}

	public answerVO(String id, int write_seq, String acontent) {
		this.id = id;
		this.write_seq = write_seq;
		this.acontent = acontent;
	}

	public answerVO(int write_seq) {
		this.write_seq = write_seq;
	}

	public int getAnswer_seq() {
		return answer_seq;
	}

	public void setAnswer_seq(int answer_seq) {
		this.answer_seq = answer_seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getWrite_seq() {
		return write_seq;
	}

	public void setWrite_seq(int write_seq) {
		this.write_seq = write_seq;
	}

	public String getAcontent() {
		return acontent;
	}

	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}

	public String getAreport() {
		return areport;
	}

	public void setAreport(String areport) {
		this.areport = areport;
	}

	public String getSym() {
		return sym;
	}

	public void setSym(String sym) {
		this.sym = sym;
	}

}