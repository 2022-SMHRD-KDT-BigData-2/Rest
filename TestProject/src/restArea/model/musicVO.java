package restArea.model;

public class musicVO {
	private int music_seq;
	private String mname;
	private String singer;
	private String murl;
	
	public musicVO(int music_seq, String mname, String singer, String murl) {
		super();
		this.music_seq = music_seq;
		this.mname = mname;
		this.singer = singer;
		this.murl = murl;
	}

	public int getMusic_seq() {
		return music_seq;
	}

	public void setMusic_seq(int music_seq) {
		this.music_seq = music_seq;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getMurl() {
		return murl;
	}

	public void setMurl(String murl) {
		this.murl = murl;
	}
}