package restArea.model;

// recomm VO (±Û ÃßÃµ)
public class recommVO {
	private int recomm_seq;
	private String rcontecnt;
	
	public recommVO(int recomm_seq, String rcontecnt) {
		this.recomm_seq = recomm_seq;
		this.rcontecnt = rcontecnt;
	}

	public int getRecomm_seq() {
		return recomm_seq;
	}

	public void setRecomm_seq(int recomm_seq) {
		this.recomm_seq = recomm_seq;
	}

	public String getRcontecnt() {
		return rcontecnt;
	}

	public void setRcontecnt(String rcontecnt) {
		this.rcontecnt = rcontecnt;
	}
}
