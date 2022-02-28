package restArea.model;

// img VO (화원 이미지)
public class gardenVO {
   private int gcnt;

   public gardenVO(int gcnt) {
      this.gcnt = gcnt;   
   }

   public int getGcnt() {
      return gcnt;
   }

   public void setGcnt(int gcnt) {
      this.gcnt = gcnt;
   }
}