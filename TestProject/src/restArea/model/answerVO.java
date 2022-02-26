package restArea.model;

// answer_board VO (±€ ¥‰¿Â)
public class answerVO {
   private int answer_seq;
   private int write_seq;
   private String acontent;
   private String areport;
   private String wreport;
   private String sym;
   public int getAnswer_seq() {
      return answer_seq;
   }
   public void setAnswer_seq(int answer_seq) {
      this.answer_seq = answer_seq;
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
   public String getWreport() {
      return wreport;
   }
   public void setWreport(String wreport) {
      this.wreport = wreport;
   }
   public String getSym() {
      return sym;
   }
   public void setSym(String sym) {
      this.sym = sym;
   }
   public answerVO(int answer_seq, int write_seq, String acontent, String areport, String wreport, String sym) {
      super();
      this.answer_seq = answer_seq;
      this.write_seq = write_seq;
      this.acontent = acontent;
      this.areport = areport;
      this.wreport = wreport;
      this.sym = sym;
   }
   public answerVO(String category, String awrite) {
      // TODO Auto-generated constructor stub
   }
   
}