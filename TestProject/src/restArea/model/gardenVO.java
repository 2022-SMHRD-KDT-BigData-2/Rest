package restArea.model;

// img VO (화원 이미지)
public class gardenVO {
	private String gcnt;
	private String id;
	
	public gardenVO(String gcnt, String id) {
		
		this.gcnt = gcnt;
		this.id = id;
	}
	
	public gardenVO(String id) {
		this.id = id;
	}
	
	public String getGcnt() {
		return gcnt;
	}
	public void setGcnt(String gcnt) {
		this.gcnt = gcnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
 
}