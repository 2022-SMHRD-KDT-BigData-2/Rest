package restArea.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


// img DAO (화원 이미지)
public class gardenDAO {
   private static SqlSessionFactory sqlSessionFactory;
   
   static {
      try {
         String resource = "restArea/mapper/config.xml"; 
         InputStream inputStream = Resources.getResourceAsStream(resource);
         sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);               
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   
   // -----------------------------------------------------------------------------

public gardenVO garden(String id){
      
      SqlSession session = sqlSessionFactory.openSession();
      
      gardenVO vo = session.selectOne("garden",id);
      
      session.close();
      
   
      return vo;
   }

   
}